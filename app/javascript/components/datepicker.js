import { Datepicker as VanillajsDatepicker } from 'vanillajs-datepicker';
import $ from 'jquery';
import Cleave from 'cleave.js';
import { getDateNumberOfYearsAgo } from '../utils';

export class Datepicker {
  constructor(datepicker) {
    const { minDate, maxDate, startView } = datepicker.dataset;
    const datepickerMinDate = minDate ? new Date(minDate) : null;
    const datepickerMaxDate = maxDate ? new Date(maxDate) : null;

    this.datepicker = new VanillajsDatepicker(datepicker, {
      autohide: true,
      format: 'dd/mm/yyyy',
      minDate: datepickerMinDate,
      maxDate: datepickerMaxDate,
      startView: this.getStartViewID(startView),
      prevArrow: '<span class="fas fa-chevron-left" aria-label="Previous"></span>',
      nextArrow: '<span class="fas fa-chevron-right" aria-label="Next"></span>',
      orientation: 'auto bottom',
      weekStart: 1,
    });

    datepicker.addEventListener('changeView', (e) => {
      this.datepicker.element.value = VanillajsDatepicker.formatDate(
        e.detail.viewDate,
        'dd/mm/yyyy'
      );
    });

    datepicker.addEventListener('blur', (e) => {
      const datepickerForm = this.datepicker.element.closest('.js-form');
      const usesClientSideValidations = datepickerForm.dataset.clientSideValidations;

      if (usesClientSideValidations) {
        const currentViewDate = this.datepicker.picker.viewDate;
        if (this.datepicker.active && currentViewDate) {
          this.datepicker.element.classList.remove('is-invalid');
          $(this.datepicker.element).disableClientSideValidations();
        }

        if (this.datepicker.element.value) {
          $(this.datepicker.element).enableClientSideValidations();
        }
      }
    });

    const datepickerMinDateISOString = datepickerMinDate
      ? datepickerMinDate.toISOString().split('T')[0]
      : '';
    const datepickerMaxDateISOString = datepickerMaxDate
      ? datepickerMaxDate.toISOString().split('T')[0]
      : '';
    const cleaveFieldInstance = new Cleave(datepicker, {
      date: true,
      datePattern: ['d', 'm', 'Y'],
      dateMin: datepickerMinDateISOString,
      dateMax: datepickerMaxDateISOString,
    });
  }

  // eslint-disable-next-line class-methods-use-this
  getStartViewID(startView) {
    // 0 - days, 1 - months, 2 - years, 3 - decades
    let startViewID = 2;

    switch (startView) {
      case 'days':
        startViewID = 0;
        break;
      case 'months':
        startViewID = 1;
        break;
      case 'years':
        startViewID = 2;
        break;
      case 'decades':
        startViewID = 3;
        break;
      default:
        startViewID = 2;
    }

    return startViewID;
  }
}
