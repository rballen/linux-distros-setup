Title
================
![logo](http://ombuntu.com/ombuntu-logo.png)

[rballen](http://rballen.github.com)

### header
####sub header
#####h5
######h6 


**bold** or __bold__

*italic* or _italic_

```terminal
function thumbsx480 (){
  filelist=`ls | grep -i '.jpg'`
  mkdir -p thumbs
  for f in $filelist
  do
    convert $f -auto-orient -resize x480 -unsharp 0x.5 ./thumbs/${f%.*}_x480.jpg
  done
}
```

### ordered lists
1. `npm install`
1. `cp config-sample.json config.json`
1. Edit config.json per https://github.com/scottgonzalez/grunt-wordpress#config
1. `grunt deploy`


or

* unordered
* lists