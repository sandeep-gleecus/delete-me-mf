export class ProgressBar {
  constructor(progressBar) {
    this.progressBar = progressBar;
    this.percentageValue = progressBar.dataset.value;
    this.progressBarWrapper = progressBar.closest('.js-progress-bar-wrapper');
    if (this.progressBarWrapper) {
      this.progressBarTooltip = this.progressBarWrapper.querySelector(
        '.js-progress-bar-tooltip'
      );

      if (this.progressBarTooltip) {
        this.adjustTooltipPosition();
        this.adjustTooltipArrowPosition();

        this.setupEventListeners();
      }
    }
  }

  setupEventListeners() {
    window.addEventListener('resize', () => {
      this.adjustTooltipPosition();
      this.adjustTooltipArrowPosition();
    });
  }

  adjustTooltipArrowPosition() {
    const progressBarWidth = parseFloat(this.progressBar.offsetWidth);
    let finalArrowXPosition = progressBarWidth;

    if (this.percentageValue <= 4) {
      finalArrowXPosition += 20;
    }
    if (this.percentageValue >= 96) {
      finalArrowXPosition -= 20;
    }

    this.progressBarTooltip.style.setProperty(
      '--arrow-x-position',
      `${finalArrowXPosition}px`
    );
  }

  adjustTooltipPosition() {
    const progressBarWrapperWidth = parseFloat(this.progressBarWrapper.offsetWidth);
    const tooltipWidth = parseFloat(this.progressBarTooltip.offsetWidth);
    const remainingSpace = progressBarWrapperWidth - tooltipWidth;

    let tooltipXPercentagePosition = 0;
    switch (true) {
      default:
      case this.percentageValue > 0 && this.percentageValue <= 25:
        tooltipXPercentagePosition = 0;
        break;
      case this.percentageValue > 25 && this.percentageValue <= 40:
        tooltipXPercentagePosition = 25;
        break;
      case this.percentageValue > 40 && this.percentageValue <= 50:
        tooltipXPercentagePosition = 40;
        break;
      case this.percentageValue > 50 && this.percentageValue <= 60:
        tooltipXPercentagePosition = 55;
        break;
      case this.percentageValue > 60 && this.percentageValue <= 75:
        tooltipXPercentagePosition = 75;
        break;
      case this.percentageValue > 75 && this.percentageValue <= 100:
        tooltipXPercentagePosition = 100;
        break;
    }

    const finalTooltipXPosition =
      remainingSpace * (tooltipXPercentagePosition / 100);

    this.progressBarTooltip.style.setProperty(
      '--tooltip-x-position',
      `${finalTooltipXPosition}px`
    );
  }
}
