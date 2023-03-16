import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['switch', 'price'];

  static values = {
    monthlyBilling: String,
    yearlyBilling: String,
  };

  showMonthlyPrice(e) {
    this.priceTarget.innerText = e.target.checked
      ? this.yearlyBillingValue
      : this.monthlyBillingValue;
  }
}
