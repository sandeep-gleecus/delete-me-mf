import { format, parseISO } from 'date-fns';
import { createPopper } from '@popperjs/core';

export class Calendar {
  constructor(calendar) {
    this.calendar = calendar;
    this.calendarWrapper = this.calendar.closest('.js-calendar-wrapper');

    const calendarTooltipOptions = {
      placement: 'bottom',
      modifiers: [
        {
          name: 'offset',
          options: {
            offset: [0, 6],
          },
        },
        {
          name: 'preventOverflow',
          options: {
            padding: 20,
          },
        },
      ],
    };

    [...this.calendar.querySelectorAll('.js-calendar-day')].forEach((day) => {
      const tooltipTrigger = day;
      const tooltip = day.querySelector('.js-calendar-tooltip');
      if (tooltip) {
        const popperInstance = createPopper(
          tooltipTrigger,
          tooltip,
          calendarTooltipOptions
        );

        day.addEventListener('click', function () {
          tooltip.setAttribute('data-show', '');

          // We need to tell Popper to update the tooltip position
          // after we show the tooltip, otherwise it will be incorrect
          popperInstance.update();
        });
      }
    });

    document.addEventListener('click', (e) => {
      [...document.querySelectorAll('.js-calendar-tooltip')].forEach((tooltip) => {
        tooltip.removeAttribute('data-show');
      });

      if (
        !e.target.closest('.js-calendar-tooltip') &&
        !e.target.closest('.js-calendar-day')
      ) {
        [...document.querySelectorAll('.js-calendar-tooltip')].forEach((tooltip) => {
          tooltip.removeAttribute('data-show');
        });
      }

      const tooltipTrigger = e.target.closest('.js-calendar-day');
      if (tooltipTrigger) {
        const tooltip = tooltipTrigger.querySelector('.js-calendar-tooltip');
        if (tooltip) {
          const popperInstance = createPopper(
            tooltipTrigger,
            tooltip,
            calendarTooltipOptions
          );

          tooltip.setAttribute('data-show', '');

          // We need to tell Popper to update the tooltip position
          // after we show the tooltip, otherwise it will be incorrect
          popperInstance.update();
        }
      }
    });

    this.calendar.addEventListener('click', (e) => {
      if (e.target.matches('.js-calendar-day, .js-calendar-day *')) {
        const previewType = e.target.closest('.js-calendar-wrapper')
          ? e.target.closest('.js-calendar-wrapper').dataset.previewType
          : 'preview';

        const dayClicked = e.target.closest('.js-calendar-day');
        const dayClickedDateStr = dayClicked.dataset.fullDate;
        const lessons = [...dayClicked.querySelectorAll('.js-class-link')];
        const previewTitle = this.generatePreviewTitle(dayClickedDateStr);
        let previewContent = '';
        if (lessons.length > 0) {
          previewContent = this.generatePreviewContent(lessons);
        }

        if (previewType === 'overlay') {
          // this.calendarWrapper
          //   .querySelector('.js-calendar-overlay')
          //   .classList.add('show');
          // this.calendarWrapper.querySelector(
          //   '.js-calendar-overlay-title'
          // ).innerText = previewTitle;
          // this.calendarWrapper.querySelector(
          //   '.js-calendar-overlay-content'
          // ).innerHTML = previewContent;
        } else {
          document.querySelector('.js-calendar-preview-title').innerText =
            previewTitle;

          document.querySelector('.js-calendar-preview-content').innerHTML =
            previewContent;
        }
      }
    });

    this.setupEventListeners();
  }

  setupEventListeners() {
    if (this.calendarWrapper) {
      const calendarOverlayCloseBtn = this.calendarWrapper.querySelector(
        '.js-calendar-overlay-close-btn'
      );
      calendarOverlayCloseBtn.addEventListener('click', (e) => {
        e.currentTarget.closest('.js-calendar-overlay').classList.remove('show');
      });
    }
  }

  generatePreviewTitle(dateStr) {
    const isToday = false;
    const requestedFormattedDate = format(parseISO(dateStr), 'dd/MM/yyyy');
    return isToday ? `Lessons today` : `Lessons on ${requestedFormattedDate}`;
  }

  generatePreviewContent(lessonsArr) {
    let lessonsHTML =
      lessonsArr.length > 0
        ? ''
        : `<p class="small mb-0">You don't have any lessons on this day. Enjoy your rest.</p>`;

    lessonsArr.forEach((lesson, index) => {
      const {
        lessonImage,
        lessonTitle,
        lessonDescription,
        lessonStartTime,
        lessonCategory,
      } = lesson.dataset;
      const [lessonDate, lessonTime] = lessonStartTime.split(' ');

      lessonsHTML += `
        <article class="col d-flex align-items-center ${
          index > 0 ? 'mt-3 mt-md-4' : ''
        }">
          <img class="avatar me-3" src="${lessonImage}" width="50" height="50">
          <div>
            <div class="d-flex align-items-center flex-wrap">
              <h6 class="small mb-0 me-2">${lessonTitle}</h6>
              <div class="d-flex align-items-center">
                <span class="badge badge-primary badge-sm">${this.getCategoryIcon(
                  lessonCategory,
                  'me-1'
                )}</span>${lessonCategory}</span>
                <div class="x-small text-muted ms-2">${lessonTime}</div>
              </div>
            </div>
            <p class="small text-body mb-0">${lessonDescription}</p>
          </div>
        </article>
      `;
    });
    return lessonsHTML;
  }

  getCategoryIcon(category, additionalClasses) {
    let lessonCategoryIcon = '';
    switch (category) {
      default:
      case 'Mind':
        lessonCategoryIcon = 'brain';
        break;
      case 'Body':
        lessonCategoryIcon = 'heartbeat';
        break;
      case 'Soul':
        lessonCategoryIcon = 'heart';
        break;
    }

    return `<span class="fas fa-${lessonCategoryIcon} ${additionalClasses}">`;
  }
}
