import { Controller } from '@hotwired/stimulus';
import $ from 'jquery';
import Cleave from 'cleave.js';
import { Carousel } from 'bootstrap';
import { getDateNumberOfYearsAgo } from '../utils';

export default class extends Controller {
  static targets = [];

  static values = { step: Number };

  connect() {
    this.carouselEl = this.element.querySelector('.js-onboarding-carousel');
    this.carousel = new Carousel(this.carouselEl, {
      interval: false,
      keyboard: false,
      ride: 'carousel',
      wrap: false,
      touch: false,
    });

    this.initFormattingAndValidation();
    this.setupEventListeners();
  }

  initFormattingAndValidation() {
    setTimeout(() => {
      $(this.element).disableClientSideValidations();
    }, 200);

    setTimeout(() => {
      this.validators = this.element.ClientSideValidations.settings.validators;
    }, 500);
  }

  setupEventListeners() {
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') {
        e.preventDefault();
      }
    });

    [...document.querySelectorAll('.js-onboarding-step-btn')].forEach((stepBtn) => {
      stepBtn.addEventListener('click', (e) => {
        // const thisStep = e.target.closest('.js-onboarding-step');
        const thisStep = this.element.querySelector(
          `.js-onboarding-step[data-step="${e.target.dataset.step}"]`
        );
        const isThisStepComplete = thisStep.classList.contains('step-complete');
        const isThisStepVisible = thisStep.classList.contains('step-visible');
        const isThisStepStarted = thisStep.classList.contains('step-started');

        if (
          (isThisStepComplete && !isThisStepVisible) ||
          (isThisStepStarted && !isThisStepVisible)
        ) {
          const stepToShowId = e.target.dataset.step;
          if (Number(stepToShowId) > this.stepValue) {
            // trigger validation if going to one of the next steps
            if (this.validateCurrentStep()) {
              this.showStep(stepToShowId);
            }
            return true;
          }
          this.showStep(stepToShowId);
        }

        return true;
      });
    });

    [...this.element.querySelectorAll('.form-check-input.needs-validation')].forEach(
      (checkbox) => {
        checkbox.addEventListener('change', (e) => {
          e.target.classList.toggle('is-invalid', !e.target.checked);
        });
      }
    );

    [...this.element.querySelectorAll('.form-control, .form-select')].forEach(
      (input) => {
        input.addEventListener('change', (e) => {
          const thisStep = e.target.closest('.js-onboarding-step');
          if (thisStep.classList.contains('step-complete')) {
            this.validateCurrentStep();
          }
        });
      }
    );

    [
      ...this.element.querySelectorAll('.js-radio-toolbar input[type="radio"]'),
    ].forEach((radio) => {
      radio.addEventListener('change', (e) => {
        e.target.closest('.js-radio-toolbar').classList.remove('is-invalid');
      });
    });
  }

  togglePrevStep() {
    $(this.element).disableClientSideValidations();
    this.showStep(this.stepValue - 1);
  }

  toggleNextStep() {
    $(this.element).disableClientSideValidations();
    this.showStep(this.stepValue + 1);
  }

  prevStep() {
    const prevStep = this.element.querySelector(
      `.js-onboarding-step[data-step="${this.stepValue - 1}"]`
    );
    const prevStepBtn = this.element.querySelector(
      `.js-onboarding-step-btn[data-step="${this.stepValue - 1}"]`
    );
    this.togglePrevStep();
    prevStep.classList.add('step-started');
    prevStepBtn.classList.add('step-started');
  }

  nextStepUsingEnter(e) {
    $(this.element).disableClientSideValidations();
    $(this.element).enableClientSideValidations();
    if (e.keyCode === 13 && $(e.target).isValid(this.validators)) {
      this.nextStep();
    }
  }

  nextStep() {
    const currentStep = this.element.querySelector(
      `.js-onboarding-step[data-step="${this.stepValue}"]`
    );
    const currentStepBtn = this.element.querySelector(
      `.js-onboarding-step-btn[data-step="${this.stepValue}"]`
    );
    const nextStep = this.element.querySelector(
      `.js-onboarding-step[data-step="${this.stepValue + 1}"]`
    );
    const nextStepBtn = this.element.querySelector(
      `.js-onboarding-step-btn[data-step="${this.stepValue + 1}"]`
    );

    if (this.validateCurrentStep()) {
      this.toggleNextStep();
      currentStep.classList.add('step-complete');
      currentStepBtn.classList.add('step-complete');
      nextStep.classList.add('step-started');
      nextStepBtn.classList.add('step-started');
    } else {
      currentStep.classList.remove('step-complete');
      currentStepBtn.classList.remove('step-complete');
    }
  }

  validateCurrentStep() {
    $(this.element).enableClientSideValidations();
    const currentStep = this.element.querySelector(
      `.js-onboarding-step[data-step="${this.stepValue}"]`
    );
    const currentStepBtn = this.element.querySelector(
      `.js-onboarding-step-btn[data-step="${this.stepValue}"]`
    );

    let radioToolbarsValid = true;
    if (currentStep.querySelector('.js-radio-toolbar')) {
      radioToolbarsValid = this.validateRadioToolbars();
    }
    const otherFieldsValid = $(this.element).isValid(this.validators);

    let manuallyValidatedFieldsValid = true;
    $('.js-needs-manual-validation:visible').each((index, field) => {
      const fieldValid = field.value.length !== 0;
      field.classList.toggle('is-invalid', !fieldValid);

      if (!fieldValid) {
        manuallyValidatedFieldsValid = false;
      }
    });

    const isThisStepValid =
      radioToolbarsValid && otherFieldsValid && manuallyValidatedFieldsValid;

    currentStep.classList.toggle('has-error', !isThisStepValid);
    currentStepBtn.classList.toggle('has-error', !isThisStepValid);

    return isThisStepValid;
  }

  validateRadioToolbars() {
    let allToolbarRadiosSelected = true;
    const currentStep = this.element.querySelector(
      `.js-onboarding-step[data-step="${this.stepValue}"]`
    );
    const currentStepRadioToolbars =
      currentStep.querySelectorAll('.js-radio-toolbar');

    [...currentStepRadioToolbars].forEach((radioToolbar) => {
      let isToolbarValid = false;
      const toolbarRadios = radioToolbar.querySelectorAll('input[type="radio"]');
      [...toolbarRadios].forEach((radio) => {
        if (radio.checked) {
          isToolbarValid = true;
        }
      });

      radioToolbar.classList.toggle('is-invalid', !isToolbarValid);
      if (!isToolbarValid) {
        allToolbarRadiosSelected = false;
      }
    });

    return allToolbarRadiosSelected;
  }

  submitForm(e) {
    e.preventDefault();
    let isFormValid = true;

    this.validateCurrentStep();

    const allSteps = this.element.querySelectorAll('.js-onboarding-step');
    const anyStepHasError = [...allSteps].some((step) =>
      step.classList.contains('has-error')
    );

    if (anyStepHasError) {
      isFormValid = false;
    }

    if (isFormValid) {
      const { userEmail } = e.params;
      if (userEmail) {
        window.dataLayer.push({
          event: 'form_submit_enhance',
          enhanced_conversion_data: {
            email: userEmail,
          },
        });
      }

      e.target.closest('form').submit();
    }
  }

  showStep(stepToShowId) {
    [
      ...document.querySelectorAll('.js-onboarding-step, .js-onboarding-step-btn'),
    ].forEach((stepBtn) => {
      stepBtn.classList.remove('step-visible');
      stepBtn.classList.remove('active');
    });

    // show requested step
    const stepToShow = this.element.querySelector(
      `.js-onboarding-step[data-step="${stepToShowId}"]`
    );
    const stepToShowBtn = document.querySelector(
      `.js-onboarding-step-btn[data-step="${stepToShowId}"]`
    );
    this.carousel.to(stepToShowId - 1);
    stepToShow.classList.add('step-visible', 'step-started');
    stepToShowBtn.classList.add('step-visible', 'step-started', 'active');

    this.stepValue = stepToShowId;
  }
}
