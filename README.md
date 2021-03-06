
This is [XRegExp](http://xregexp.com) in a Common JS module. All plugins and unicode packages are included as well. I'm not affiliated with [Steven Levithan](http://stevenlevithan.com), the author of XRegExp.


Deprecated
----------

If you use this module, then great, I hope you enjoy it! I just want to tell you that this project is deprecated. In some months it will be replaced by [XRegExp v2.0](https://github.com/slevithan/XRegExp). I invite you to look at it and start using it already, it's quite stable. I was basically just wrapping XRegExp 1.5.x to publish it on NPM. The author Steven Levithan is going to publish NPM packages from v2.0 onwards. You can [read the related discussion here](https://github.com/slevithan/XRegExp/issues/11).

Be aware that the next release of this module on NPM only accepts `require('xregexp').XRegExp` when including, for CommonJS compliance. Currently you can do both this and the old way of `require('xregexp')`. Please change your code to use the new method.

This is what Steven Levithan says about the [current XRegExp v2.0 beta](https://github.com/slevithan/XRegExp):

> In the meantime, I recommend that any new projects use the latest beta versions of these packages available here on GitHub. All of the latest betas are now solid/stable enough that I strongly recommend them over the last stable versions (XRegExp v1.5.1, etc.). This is especially so because XRegExp v2.0.0 includes significant API changes. All changes are detailed in the [roadmap](https://github.com/slevithan/XRegExp/wiki/Roadmap) and in the extensive inline comments within the source files.

*– Bjarke Walling, March 26, 2012*


Installation
------------

```bash
npm install xregexp
```


Usage example
-------------

For JavaScripters:

```javascript
var XRegExp = require('xregexp').XRegExp;

console.log('Héllö Wôrld'.match(XRegExp('\\p{L}+')));

var date = XRegExp('(?<year>  [0-9]{4})  -?  # year  \n\
                    (?<month> [0-9]{2})  -?  # month \n\
                    (?<day>   [0-9]{2})      # day   ', 'x');
var match = date.exec('2011-06-30');
if (match) {
  console.log(match.day);
}
```

For CoffeeScripters:

```coffeescript
{XRegExp} = require 'xregexp'

console.log 'Héllö Wôrld'.match XRegExp '\\p{L}+'

date = XRegExp '''
  (?<year>  [0-9]{4})  -?  # year
  (?<month> [0-9]{2})  -?  # month
  (?<day>   [0-9]{2})      # day
''', 'x'
match = date.exec '2011-06-30'
console.log match.day if match
```


Changelog
---------

 *  1.5.3: Fixed problems with NPM package.
 *  1.5.2: Updated to support require("xregexp").XRegExp, which is the future method.
 *  1.5.1: Several bugs fixed and updated to use Unicode 6.1 character database (instead of 5.2).


License
-------

This project includes the software packages:

 *  XRegExp 1.5.1
 *  XRegExp Unicode plugin base 0.6
 *  XRegExp Unicode plugin pack: Categories 1.1
 *  XRegExp Unicode plugin pack: Scripts 1.1
 *  XRegExp Unicode plugin pack: Blocks 1.1
 *  XRegExp Match Recursive plugin 0.1.1

The software is released under the MIT license:

    Copyright (c) 2007-2012 Steven Levithan <http://xregexp.com>
    
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to
    deal in the Software without restriction, including without limitation the
    rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
    sell copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
    IN THE SOFTWARE.

