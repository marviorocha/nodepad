import 'bootstrap'
import "../stylesheet/application"
import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "controllers"
Rails.start()
ActiveStorage.start()

