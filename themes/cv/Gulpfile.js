var gulp = require('gulp');
var connect = require('gulp-connect');
var browserify = require('browserify');
var babelify = require('babelify');
var source = require('vinyl-source-stream');
var sass = require('gulp-sass');

var config = {
    bootstrapDir: './bower_components/bootstrap-sass',
    publicDir: './public',
};

gulp.task('css', function() {
    return gulp.src('./css/app.scss')
        .pipe(sass({
            includePaths: [config.bootstrapDir + '/assets/stylesheets',
                './node_modules/breakpoint-sass/stylesheets/breakpoint.scss']
        }))
        .pipe(gulp.dest(config.publicDir + '/css'));
});

gulp.task('fonts', function() {
    return gulp.src(config.bootstrapDir + '/assets/fonts/**/*')
        .pipe(gulp.dest(config.publicDir + '/fonts'));
});

gulp.task('connect', function(){
   connect.server({
       base: 'http://cv.local',
       port: 8889,
       root: './public',
       livereload: true
   });
});

gulp.task('js', function(){
    browserify('./js/main.js')
        .transform(babelify)
        .bundle()
        .pipe(source('all.js'))
        .pipe(gulp.dest('./public/scripts'))
        .pipe(connect.reload());
});

gulp.task('watch', function(){
    gulp.watch('js/**/*.js', ['js']);
    gulp.watch('css/**/*.scss', ['css']);
});

gulp.task('default', ['js', 'css', 'fonts', 'connect', 'watch'], function(){

});