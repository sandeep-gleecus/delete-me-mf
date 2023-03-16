require('cookieconsent');

setTimeout(() => {
  window.cookieconsent.initialise({
    palette: {
      popup: {
        background: '#ef476f',
        text: '#ffffff',
      },
      button: {
        background: '#ffd166',
        text: '#000000',
      },
    },
    theme: 'classic',
    position: 'bottom-left',
    content: {
      href: '/cookies',
    },
  });
}, 1000);
