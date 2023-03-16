import Splide from '@splidejs/splide';

export const workoutsSliderOptions = {
  arrowPath:
    'M28.5424 21.3839L14.5739 36.5669C13.9003 37.2992 12.8081 37.2992 12.1344 36.5669L10.5052 34.7961C9.83271 34.0651 9.83142 32.8803 10.5024 32.1476L21.5726 20.058L10.5024 7.96857C9.83142 7.23584 9.83271 6.05107 10.5052 5.32006L12.1344 3.5492C12.8081 2.81693 13.9003 2.81693 14.5739 3.5492L28.5424 18.7322C29.216 19.4644 29.216 20.6516 28.5424 21.3839Z',
  gap: 30,
  padding: '12rem',
  pagination: false,
  perMove: 1,
  perPage: 8,
  type: 'loop',
  breakpoints: {
    3839: {
      padding: '12rem',
      perPage: 6,
    },
    2559: {
      padding: '10rem',
      perPage: 5,
    },
    1919: {
      gap: 20,
      padding: '9rem',
      perPage: 4,
    },
    1599: {
      gap: 20,
      padding: '9rem',
      perPage: 3,
    },
    1439: {
      gap: 20,
      padding: '9rem',
      perPage: 3,
    },
    1279: {
      gap: 20,
      padding: '3.5rem',
      perPage: 3,
    },
    991: {
      gap: 20,
      padding: '6rem',
      perPage: 2,
    },
    767: {
      gap: 20,
      padding: '8rem',
      perPage: 1,
    },
    575: {
      gap: 20,
      padding: '4rem',
      perPage: 1,
    },
  },
};
