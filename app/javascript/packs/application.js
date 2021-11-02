import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import 'bootstrap'
import "../stylesheet/application"
import "channels"
import "controllers"
Rails.start()
ActiveStorage.start()

