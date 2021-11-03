import Rails from "@rails/ujs"
import 'bootstrap'
import "../stylesheets/style"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "controllers"
Rails.start()
ActiveStorage.start()

