var gulp        = require('gulp');
var browserSync = require('browser-sync');
var sass        = require('gulp-sass');
// var less        = require('gulp-less');
var prefix      = require('gulp-autoprefixer');
var cp          = require('child_process');
var imagemin 　 = require('gulp-imagemin'); 
var pngquant 　 = require('imagemin-pngquant');
var minify      = require('gulp-minify-css');
var concat      = require('gulp-concat');

var messages = {
    jekyllBuild: '<span style="color: grey">Running:</span> $ jekyll build'
};

var jekyll   = process.platform === 'win32' ? 'jekyll.bat' : 'jekyll';


/**
 *建立Jekyll网站
 */
gulp.task('jekyll-build', function (done) {
    browserSync.notify(messages.jekyllBuild);
    return cp.spawn( jekyll , ['build'], {stdio: 'inherit'})
        .on('close', done);
});

/**
 * 重建Jekyll＆ do页面重新加载
 */
gulp.task('jekyll-rebuild', ['jekyll-build'], function () {
    browserSync.reload();
});

/**
 * jquery-weui各个组件压缩为jquery-weui.js
 */
// gulp.task('js',function(cb){
  
//     count = 0;
//     var end = function(){
//         count ++;
//         if(count >= 3) cb();
//     };

//     gulp.src([
//         './src/js/jquery-extend.js',
//         './src/js/template7.js',
//         './src/js/hammer.js',
//         './src/js/modal.js',
//         './src/js/toast.js',
//         './src/js/action.js',
//         './src/js/pull-to-refresh.js',
//         './src/js/infinite.js',
//         './src/js/tab.js',
//         './src/js/search-bar.js',
//         './src/js/device.js',
//         './src/js/picker.js',
//         './src/js/select.js',
//         './src/js/calendar.js',
//         './src/js/datetime-picker.js',
//         './src/js/popup.js',
//         './src/js/notification.js',
//         './src/js/toptip.js',
//         './src/js/slider.js',
//         './src/js/swipeout.js'
//     ])
//     .pipe(concat({path:'jquery-weui.js'}))
//     .pipe(gulp.dest('static/js/'))
//     .on("end", end);
// });


/**
 * 等待jekyll-build，然后启动服务器
 */
gulp.task('browser-sync', ['sass','jekyll-build'], function() {
    browserSync({
        server: {
            baseDir: '_site'
        }
    });
});

/**
 * 报错提示，并且不退出继续执行任务
 */
function handleErro(err){
    console.log(err.toString());
    this.emit('end');
}

/**
 * jquery-weui的less样式
 */
// var path = {
//     less:[
//         '_less/mixin.less',
//         '_less/rem.less',
//         '_less/reset.less',
//         '_less/select.less',
//         '_less/grid.less'
//     ]
// }
// gulp.task('less',function(){
//     return gulp.src('_less/*.less')
//     .pipe(less()).on('error',handleErro)
//     .pipe(prefix(['last 15 versions', '> 1%', 'ie 8', 'ie 7'], { cascade: true }))
//     .pipe(gulp.dest('static/css/weui/'))
//     .pipe(browserSync.reload({stream:true}));
// });

/**
 * Compile files from _scss into both _site/css (for live injecting) and site (for future jekyll builds)
 * 将_scss文件编译为_site / startic /css（用于实时注入）和 site（用于未来的jekyll构建）
 */
gulp.task('sass', function () {
    return gulp.src('_scss/*.scss')
        .pipe(sass({
            includePaths: ['scss'],
            onError: browserSync.notify
         })).on('error',handleErro)
        .pipe(prefix(['last 15 versions', '> 1%', 'ie 8', 'ie 7'], { cascade: true }))
        .pipe(gulp.dest('_site/static/css'))
        .pipe(minify({
            keepBreaks: true,//类型：Boolean 默认：false [是否保留换行]
            compatibility: 'ie7',//保留ie7及以下兼容写法 类型：String 默认：''or'*' [启用兼容模式； 'ie7'：IE7兼容模式，'ie8'：IE8兼容模式，'*'：IE9+兼容模式]
            advanced: false,//类型：Boolean 默认：true [是否开启高级优化（合并选择器等）]
         }))//压缩
        .pipe(gulp.dest('static/css'))
        .pipe(browserSync.reload({stream:true}));
});

/**
 * 压缩图片
 */
gulp.task('imagemin', function(){ 
    return gulp.src('static/images/*.{png,JPG,gif,ico}') 
      .pipe(imagemin({ 
        progressive: true, 
        svgoPlugins: [{removeViewBox: false}],//不要移除svg的viewbox属性
        use: [pngquant()] //使用pngquant深度压缩png图片的imagemin插件
      })) 
      .pipe(gulp.dest('_site/static/images')); 
  });

/**
 * Watch scss files for changes & recompile
 * Watch html/md files, run jekyll & reload BrowserSync
 * 观看scss文件以进行更改并重新编译
 * 观看html / md文件，运行jekyll并重新加载BrowserSync
 */
gulp.task('watch', function(){
    // gulp.watch('src/js/*.js',['js']);
    gulp.watch('_scss/*.scss', ['sass']);
    // gulp.watch('_less/*.less', ['less']);
    gulp.watch(['static/images/*'], ['imagemin']);
    gulp.watch(['*.html', '_layouts/*.html','_includes/*.html','_posts/*'], ['jekyll-rebuild']);
});

/**
 * Default task, running just `gulp` will compile the sass,
 * compile the jekyll site, launch BrowserSync & watch files.
 * 默认任务，只运行`gulp`会编译sass，
 * 编译jekyll站点，启动BrowserSync并观看文件。
 */
gulp.task('default', ['browser-sync', 'watch','imagemin']); 
