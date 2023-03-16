// import { isValid, isExpirationDateValid, isSecurityCodeValid } from 'creditcard.js';
// import Cleave from 'cleave.js';

// export class PaymentForm {
//   constructor(form) {
//     this.form = form;
//     if (form.nodeName !== 'FORM') {
//       this.form = form.querySelector('form');
//     }
//     this.cardNumberField = this.form.querySelector('.js-card-number');
//     this.cardExpMonthField = this.form.querySelector('.js-card-exp-month');
//     this.cardExpYearField = this.form.querySelector('.js-card-exp-year');
//     this.securityCodeField = this.form.querySelector('.js-card-security-code');

//     // init formatting on card number field
//     const cleaveCardNumberField = new Cleave(this.cardNumberField, {
//       creditCard: true,
//     });

//     // init formatting on security code field
//     const cleaveSecurityCodeField = new Cleave(this.securityCodeField, {
//       blocks: [4],
//       numericOnly: true,
//       delimiter: '',
//     });

//     // init event listeners for credit card fields
//     this.cardNumberField.addEventListener('blur', (e) => {
//       this.cardNumber = e.target.value.trim();

//       if (this.cardNumber) {
//         this.validateCardNumber();
//       } else {
//         this.cardNumberField.classList.remove('is-invalid');
//       }
//     });

//     this.cardExpMonthField.addEventListener('blur', (e) => {
//       this.expiryMonth = e.target.value;
//       if (this.expiryMonth && this.expiryYear) {
//         this.validateExpiryMonth();
//       } else {
//         this.cardExpMonthField.classList.remove('is-invalid');
//         this.cardExpYearField.classList.remove('is-invalid');
//       }
//     });

//     this.cardExpYearField.addEventListener('blur', (e) => {
//       this.expiryYear = e.target.value;
//       if (this.expiryMonth && this.expiryYear) {
//         this.validateExpiryYear();
//       } else {
//         this.cardExpMonthField.classList.remove('is-invalid');
//         this.cardExpYearField.classList.remove('is-invalid');
//       }
//     });

//     this.securityCodeField.addEventListener('blur', (e) => {
//       this.securityCode = e.target.value;

//       if (this.securityCode) {
//         this.validateSecurityCode();
//       } else {
//         this.securityCodeField.classList.remove('is-invalid');
//       }
//     });

//     this.form.addEventListener(
//       'submit',
//       (event) => {
//         let formValid = true;

//         if (
//           !this.validateCardNumber() ||
//           !this.validateExpiryMonth() ||
//           !this.validateExpiryYear() ||
//           !this.validateSecurityCode()
//         ) {
//           formValid = false;
//         }

//         const sectionsToValidate = document.querySelectorAll('.js-needs-validation');
//         [...sectionsToValidate].forEach((section) => {
//           const fieldsToValidate = section.querySelectorAll(
//             '.form-control, .form-select'
//           );
//           [...fieldsToValidate].forEach((field) => {
//             if (!field.checkValidity()) {
//               formValid = false;
//             }
//           });
//           section.classList.add('was-validated');
//         });

//         if (!formValid) {
//           event.preventDefault();
//           event.stopPropagation();
//         }
//       },
//       false
//     );
//   }

//   validateCardNumber() {
//     const valid = this.cardNumber && this.isCardNumberValid();

//     this.cardNumberField.classList.toggle('is-invalid', !valid);
//     const errorText =
//       this.cardNumberField.parentElement.querySelector('.invalid-feedback');
//     errorText.innerText = 'Card number is invalid';

//     return valid;
//   }

//   validateExpiryMonth() {
//     const valid =
//       this.expiryMonth &&
//       this.expiryYear &&
//       isExpirationDateValid(this.expiryMonth, this.expiryYear);

//     this.cardExpMonthField.classList.toggle(
//       'is-invalid',
//       !isExpirationDateValid(this.expiryMonth, this.expiryYear)
//     );
//     this.cardExpYearField.classList.toggle(
//       'is-invalid',
//       !isExpirationDateValid(this.expiryMonth, this.expiryYear)
//     );
//     const errorText =
//       this.cardExpMonthField.parentElement.querySelector('.invalid-feedback');
//     if (this.expiryMonth && this.expiryYear) {
//       errorText.innerText = 'Expiry date is the past';
//     } else {
//       errorText.innerText = 'Expiry date is invalid';
//     }

//     return valid;
//   }

//   validateExpiryYear() {
//     const valid =
//       this.expiryMonth &&
//       this.expiryYear &&
//       isExpirationDateValid(this.expiryMonth, this.expiryYear);

//     this.cardExpMonthField.classList.toggle(
//       'is-invalid',
//       !isExpirationDateValid(this.expiryMonth, this.expiryYear)
//     );
//     this.cardExpYearField.classList.toggle(
//       'is-invalid',
//       !isExpirationDateValid(this.expiryMonth, this.expiryYear)
//     );

//     const errorText =
//       this.cardExpYearField.parentElement.querySelector('.invalid-feedback');
//     if (this.expiryMonth && this.expiryYear) {
//       errorText.innerText = 'Expiry date is the past';
//     } else {
//       errorText.innerText = 'Expiry date is invalid';
//     }

//     return valid;
//   }

//   validateSecurityCode() {
//     const valid =
//       this.securityCode && isSecurityCodeValid(this.cardNumber, this.securityCode);

//     this.securityCodeField.classList.toggle(
//       'is-invalid',
//       !isSecurityCodeValid(this.cardNumber, this.securityCode)
//     );

//     const errorText =
//       this.securityCodeField.parentElement.querySelector('.invalid-feedback');
//     errorText.innerText = 'Security code is invalid';

//     return valid;
//   }

//   isCardNumberValid() {
//     return isValid(this.cardNumber);
//   }
// }
