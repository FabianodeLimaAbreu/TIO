function filterBy(a, b, c){
    var d = a.filter(function(d) {
        return -1 !== d[b].indexOf(c);
    });
    return d;
}

String.prototype.initialCaps = function() {
    return this.replace(/[^|\.|\!|\?/]+/g, function(c, a, d) {
        return 0 > d.charAt(a - 1).search(/[^\s-]/) ? c.charAt(0).toUpperCase() + c.substr(1).toLowerCase() : " " + c.charAt(1).toUpperCase() + c.substr(2).toLowerCase();
    });
};

Array.prototype.unique = function() {
    var c, a, d;
    a = [];
    for ( c = this.length; c--; )
        d = this[c], -1 === $.inArray(d, a) && a.unshift(d);
    return a;
};

Array.prototype.remove=function(v){
    this.splice(this.indexOf(v), 1);
    return this;
};

jQuery.fn.labelOver = function(c) {
    return this.find("label.pre").each(function() {
        var a, d;
        d = $(this);
        d.attr("for") && ( a = d.next(), d.hide = function() {
            d.css({
                textIndent : -1E4
            });
        }, d.show = function() {
            "" === a.val() && d.css({
                textIndent : 0
            });
        }, a.focus(d.hide), a.blur(d.show), d.addClass(c).click(function() {
            a.focus();
        }), "" !== a.val() && d.hide());
    });
};

function isCnpj(c) {
    c = onlyNumbers(c);
    var a = c.substr(0, 12), d = c.substr(12, 2), e = 0;
    for ( c = 0; 12 > c; c++)
        e += a.charAt(11 - c) * (2 + c % 8);
    if (0 == e)
        return !1;
    e = 11 - e % 11;
    9 < e && ( e = 0);
    if (d.charAt(0) != e)
        return !1;
    e *= 2;
    for ( c = 0; 12 > c; c++)
        e += a.charAt(11 - c) * (2 + (c + 1) % 8);
    e = 11 - e % 11;
    9 < e && ( e = 0);
    return d.charAt(1) != e ? !1 : !0
}

function isEmail(c) {
    return /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(c) ? !0 : !1
}

function isNumber(c) {
    return ("[object Number]" === Object.prototype.toString.call(c) || "[object String]" === Object.prototype.toString.call(c)) && !isNaN(parseFloat(c)) && isFinite(c.toString().replace(/^-/, ""))
}

function onlyNumbers(c) {
    return c.replace(/[^\d]/g, "")
}

String.prototype.removeAccents = function() {
    b = this.split("");
    for (var c = [], a = b.length, d = 0; d < a; d++)
        -1 != "\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00d2\u00d3\u00d4\u00d5\u00d5\u00d6\u00d8\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u00c8\u00c9\u00ca\u00cb\u00e8\u00e9\u00ea\u00eb\u00f0\u00c7\u00e7\u00d0\u00cc\u00cd\u00ce\u00cf\u00ec\u00ed\u00ee\u00ef\u00d9\u00da\u00db\u00dc\u00f9\u00fa\u00fb\u00fc\u00d1\u00f1\u0160\u0161\u0178\u00ff\u00fd\u017d\u017e".indexOf(b[d]) ? c[d] = "AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz".substr("\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00d2\u00d3\u00d4\u00d5\u00d5\u00d6\u00d8\u00f2\u00f3\u00f4\u00f5\u00f6\u00f8\u00c8\u00c9\u00ca\u00cb\u00e8\u00e9\u00ea\u00eb\u00f0\u00c7\u00e7\u00d0\u00cc\u00cd\u00ce\u00cf\u00ec\u00ed\u00ee\u00ef\u00d9\u00da\u00db\u00dc\u00f9\u00fa\u00fb\u00fc\u00d1\u00f1\u0160\u0161\u0178\u00ff\u00fd\u017d\u017e".indexOf(b[d]), 1) : c[d] = b[d];
    return c.join("")
};