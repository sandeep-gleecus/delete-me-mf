// Entry point for the build script in your package.json
import Rails from '@rails/ujs';

// import Trix editor and Action Text
//import 'trix';
//import '@rails/actiontext';
import './actiontext'
// eslint-disable-next-line import/no-unresolved
import '@client-side-validations/client-side-validations/src';
// eslint-disable-next-line import/no-unresolved
import '@client-side-validations/simple-form/src/index.bootstrap4';

// import Bootstrap framework and respective component initializers
import './bootstrap-framework';

// import Stimulus controllers
import './controllers';

// import FontAwesome
import '@fortawesome/fontawesome-free/js/all';

// import components
import './components';

Rails.start();
