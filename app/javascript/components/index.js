import autosize from 'autosize';
import Splide from '@splidejs/splide';
import { Form } from './form';
import { Datepicker } from './datepicker';
import { Calendar } from './calendar';
import { AvatarUpload } from './avatar-upload';
import { ProgressBar } from './progress-bar';
import { Countdown } from './countdown';
import { workoutsSliderOptions } from './splide';
import { CancelationForm } from './cancelation-form';
// import { PaymentForm } from './payment-form';
// import './cookie-consent';

document.addEventListener('DOMContentLoaded', () => {
  if (document.querySelector('.js-workouts-slider')) {
    const workoutsSlider = new Splide(
      '.js-workouts-slider',
      workoutsSliderOptions
    ).mount();
  }

  // initialize forms
  const forms = document.querySelectorAll('.js-form');
  const formsList = [...forms].map((form) => new Form(form));

  // initialize forms
  // const paymentFormEl = document.querySelector('.js-payment-form');
  // if (paymentFormEl) {
  //   const paymentForm = new PaymentForm(paymentFormEl);
  // }

  // initialize automatic resizing of textareas
  autosize(document.querySelectorAll('textarea'));

  // initialize datepickers
  const datepickers = document.querySelectorAll('.js-datepicker');
  const datepickersList = [...datepickers].map(
    (datepicker) => new Datepicker(datepicker)
  );

  // initialize calendars
  const calendars = document.querySelectorAll('.js-calendar');
  const calendarsList = [...calendars].map((calendar) => new Calendar(calendar));

  // initialize avatar uploads
  const avatarUploadWrappers = document.querySelectorAll('.js-avatar-upload');
  if (avatarUploadWrappers.length) {
    [...avatarUploadWrappers].map(
      (avatarUploadWrapper) => new AvatarUpload(avatarUploadWrapper)
    );
  }

  // initialize progress bars
  const progressBars = document.querySelectorAll('.js-progress-bar');
  const progressBarsList = [...progressBars].map(
    (progressBar) => new ProgressBar(progressBar)
  );

  // initialize countdowns
  const countdowns = document.querySelectorAll('.js-countdown');
  const countdownsList = [...countdowns].map(
    (countdown) => new Countdown(countdown)
  );

  // initialize cancelation form
  const cancelationFormEl = document.querySelector('.js-cancelation-form');
  const cancelationForm = new CancelationForm(cancelationFormEl);
});
