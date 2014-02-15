# file-url for Sass

A [Sass](https://github.com/nex3/sass) plugin which generate url with cache busting.
Something like:
```
url(path/to/file?cacheBusting)
```

### Usage

#### Command line
```shell
sass -r ./relative/path/to/file-url.rb src.sass dist.css
```

#### or Gruntfile
```javascript
module.exports = function (grunt) {
    grunt.initConfig({
        ...
        sass : {
            dist : {
                options : {
                    require : [ './relative/path/to/file-url.rb' ]
                }
                ...
            }
        }
    });
    ...
}
```

#### in *.sass
Use it like this (pay attention at the path)
```sass
body
    background: file-url('path/related/to/master/sass/file')
```
which outputs
```css
body {
    background: url('path/related/to/master/sass/file?1390980540');
}
```
