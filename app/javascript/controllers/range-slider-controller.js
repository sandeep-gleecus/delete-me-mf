import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['slider', 'tooltip', 'classesNumber', 'classesWord'];

  static values = {
    min: Number,
    max: Number,
    initial: Number,
    current: Number,
    currentPercentageValue: Number,
  };

  connect() {
    this.sliderTarget.min = this.minValue;
    this.sliderTarget.max = this.maxValue;
    this.sliderTarget.value = this.initialValue;

    const initialPercentageValue =
      (100 * (this.initialValue - this.minValue)) / (this.maxValue - this.minValue);
    this.updateSliderUI(initialPercentageValue);

    // this.sliderTarget.addEventListener('mousedown', () => this.showTooltip());
    // this.sliderTarget.addEventListener('mouseup', () => this.hideTooltip());
  }

  updateSliderProgress(e) {
    this.currentValue = parseInt(this.sliderTarget.value, 10);
    this.currentPercentageValue = this.calculateCurrentPercentageProgress();
    this.updateSliderUI();
  }

  calculateCurrentPercentageProgress() {
    return (
      (100 * (this.currentValue - this.minValue)) / (this.maxValue - this.minValue)
    );
  }

  updateSliderUI(overridePercentage) {
    this.sliderTarget.style.setProperty(
      '--slider-progress',
      overridePercentage
        ? `${overridePercentage}%`
        : `${this.currentPercentageValue}%`
    );

    this.tooltipTarget.style.setProperty(
      '--slider-progress',
      overridePercentage
        ? `${overridePercentage}%`
        : `${this.currentPercentageValue}%`
    );

    const currentNumberOfClasses = this.currentValue
      ? this.currentValue
      : this.initialValue;
    this.classesNumberTarget.innerText = currentNumberOfClasses;
    this.classesWordTarget.innerText =
      currentNumberOfClasses > 1 ? 'classes' : 'class';
  }

  hideTooltip() {
    this.tooltipTarget.classList.add('range-slider-tooltip-hidden');
  }

  // showTooltip() {
  //   this.tooltipTarget.classList.remove('range-slider-tooltip-hidden');
  // }
}
