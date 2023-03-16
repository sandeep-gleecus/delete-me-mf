import { formatDuration, intervalToDuration, isPast, parseJSON } from 'date-fns';
import Util from '../Util';

export class Countdown {
  constructor(countdown) {
    this.countdown = countdown;
    this.countdownEndDate = new Date(Date.parse(countdown.dataset.countdownEndDate));

    if (!isPast(this.countdownEndDate)) {
      this.timeLeft = this.calculateTimeLeft();
      this.updateCountdown();

      this.countdownInterval = setInterval(() => {
        this.timeLeft = this.calculateTimeLeft();

        const { days, hours, minutes, seconds } = this.timeLeft;
        if (days === 0 && hours === 0 && minutes === 0 && seconds === 0) {
          clearInterval(this.countdownInterval);
        }

        this.updateCountdown();
      }, 1000);
    }
  }

  calculateTimeLeft() {
    const currentDate = new Date();

    return intervalToDuration({
      start: currentDate,
      end: this.countdownEndDate,
    });
  }

  updateCountdown() {
    const { days, hours, minutes, seconds } = this.timeLeft;
    /* prettier-ignore */
    this.countdown.innerText = `${Util.padDigit(days)}:${Util.padDigit(hours)}:${Util.padDigit(minutes)}:${Util.padDigit(seconds)}`;
    this.countdown.setAttribute(
      'aria-label',
      `Next live starts in ${formatDuration(this.timeLeft)}`
    );
  }
}
