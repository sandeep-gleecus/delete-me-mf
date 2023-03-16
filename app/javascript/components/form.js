import Cleave from 'cleave.js';
import $ from 'jquery';

export class Form {
  constructor(form) {
    this.form = form;
    if (form.nodeName !== 'FORM') {
      this.form = form.querySelector('form');
    }

    this.initFormattingAndValidation();

    [...this.form.querySelectorAll('.js-radio-toolbar input[type="radio"]')].forEach(
      (radio) => {
        radio.addEventListener('change', (e) => {
          e.target.closest('.js-radio-toolbar').classList.remove('is-invalid');
        });
      }
    );
  }

  initFormattingAndValidation() {
    if (this.form.classList.contains('needs-validation')) {
      this.enableBootstrapValidation();
    }

    if (this.form.dataset.clientSideValidations) {
      this.useClientSideValidations();
    }

    const dateField = this.form.querySelector('.js-date-field');
    if (dateField) {
      const cleaveDateField = new Cleave(dateField, {
        date: true,
        datePattern: ['d', 'm', 'Y'],
      });
    }

    const timeField = this.form.querySelector('.js-time-field');
    if (timeField) {
      const cleaveTimeField = new Cleave(timeField, {
        time: true,
        timePattern: ['h', 'm'],
      });
    }
  }

  enableBootstrapValidation() {
    this.form.addEventListener(
      'submit',
      (event) => {
        if (!event.target.checkValidity()) {
          event.preventDefault();
          event.stopPropagation();
        }

        event.target.classList.add('was-validated');
      },
      false
    );
  }

  useClientSideValidations() {
    setTimeout(() => {
      this.validators = this.form.ClientSideValidations.settings.validators;
      $(this.form).disableClientSideValidations();
      this.form.querySelector('.form-control, .form-select').focus();
    }, 500);

    this.form.addEventListener('submit', (e) => {
      $(this.form).enableClientSideValidations();

      let radioToolbarsValid = true;
      if (this.form.querySelector('.js-radio-toolbar')) {
        radioToolbarsValid = this.validateRadioToolbars();
      }

      if (!$(this.form).isValid(this.validators) || !radioToolbarsValid) {
        e.preventDefault();
        setTimeout(() => {
          this.form.querySelector('[type="submit"]').disabled = false;
        }, 50);
      }
    });
  }

  validateRadioToolbars() {
    let allToolbarRadiosSelected = true;
    const toolbars = this.form.querySelectorAll('.js-radio-toolbar');

    [...toolbars].forEach((radioToolbar) => {
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
}
