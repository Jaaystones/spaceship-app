const gulp = require('gulp');
const bower = require('gulp-bower');
const uglifycss = require('gulp-uglifycss');
const concat = require('gulp-concat');

// Task to install Bower dependencies
gulp.task('bower', function() {
  return bower();
});

// Task to minify CSS files
gulp.task('minify-css', function() {
  return gulp.src(['path/to/your/css/files/*.css'])
    .pipe(uglifycss())
    .pipe(concat('styles.min.css'))
    .pipe(gulp.dest('path/to/your/destination/folder'));
});

// Task to install jQuery DateTimePicker
gulp.task('install-datetimepicker', function() {
  // Run npm install for the DateTimePicker plugin
  const { exec } = require('child_process');
  exec('npm install jquery-datetimepicker', (err, stdout, stderr) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log(stdout);
  });
});

// Default task: install Bower dependencies, minify CSS, and install DateTimePicker
gulp.task('default', gulp.series('bower', 'minify-css', 'install-datetimepicker'));
