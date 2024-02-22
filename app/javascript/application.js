// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
// import "controllers"

// Import Bootstrap JavaScript components
import "bootstrap-sprockets";
import "bootstrap";

// Import Font Awesome icons
import "font-awesome";

// Import jQuery and its plugins
import "jquery";
import "jquery-ujs";
import "jquery.datetimepicker";
import "bindWithDelay"; // Assuming this is a jQuery plugin

// Import Trix and ActionText for rich text editing
import "trix";
import "@rails/actiontext";

// Optionally, you can import other dependencies or custom JavaScript files here

// If you need to use legacy JavaScript files that are still in the asset pipeline,
// you can require them here using the old asset pipeline syntax.
// Example: //= require_tree .

// Note: Make sure to remove/comment out any duplicate or conflicting imports.
