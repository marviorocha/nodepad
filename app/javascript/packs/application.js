import Rails from '@rails/ujs'
import 'bootstrap'
import "@fortawesome/fontawesome-free/js/all";
import '../stylesheets/style'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
import 'controllers'
Rails.start()
ActiveStorage.start()

