#!/bin/sh
rm -f index.js
for jsfile in src/xregexp.js src/xregexp-*.js
do
	echo '' >> index.js
	echo "/***** $jsfile *****/" >> index.js
	echo '' >> index.js
	cat $jsfile >> index.js
done
echo '' >> index.js
echo '/***** Export as Common JS module *****/' >> index.js
echo '' >> index.js
echo '
if (typeof module === "object" && module.exports) {
	XRegExp.XRegExp = XRegExp; // to support the new way
	module.exports = XRegExp;
} else if (typeof exports !== "undefined") {
	exports.XRegExp = XRegExp;
}
' >> index.js
