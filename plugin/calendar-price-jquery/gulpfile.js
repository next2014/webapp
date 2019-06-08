const gulp = require('gulp')
var browserSync = require('browser-sync')
const cssBase64 = require('gulp-css-base64')
const uglify = require('gulp-uglify')
const stylus = require('gulp-stylus')
const rename = require('gulp-rename')
const header = require('gulp-header')
const config = require('./package.json')

// 
gulp.task('browser-sync', ['stylus','uglify'], function() {
  browserSync({
      server: {
          baseDir: 'demo'
      }
  });
});

// uglify
gulp.task('uglify', function () {
  return gulp.src('./src/js/calendar-price-jquery.js')
    .pipe(rename('calendar-price-jquery.min.js'))
    .pipe(uglify())
    .pipe(header('/*! <%= name %> v<%= version %> | (c) <%= author %> | <%= homepage %> */', config))
    .pipe(gulp.dest('./dist/js'))
})

// stylus
gulp.task('stylus', function () {
  return gulp.src('./src/stylus/calendar-price-jquery.styl')
    .pipe(cssBase64())
    .pipe(stylus({
      compress: true
    }))
    .pipe(rename('calendar-price-jquery.min.css'))
    .pipe(header('/*! <%= name %> v<%= version %> | (c) <%= author %> | <%= homepage %> */', config))
    .pipe(gulp.dest('./dist/css'))
})

gulp.task('watch', function () {
  gulp.watch('./src/js/*.js', ['uglify'])
  gulp.watch('./src/stylus/*.styl', ['stylus'])
  gulp.watch('./demo/*.html', ['browser-sync']);
})

// gulp.task('build', ['uglify', 'stylus'])
// gulp.task('dev', ['uglify', 'stylus', 'watch'])
gulp.task('default', ['browser-sync', 'watch']); 