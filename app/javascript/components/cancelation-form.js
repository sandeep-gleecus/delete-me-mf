import { Carousel } from 'bootstrap';

export class CancelationForm {
  constructor(form) {
    this.form = form;
    this.carouselEl = this.form.querySelector('.js-cancelation-carousel');
    this.carousel = new Carousel(this.carouselEl, {
      interval: false,
    });

    this.setupEventListeners();
  }

  setupEventListeners() {
    this.carouselEl.addEventListener('slide.bs.carousel', (e) => {
      if (!this.validateCurrentStep()) {
        e.preventDefault();
      }
    });

    const radioToolbarsInputs = document.querySelectorAll(
      '.js-radio-toolbar input[type=radio]'
    );
    [...radioToolbarsInputs].forEach((radioToolbarInput) => {
      radioToolbarInput.addEventListener('change', (e) => {
        if (e.currentTarget.checked) {
          e.currentTarget
            .closest('.js-radio-toolbar')
            .classList.remove('is-invalid');
        }
      });
    });
  }

  validateCurrentStep() {
    let isValid = false;
    // 24-Jan-2023  changes i.e.
    // Removed checking validation for 'reason' for cancellation and making 'detail' textarea text as required
    /*const currentStepWrapper = this.form.querySelector('.carousel-item.active');
    const radioToolbar = currentStepWrapper.querySelector('.js-radio-toolbar');
    if (radioToolbar) {
      isValid = this.validateRadioToolbar(radioToolbar);
    }*/
    isValid = this.validateCancellationDetail()
    return isValid;
  }

  // On cancellation 'detail' field is required and  min & max length is 5-1000 - removing 'reason' radio as mandatory ans
  // making detail field is mandatory
  // 24-Jan-2023
  validateCancellationDetail(){
    let isValid = false;
    let cancellationDetailEle =  document.getElementById('user_cancellations_attributes_0_detail')
    if(cancellationDetailEle && cancellationDetailEle.value.length >= 20 && cancellationDetailEle.value.length <= 500){
      isValid = true
    } else {
      let invalidDetailsEle = document.getElementById('cancellation-details-invalid')
      cancellationDetailEle.classList.toggle('is-invalid');
      invalidDetailsEle.style.display = "block";
    }
    return isValid
  }

  // TODO:: not required now as 'reason' is removing and making 'detail' as mandatory  // 24-Jan-2023
  validateRadioToolbar(toolbar) {
    let isValid = false;
    const toolbarRadios = toolbar.querySelectorAll('input[type=radio]');
    [...toolbarRadios].forEach((radio) => {
      if (radio.checked) {
        isValid = true;
      }
    });

    toolbar.classList.toggle('is-invalid', !isValid);

    return isValid;
  }
}
