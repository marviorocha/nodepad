import Rails from '@rails/ujs'
import 'bootstrap'
import "@fortawesome/fontawesome-free/js/all";
import '../stylesheets/style'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
import 'controllers'


// ./packs/application.js
import { Application } from 'stimulus'
import { definitionsFromContext } from 'stimulus/webpack-helpers'
const application = Application.start()
const context = require.context('../controllers', true, /\.js$/)
application.load(definitionsFromContext(context))
import Flatpickr from 'stimulus-flatpickr'
require("flatpickr/dist/flatpickr.css")

application.register('flatpickr', Flatpickr)



Rails.start()
ActiveStorage.start()


import "controllers"
