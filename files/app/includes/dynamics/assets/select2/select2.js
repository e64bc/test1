/*
 Copyright 2012 Igor Vaynberg

 Version: 3.3.2 Timestamp: Mon Mar 25 12:14:18 PDT 2013

 This software is licensed under the Apache License, Version 2.0 (the "Apache License") or the GNU
 General Public License version 2 (the "GPL License"). You may choose either license to govern your
 use of this software only upon the condition that you accept all of the terms of either the Apache
 License or the GPL License.

 You may obtain a copy of the Apache License and the GPL License at:

 http://www.apache.org/licenses/LICENSE-2.0
 http://www.gnu.org/licenses/gpl-2.0.html

 Unless required by applicable law or agreed to in writing, software distributed under the Apache License
 or the GPL Licesnse is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 either express or implied. See the Apache License and the GPL License for the specific language governing
 permissions and limitations under the Apache License and the GPL License.
 */
(function (a) {
    a.fn.each2 === void 0 && a.fn.extend({each2: function (b) {
        for (var c = a([0]), d = -1, e = this.length; e > ++d && (c.context = c[0] = this[d]) && b.call(c[0], d, c) !== !1;);
        return this
    }})
})(jQuery), function (a, b) {
    "use strict";
    function k(a, b) {
        for (var c = 0, d = b.length; d > c; c += 1)if (l(a, b[c]))return c;
        return-1
    }

    function l(a, c) {
        return a === c ? !0 : a === b || c === b ? !1 : null === a || null === c ? !1 : a.constructor === String ? a + "" == c + "" : c.constructor === String ? c + "" == a + "" : !1
    }

    function m(b, c) {
        var d, e, f;
        if (null === b || 1 > b.length)return[];
        for (d = b.split(c), e = 0, f = d.length; f > e; e += 1)d[e] = a.trim(d[e]);
        return d
    }

    function n(a) {
        return a.outerWidth(!1) - a.width()
    }

    function o(c) {
        var d = "keyup-change-value";
        c.bind("keydown", function () {
            a.data(c, d) === b && a.data(c, d, c.val())
        }), c.bind("keyup", function () {
            var e = a.data(c, d);
            e !== b && c.val() !== e && (a.removeData(c, d), c.trigger("keyup-change"))
        })
    }

    function p(c) {
        c.bind("mousemove", function (c) {
            var d = i;
            (d === b || d.x !== c.pageX || d.y !== c.pageY) && a(c.target).trigger("mousemove-filtered", c)
        })
    }

    function q(a, c, d) {
        d = d || b;
        var e;
        return function () {
            var b = arguments;
            window.clearTimeout(e), e = window.setTimeout(function () {
                c.apply(d, b)
            }, a)
        }
    }

    function r(a) {
        var c, b = !1;
        return function () {
            return b === !1 && (c = a(), b = !0), c
        }
    }

    function s(a, b) {
        var c = q(a, function (a) {
            b.trigger("scroll-debounced", a)
        });
        b.bind("scroll", function (a) {
            k(a.target, b.get()) >= 0 && c(a)
        })
    }

    function t(a) {
        a[0] !== document.activeElement && window.setTimeout(function () {
            var d, b = a[0], c = a.val().length;
            a.focus(), a.is(":visible") && b === document.activeElement && (b.setSelectionRange ? b.setSelectionRange(c, c) : b.createTextRange && (d = b.createTextRange(), d.collapse(!1), d.select()))
        }, 0)
    }

    function u(a) {
        a.preventDefault(), a.stopPropagation()
    }

    function v(a) {
        a.preventDefault(), a.stopImmediatePropagation()
    }

    function w(b) {
        if (!h) {
            var c = b[0].currentStyle || window.getComputedStyle(b[0], null);
            h = a(document.createElement("div")).css({position: "absolute", left: "-10000px", top: "-10000px", display: "none", fontSize: c.fontSize, fontFamily: c.fontFamily, fontStyle: c.fontStyle, fontWeight: c.fontWeight, letterSpacing: c.letterSpacing, textTransform: c.textTransform, whiteSpace: "nowrap"}), h.attr("class", "select2-sizer"), a("body").append(h)
        }
        return h.text(b.val()), h.width()
    }

    function x(b, c, d) {
        var e, g, f = [];
        e = b.attr("class"), e && (e = "" + e, a(e.split(" ")).each2(function () {
            0 === this.indexOf("select2-") && f.push(this)
        })), e = c.attr("class"), e && (e = "" + e, a(e.split(" ")).each2(function () {
            0 !== this.indexOf("select2-") && (g = d(this), g && f.push(this))
        })), b.attr("class", f.join(" "))
    }

    function y(a, c, d, e) {
        var f = a.toUpperCase().indexOf(c.toUpperCase()), g = c.length;
        return 0 > f ? (d.push(e(a)), b) : (d.push(e(a.substring(0, f))), d.push("<span class='select2-match'>"), d.push(e(a.substring(f, f + g))), d.push("</span>"), d.push(e(a.substring(f + g, a.length))), b)
    }

    function z(b) {
        var c, d = 0, e = null, f = b.quietMillis || 100, g = b.url, h = this;
        return function (i) {
            window.clearTimeout(c), c = window.setTimeout(function () {
                d += 1;
                var c = d, f = b.data, j = g, k = b.transport || a.ajax, l = b.type || "GET", m = {};
                f = f ? f.call(h, i.term, i.page, i.context) : null, j = "function" == typeof j ? j.call(h, i.term, i.page, i.context) : j, null !== e && e.abort(), b.params && (a.isFunction(b.params) ? a.extend(m, b.params.call(h)) : a.extend(m, b.params)), a.extend(m, {url: j, dataType: b.dataType, data: f, type: l, cache: !1, success: function (a) {
                    if (!(d > c)) {
                        var e = b.results(a, i.page);
                        i.callback(e)
                    }
                }}), e = k.call(h, m)
            }, f)
        }
    }

    function A(c) {
        var e, f, d = c, g = function (a) {
            return"" + a.text
        };
        a.isArray(d) && (f = d, d = {results: f}), a.isFunction(d) === !1 && (f = d, d = function () {
            return f
        });
        var h = d();
        return h.text && (g = h.text, a.isFunction(g) || (e = d.text, g = function (a) {
            return a[e]
        })), function (c) {
            var h, e = c.term, f = {results: []};
            return"" === e ? (c.callback(d()), b) : (h = function (b, d) {
                var f, i;
                if (b = b[0], b.children) {
                    f = {};
                    for (i in b)b.hasOwnProperty(i) && (f[i] = b[i]);
                    f.children = [], a(b.children).each2(function (a, b) {
                        h(b, f.children)
                    }), (f.children.length || c.matcher(e, g(f), b)) && d.push(f)
                } else c.matcher(e, g(b), b) && d.push(b)
            }, a(d().results).each2(function (a, b) {
                h(b, f.results)
            }), c.callback(f), b)
        }
    }

    function B(c) {
        var d = a.isFunction(c);
        return function (e) {
            var f = e.term, g = {results: []};
            a(d ? c() : c).each(function () {
                var a = this.text !== b, c = a ? this.text : this;
                ("" === f || e.matcher(f, c)) && g.results.push(a ? this : {id: this, text: this})
            }), e.callback(g)
        }
    }

    function C(b) {
        if (a.isFunction(b))return!0;
        if (!b)return!1;
        throw Error("formatterName must be a function or a falsy value")
    }

    function D(b) {
        return a.isFunction(b) ? b() : b
    }

    function E(b) {
        var c = 0;
        return a.each(b, function (a, b) {
            b.children ? c += E(b.children) : c++
        }), c
    }

    function F(a, c, d, e) {
        var h, i, j, k, m, f = a, g = !1;
        if (!e.createSearchChoice || !e.tokenSeparators || 1 > e.tokenSeparators.length)return b;
        for (; ;) {
            for (i = -1, j = 0, k = e.tokenSeparators.length; k > j && (m = e.tokenSeparators[j], i = a.indexOf(m), !(i >= 0)); j++);
            if (0 > i)break;
            if (h = a.substring(0, i), a = a.substring(i + m.length), h.length > 0 && (h = e.createSearchChoice(h, c), h !== b && null !== h && e.id(h) !== b && null !== e.id(h))) {
                for (g = !1, j = 0, k = c.length; k > j; j++)if (l(e.id(h), e.id(c[j]))) {
                    g = !0;
                    break
                }
                g || d(h)
            }
        }
        return f !== a ? a : b
    }

    function G(b, c) {
        var d = function () {
        };
        return d.prototype = new b, d.prototype.constructor = d, d.prototype.parent = b.prototype, d.prototype = a.extend(d.prototype, c), d
    }

    if (window.Select2 === b) {
        var c, d, e, f, g, h, i, j;
        c = {TAB: 9, ENTER: 13, ESC: 27, SPACE: 32, LEFT: 37, UP: 38, RIGHT: 39, DOWN: 40, SHIFT: 16, CTRL: 17, ALT: 18, PAGE_UP: 33, PAGE_DOWN: 34, HOME: 36, END: 35, BACKSPACE: 8, DELETE: 46, isArrow: function (a) {
            switch (a = a.which ? a.which : a) {
                case c.LEFT:
                case c.RIGHT:
                case c.UP:
                case c.DOWN:
                    return!0
            }
            return!1
        }, isControl: function (a) {
            var b = a.which;
            switch (b) {
                case c.SHIFT:
                case c.CTRL:
                case c.ALT:
                    return!0
            }
            return a.metaKey ? !0 : !1
        }, isFunctionKey: function (a) {
            return a = a.which ? a.which : a, a >= 112 && 123 >= a
        }}, j = a(document), g = function () {
            var a = 1;
            return function () {
                return a++
            }
        }(), j.bind("mousemove", function (a) {
            i = {x: a.pageX, y: a.pageY}
        }), d = G(Object, {bind: function (a) {
            var b = this;
            return function () {
                a.apply(b, arguments)
            }
        }, init: function (c) {
            var d, e, f = ".select2-results";
            this.opts = c = this.prepareOpts(c), this.id = c.id, c.element.data("select2") !== b && null !== c.element.data("select2") && this.destroy(), this.enabled = !0, this.container = this.createContainer(), this.containerId = "s2id_" + (c.element.attr("id") || "autogen" + g()), this.containerSelector = "#" + this.containerId.replace(/([;&,\.\+\*\~':"\!\^#$%@\[\]\(\)=>\|])/g, "\\$1"), this.container.attr("id", this.containerId), this.body = r(function () {
                return c.element.closest("body")
            }), x(this.container, this.opts.element, this.opts.adaptContainerCssClass), this.container.css(D(c.containerCss)), this.container.addClass(D(c.containerCssClass)), this.elementTabIndex = this.opts.element.attr("tabIndex"), this.opts.element.data("select2", this).addClass("select2-offscreen").bind("focus.select2",function () {
                a(this).select2("focus")
            }).attr("tabIndex", "-1").before(this.container), this.container.data("select2", this), this.dropdown = this.container.find(".select2-drop"), this.dropdown.addClass(D(c.dropdownCssClass)), this.dropdown.data("select2", this), this.results = d = this.container.find(f), this.search = e = this.container.find("input.select2-input"), e.attr("tabIndex", this.elementTabIndex), this.resultsPage = 0, this.context = null, this.initContainer(), p(this.results), this.dropdown.delegate(f, "mousemove-filtered touchstart touchmove touchend", this.bind(this.highlightUnderEvent)), s(80, this.results), this.dropdown.delegate(f, "scroll-debounced", this.bind(this.loadMoreIfNeeded)), a.fn.mousewheel && d.mousewheel(function (a, b, c, e) {
                var f = d.scrollTop();
                e > 0 && 0 >= f - e ? (d.scrollTop(0), u(a)) : 0 > e && d.get(0).scrollHeight - d.scrollTop() + e <= d.height() && (d.scrollTop(d.get(0).scrollHeight - d.height()), u(a))
            }), o(e), e.bind("keyup-change input paste", this.bind(this.updateResults)), e.bind("focus", function () {
                e.addClass("select2-focused")
            }), e.bind("blur", function () {
                e.removeClass("select2-focused")
            }), this.dropdown.delegate(f, "mouseup", this.bind(function (b) {
                a(b.target).closest(".select2-result-selectable").length > 0 && (this.highlightUnderEvent(b), this.selectHighlighted(b))
            })), this.dropdown.bind("click mouseup mousedown", function (a) {
                a.stopPropagation()
            }), a.isFunction(this.opts.initSelection) && (this.initSelection(), this.monitorSource()), (c.element.is(":disabled") || c.element.is("[readonly='readonly']")) && this.disable()
        }, destroy: function () {
            var a = this.opts.element.data("select2");
            this.propertyObserver && (delete this.propertyObserver, this.propertyObserver = null), a !== b && (a.container.remove(), a.dropdown.remove(), a.opts.element.removeClass("select2-offscreen").removeData("select2").unbind(".select2").attr({tabIndex: this.elementTabIndex}).show())
        }, prepareOpts: function (c) {
            var d, e, f, g;
            if (d = c.element, "select" === d.get(0).tagName.toLowerCase() && (this.select = e = c.element), e && a.each(["id", "multiple", "ajax", "query", "createSearchChoice", "initSelection", "data", "tags"], function () {
                if (this in c)throw Error("Option '" + this + "' is not allowed for Select2 when attached to a <select> element.")
            }), c = a.extend({}, {populateResults: function (d, e, f) {
                var g, k = this.opts.id, l = this;
                g = function (d, e, h) {
                    var i, j, m, n, o, p, q, r, s, t;
                    for (d = c.sortResults(d, e, f), i = 0, j = d.length; j > i; i += 1)m = d[i], o = m.disabled === !0, n = !o && k(m) !== b, p = m.children && m.children.length > 0, q = a("<li></li>"), q.addClass("select2-results-dept-" + h), q.addClass("select2-result"), q.addClass(n ? "select2-result-selectable" : "select2-result-unselectable"), o && q.addClass("select2-disabled"), p && q.addClass("select2-result-with-children"), q.addClass(l.opts.formatResultCssClass(m)), r = a(document.createElement("div")), r.addClass("select2-result-label"), t = c.formatResult(m, r, f, l.opts.escapeMarkup), t !== b && r.html(t), q.append(r), p && (s = a("<ul></ul>"), s.addClass("select2-result-sub"), g(m.children, s, h + 1), q.append(s)), q.data("select2-data", m), e.append(q)
                }, g(e, d, 0)
            }}, a.fn.select2.defaults, c), "function" != typeof c.id && (f = c.id, c.id = function (a) {
                return a[f]
            }), a.isArray(c.element.data("select2Tags"))) {
                if ("tags"in c)throw"tags specified as both an attribute 'data-select2-tags' and in options of Select2 " + c.element.attr("id");
                c.tags = c.element.data("select2Tags")
            }
            if (e ? (c.query = this.bind(function (c) {
                var g, h, i, e = {results: [], more: !1}, f = c.term;
                i = function (a, b) {
                    var d;
                    a.is("option") ? c.matcher(f, a.text(), a) && b.push({id: a.attr("value"), text: a.text(), element: a.get(), css: a.attr("class"), disabled: l(a.attr("disabled"), "disabled")}) : a.is("optgroup") && (d = {text: a.attr("label"), children: [], element: a.get(), css: a.attr("class")}, a.children().each2(function (a, b) {
                        i(b, d.children)
                    }), d.children.length > 0 && b.push(d))
                }, g = d.children(), this.getPlaceholder() !== b && g.length > 0 && (h = g[0], "" === a(h).text() && (g = g.not(h))), g.each2(function (a, b) {
                    i(b, e.results)
                }), c.callback(e)
            }), c.id = function (a) {
                return a.id
            }, c.formatResultCssClass = function (a) {
                return a.css
            }) : "query"in c || ("ajax"in c ? (g = c.element.data("ajax-url"), g && g.length > 0 && (c.ajax.url = g), c.query = z.call(c.element, c.ajax)) : "data"in c ? c.query = A(c.data) : "tags"in c && (c.query = B(c.tags), c.createSearchChoice === b && (c.createSearchChoice = function (a) {
                return{id: a, text: a}
            }), c.initSelection === b && (c.initSelection = function (d, e) {
                var f = [];
                a(m(d.val(), c.separator)).each(function () {
                    var d = this, e = this, g = c.tags;
                    a.isFunction(g) && (g = g()), a(g).each(function () {
                        return l(this.id, d) ? (e = this.text, !1) : b
                    }), f.push({id: d, text: e})
                }), e(f)
            }))), "function" != typeof c.query)throw"query function not defined for Select2 " + c.element.attr("id");
            return c
        }, monitorSource: function () {
            var b, a = this.opts.element;
            a.bind("change.select2", this.bind(function () {
                this.opts.element.data("select2-change-triggered") !== !0 && this.initSelection()
            })), b = this.bind(function () {
                var a, b;
                a = "disabled" !== this.opts.element.attr("disabled"), b = "readonly" === this.opts.element.attr("readonly"), a = a && !b, this.enabled !== a && (a ? this.enable() : this.disable()), x(this.container, this.opts.element, this.opts.adaptContainerCssClass), this.container.addClass(D(this.opts.containerCssClass)), x(this.dropdown, this.opts.element, this.opts.adaptDropdownCssClass), this.dropdown.addClass(D(this.opts.dropdownCssClass))
            }), a.bind("propertychange.select2 DOMAttrModified.select2", b), "undefined" != typeof WebKitMutationObserver && (this.propertyObserver && (delete this.propertyObserver, this.propertyObserver = null), this.propertyObserver = new WebKitMutationObserver(function (a) {
                a.forEach(b)
            }), this.propertyObserver.observe(a.get(0), {attributes: !0, subtree: !1}))
        }, triggerChange: function (b) {
            b = b || {}, b = a.extend({}, b, {type: "change", val: this.val()}), this.opts.element.data("select2-change-triggered", !0), this.opts.element.trigger(b), this.opts.element.data("select2-change-triggered", !1), this.opts.element.click(), this.opts.blurOnChange && this.opts.element.blur()
        }, enable: function () {
            this.enabled || (this.enabled = !0, this.container.removeClass("select2-container-disabled"), this.opts.element.removeAttr("disabled"))
        }, disable: function () {
            this.enabled && (this.close(), this.enabled = !1, this.container.addClass("select2-container-disabled"), this.opts.element.attr("disabled", "disabled"))
        }, opened: function () {
            return this.container.hasClass("select2-dropdown-open")
        }, positionDropdown: function () {
            var o, p, q, b = this.container.offset(), c = this.container.outerHeight(!1), d = this.container.outerWidth(!1), e = this.dropdown.outerHeight(!1), f = a(window).scrollLeft() + a(window).width(), g = a(window).scrollTop() + a(window).height(), h = b.top + c, i = b.left, j = g >= h + e, k = b.top - e >= this.body().scrollTop(), l = this.dropdown.outerWidth(!1), m = f >= i + l, n = this.dropdown.hasClass("select2-drop-above");
            "static" !== this.body().css("position") && (o = this.body().offset(), h -= o.top, i -= o.left), n ? (p = !0, !k && j && (p = !1)) : (p = !1, !j && k && (p = !0)), m || (i = b.left + d - l), p ? (h = b.top - e, this.container.addClass("select2-drop-above"), this.dropdown.addClass("select2-drop-above")) : (this.container.removeClass("select2-drop-above"), this.dropdown.removeClass("select2-drop-above")), q = a.extend({top: h, left: i, width: d}, D(this.opts.dropdownCss)), this.dropdown.css(q)
        }, shouldOpen: function () {
            var b;
            return this.opened() ? !1 : (b = a.Event("opening"), this.opts.element.trigger(b), !b.isDefaultPrevented())
        }, clearDropdownAlignmentPreference: function () {
            this.container.removeClass("select2-drop-above"), this.dropdown.removeClass("select2-drop-above")
        }, open: function () {
            return this.shouldOpen() ? (window.setTimeout(this.bind(this.opening), 1), !0) : !1
        }, opening: function () {
            function h() {
                return{width: Math.max(document.documentElement.scrollWidth, a(window).width()), height: Math.max(document.documentElement.scrollHeight, a(window).height())}
            }

            var f, b = this.containerId, c = "scroll." + b, d = "resize." + b, e = "orientationchange." + b;
            this.clearDropdownAlignmentPreference(), this.container.addClass("select2-dropdown-open").addClass("select2-container-active"), this.dropdown[0] !== this.body().children().last()[0] && this.dropdown.detach().appendTo(this.body()), this.updateResults(!0), f = a("#select2-drop-mask"), 0 == f.length && (f = a(document.createElement("div")), f.attr("id", "select2-drop-mask").attr("class", "select2-drop-mask"), f.hide(), f.appendTo(this.body()), f.bind("mousedown touchstart", function () {
                var d, c = a("#select2-drop");
                c.length > 0 && (d = c.data("select2"), d.opts.selectOnBlur && d.selectHighlighted({noFocus: !0}), d.close())
            })), this.dropdown.prev()[0] !== f[0] && this.dropdown.before(f), a("#select2-drop").removeAttr("id"), this.dropdown.attr("id", "select2-drop"), f.css(h()), f.show(), this.dropdown.show(), this.positionDropdown(), this.dropdown.addClass("select2-drop-active"), this.ensureHighlightVisible();
            var g = this;
            this.container.parents().add(window).each(function () {
                a(this).bind(d + " " + c + " " + e, function () {
                    a("#select2-drop-mask").css(h()), g.positionDropdown()
                })
            }), this.focusSearch()
        }, close: function () {
            if (this.opened()) {
                var b = this.containerId, c = "scroll." + b, d = "resize." + b, e = "orientationchange." + b;
                this.container.parents().add(window).each(function () {
                    a(this).unbind(c).unbind(d).unbind(e)
                }), this.clearDropdownAlignmentPreference(), a("#select2-drop-mask").hide(), this.dropdown.removeAttr("id"), this.dropdown.hide(), this.container.removeClass("select2-dropdown-open"), this.results.empty(), this.clearSearch(), this.search.removeClass("select2-active"), this.opts.element.trigger(a.Event("close"))
            }
        }, clearSearch: function () {
        }, getMaximumSelectionSize: function () {
            return D(this.opts.maximumSelectionSize)
        }, ensureHighlightVisible: function () {
            var d, e, f, g, h, i, j, c = this.results;
            if (e = this.highlight(), !(0 > e)) {
                if (0 == e)return c.scrollTop(0), b;
                d = this.findHighlightableChoices(), f = a(d[e]), g = f.offset().top + f.outerHeight(!0), e === d.length - 1 && (j = c.find("li.select2-more-results"), j.length > 0 && (g = j.offset().top + j.outerHeight(!0))), h = c.offset().top + c.outerHeight(!0), g > h && c.scrollTop(c.scrollTop() + (g - h)), i = f.offset().top - c.offset().top, 0 > i && "none" != f.css("display") && c.scrollTop(c.scrollTop() + i)
            }
        }, findHighlightableChoices: function () {
            return this.results.find(".select2-result-selectable:not(.select2-selected):not(.select2-disabled)"), this.results.find(".select2-result-selectable:not(.select2-selected):not(.select2-disabled)")
        }, moveHighlight: function (b) {
            for (var c = this.findHighlightableChoices(), d = this.highlight(); d > -1 && c.length > d;) {
                d += b;
                var e = a(c[d]);
                if (e.hasClass("select2-result-selectable") && !e.hasClass("select2-disabled") && !e.hasClass("select2-selected")) {
                    this.highlight(d);
                    break
                }
            }
        }, highlight: function (c) {
            var e, f, d = this.findHighlightableChoices();
            return 0 === arguments.length ? k(d.filter(".select2-highlighted")[0], d.get()) : (c >= d.length && (c = d.length - 1), 0 > c && (c = 0), this.results.find(".select2-highlighted").removeClass("select2-highlighted"), e = a(d[c]), e.addClass("select2-highlighted"), this.ensureHighlightVisible(), f = e.data("select2-data"), f && this.opts.element.trigger({type: "highlight", val: this.id(f), choice: f}), b)
        }, countSelectableResults: function () {
            return this.findHighlightableChoices().length
        }, highlightUnderEvent: function (b) {
            var c = a(b.target).closest(".select2-result-selectable");
            if (c.length > 0 && !c.is(".select2-highlighted")) {
                var d = this.findHighlightableChoices();
                this.highlight(d.index(c))
            } else 0 == c.length && this.results.find(".select2-highlighted").removeClass("select2-highlighted")
        }, loadMoreIfNeeded: function () {
            var c, a = this.results, b = a.find("li.select2-more-results"), e = this.resultsPage + 1, f = this, g = this.search.val(), h = this.context;
            0 !== b.length && (c = b.offset().top - a.offset().top - a.height(), this.opts.loadMorePadding >= c && (b.addClass("select2-active"), this.opts.query({element: this.opts.element, term: g, page: e, context: h, matcher: this.opts.matcher, callback: this.bind(function (c) {
                f.opened() && (f.opts.populateResults.call(this, a, c.results, {term: g, page: e, context: h}), f.postprocessResults(c, !1, !1), c.more === !0 ? (b.detach().appendTo(a).text(f.opts.formatLoadMore(e + 1)), window.setTimeout(function () {
                    f.loadMoreIfNeeded()
                }, 10)) : b.remove(), f.positionDropdown(), f.resultsPage = e, f.context = c.context)
            })})))
        }, tokenize: function () {
        }, updateResults: function (c) {
            function m() {
                e.scrollTop(0), d.removeClass("select2-active"), h.positionDropdown()
            }

            function n(a) {
                e.html(a), m()
            }

            var g, i, d = this.search, e = this.results, f = this.opts, h = this, j = d.val(), k = a.data(this.container, "select2-last-term");
            if ((c === !0 || !k || !l(j, k)) && (a.data(this.container, "select2-last-term", j), c === !0 || this.showSearchInput !== !1 && this.opened())) {
                var o = this.getMaximumSelectionSize();
                if (o >= 1 && (g = this.data(), a.isArray(g) && g.length >= o && C(f.formatSelectionTooBig, "formatSelectionTooBig")))return n("<li class='select2-selection-limit'>" + f.formatSelectionTooBig(o) + "</li>"), b;
                if (d.val().length < f.minimumInputLength)return C(f.formatInputTooShort, "formatInputTooShort") ? n("<li class='select2-no-results'>" + f.formatInputTooShort(d.val(), f.minimumInputLength) + "</li>") : n(""), b;
                if (f.maximumInputLength && d.val().length > f.maximumInputLength)return C(f.formatInputTooLong, "formatInputTooLong") ? n("<li class='select2-no-results'>" + f.formatInputTooLong(d.val(), f.maximumInputLength) + "</li>") : n(""), b;
                f.formatSearching && 0 === this.findHighlightableChoices().length && n("<li class='select2-searching'>" + f.formatSearching() + "</li>"), d.addClass("select2-active"), i = this.tokenize(), i != b && null != i && d.val(i), this.resultsPage = 1, f.query({element: f.element, term: d.val(), page: this.resultsPage, context: null, matcher: f.matcher, callback: this.bind(function (g) {
                    var i;
                    return this.opened() ? (this.context = g.context === b ? null : g.context, this.opts.createSearchChoice && "" !== d.val() && (i = this.opts.createSearchChoice.call(null, d.val(), g.results), i !== b && null !== i && h.id(i) !== b && null !== h.id(i) && 0 === a(g.results).filter(function () {
                        return l(h.id(this), h.id(i))
                    }).length && g.results.unshift(i)), 0 === g.results.length && C(f.formatNoMatches, "formatNoMatches") ? (n("<li class='select2-no-results'>" + f.formatNoMatches(d.val()) + "</li>"), b) : (e.empty(), h.opts.populateResults.call(this, e, g.results, {term: d.val(), page: this.resultsPage, context: null}), g.more === !0 && C(f.formatLoadMore, "formatLoadMore") && (e.append("<li class='select2-more-results'>" + h.opts.escapeMarkup(f.formatLoadMore(this.resultsPage)) + "</li>"), window.setTimeout(function () {
                        h.loadMoreIfNeeded()
                    }, 10)), this.postprocessResults(g, c), m(), this.opts.element.trigger({type: "loaded", data: g}), b)) : (this.search.removeClass("select2-active"), b)
                })})
            }
        }, cancel: function () {
            this.close()
        }, blur: function () {
            this.opts.selectOnBlur && this.selectHighlighted({noFocus: !0}), this.close(), this.container.removeClass("select2-container-active"), this.search[0] === document.activeElement && this.search.blur(), this.clearSearch(), this.selection.find(".select2-search-choice-focus").removeClass("select2-search-choice-focus")
        }, focusSearch: function () {
            t(this.search)
        }, selectHighlighted: function (a) {
            var b = this.highlight(), c = this.results.find(".select2-highlighted"), d = c.closest(".select2-result").data("select2-data");
            d && (this.highlight(b), this.onSelect(d, a))
        }, getPlaceholder: function () {
            return this.opts.element.attr("placeholder") || this.opts.element.attr("data-placeholder") || this.opts.element.data("placeholder") || this.opts.placeholder
        }, initContainerWidth: function () {
            function c() {
                var c, d, e, f, g;
                if ("off" === this.opts.width)return null;
                if ("element" === this.opts.width)return 0 === this.opts.element.outerWidth(!1) ? "auto" : this.opts.element.outerWidth(!1) + "px";
                if ("copy" === this.opts.width || "resolve" === this.opts.width) {
                    if (c = this.opts.element.attr("style"), c !== b)for (d = c.split(";"), f = 0, g = d.length; g > f; f += 1)if (e = d[f].replace(/\s/g, "").match(/width:(([-+]?([0-9]*\.)?[0-9]+)(px|em|ex|%|in|cm|mm|pt|pc))/), null !== e && e.length >= 1)return e[1];
                    return"resolve" === this.opts.width ? (c = this.opts.element.css("width"), c.indexOf("%") > 0 ? c : 0 === this.opts.element.outerWidth(!1) ? "auto" : this.opts.element.outerWidth(!1) + "px") : null
                }
                return a.isFunction(this.opts.width) ? this.opts.width() : this.opts.width
            }

            var d = c.call(this);
            null !== d && this.container.css("width", d)
        }}), e = G(d, {createContainer: function () {
            var b = a(document.createElement("div")).attr({"class": "select2-container"}).html(["<a href='javascript:void(0)' onclick='return false;' class='select2-choice' tabindex='-1'>", "   <span></span><abbr class='select2-search-choice-close' style='display:none;'></abbr>", "   <div><b></b></div>", "</a>", "<input class='select2-focusser select2-offscreen' type='text'/>", "<div class='select2-drop' style='display:none'>", "   <div class='select2-search'>", "       <input type='text' autocomplete='off' class='select2-input'/>", "   </div>", "   <ul class='select2-results'>", "   </ul>", "</div>"].join(""));
            return b
        }, disable: function () {
            this.enabled && (this.parent.disable.apply(this, arguments), this.focusser.attr("disabled", "disabled"))
        }, enable: function () {
            this.enabled || (this.parent.enable.apply(this, arguments), this.focusser.removeAttr("disabled"))
        }, opening: function () {
            this.parent.opening.apply(this, arguments), this.focusser.attr("disabled", "disabled"), this.opts.element.trigger(a.Event("open"))
        }, close: function () {
            this.opened() && (this.parent.close.apply(this, arguments), this.focusser.removeAttr("disabled"), t(this.focusser))
        }, focus: function () {
            this.opened() ? this.close() : (this.focusser.removeAttr("disabled"), this.focusser.focus())
        }, isFocused: function () {
            return this.container.hasClass("select2-container-active")
        }, cancel: function () {
            this.parent.cancel.apply(this, arguments), this.focusser.removeAttr("disabled"), this.focusser.focus()
        }, initContainer: function () {
            var d, e = this.container, f = this.dropdown, h = !1;
            this.showSearch(this.opts.minimumResultsForSearch >= 0), this.selection = d = e.find(".select2-choice"), this.focusser = e.find(".select2-focusser"), this.focusser.attr("id", "s2id_autogen" + g()), a("label[for='" + this.opts.element.attr("id") + "']").attr("for", this.focusser.attr("id")), this.search.bind("keydown", this.bind(function (a) {
                if (this.enabled) {
                    if (a.which === c.PAGE_UP || a.which === c.PAGE_DOWN)return u(a), b;
                    switch (a.which) {
                        case c.UP:
                        case c.DOWN:
                            return this.moveHighlight(a.which === c.UP ? -1 : 1), u(a), b;
                        case c.TAB:
                        case c.ENTER:
                            return this.selectHighlighted(), u(a), b;
                        case c.ESC:
                            return this.cancel(a), u(a), b
                    }
                }
            })), this.search.bind("blur", this.bind(function () {
                document.activeElement === this.body().get(0) && window.setTimeout(this.bind(function () {
                    this.search.focus()
                }), 0)
            })), this.focusser.bind("keydown", this.bind(function (a) {
                return!this.enabled || a.which === c.TAB || c.isControl(a) || c.isFunctionKey(a) || a.which === c.ESC ? b : this.opts.openOnEnter === !1 && a.which === c.ENTER ? (u(a), b) : a.which == c.DOWN || a.which == c.UP || a.which == c.ENTER && this.opts.openOnEnter ? (this.open(), u(a), b) : a.which == c.DELETE || a.which == c.BACKSPACE ? (this.opts.allowClear && this.clear(), u(a), b) : b
            })), o(this.focusser), this.focusser.bind("keyup-change input", this.bind(function (a) {
                this.opened() || (this.open(), this.showSearchInput !== !1 && this.search.val(this.focusser.val()), this.focusser.val(""), u(a))
            })), d.delegate("abbr", "mousedown", this.bind(function (a) {
                this.enabled && (this.clear(), v(a), this.close(), this.selection.focus())
            })), d.bind("mousedown", this.bind(function (a) {
                h = !0, this.opened() ? this.close() : this.enabled && this.open(), u(a), h = !1
            })), f.bind("mousedown", this.bind(function () {
                this.search.focus()
            })), d.bind("focus", this.bind(function (a) {
                u(a)
            })), this.focusser.bind("focus", this.bind(function () {
                    this.container.addClass("select2-container-active")
                })).bind("blur", this.bind(function () {
                    this.opened() || this.container.removeClass("select2-container-active")
                })), this.search.bind("focus", this.bind(function () {
                this.container.addClass("select2-container-active")
            })), this.initContainerWidth(), this.setPlaceholder()
        }, clear: function (a) {
            var b = this.selection.data("select2-data");
            b && (this.opts.element.val(""), this.selection.find("span").empty(), this.selection.removeData("select2-data"), this.setPlaceholder(), a !== !1 && (this.opts.element.trigger({type: "removed", val: this.id(b), choice: b}), this.triggerChange({removed: b})))
        }, initSelection: function () {
            if ("" === this.opts.element.val() && "" === this.opts.element.text())this.close(), this.setPlaceholder(); else {
                var c = this;
                this.opts.initSelection.call(null, this.opts.element, function (a) {
                    a !== b && null !== a && (c.updateSelection(a), c.close(), c.setPlaceholder())
                })
            }
        }, prepareOpts: function () {
            var b = this.parent.prepareOpts.apply(this, arguments);
            return"select" === b.element.get(0).tagName.toLowerCase() ? b.initSelection = function (b, c) {
                var d = b.find(":selected");
                a.isFunction(c) && c({id: d.attr("value"), text: d.text(), element: d})
            } : "data"in b && (b.initSelection = b.initSelection || function (c, d) {
                var e = c.val(), f = null;
                b.query({matcher: function (a, c, d) {
                    var g = l(e, b.id(d));
                    return g && (f = d), g
                }, callback: a.isFunction(d) ? function () {
                    d(f)
                } : a.noop})
            }), b
        }, getPlaceholder: function () {
            return this.select && "" !== this.select.find("option").first().text() ? b : this.parent.getPlaceholder.apply(this, arguments)
        }, setPlaceholder: function () {
            var a = this.getPlaceholder();
            if ("" === this.opts.element.val() && a !== b) {
                if (this.select && "" !== this.select.find("option:first").text())return;
                this.selection.find("span").html(this.opts.escapeMarkup(a)), this.selection.addClass("select2-default"), this.selection.find("abbr").hide()
            }
        }, postprocessResults: function (a, c, d) {
            var e = 0, f = this, g = !0;
            if (this.findHighlightableChoices().each2(function (a, c) {
                return l(f.id(c.data("select2-data")), f.opts.element.val()) ? (e = a, !1) : b
            }), d !== !1 && this.highlight(e), c === !0) {
                var h = this.opts.minimumResultsForSearch;
                g = 0 > h ? !1 : E(a.results) >= h, this.showSearch(g)
            }
        }, showSearch: function (b) {
            this.showSearchInput = b, this.dropdown.find(".select2-search")[b ? "removeClass" : "addClass"]("select2-search-hidden"), a(this.dropdown, this.container)[b ? "addClass" : "removeClass"]("select2-with-searchbox")
        }, onSelect: function (a, b) {
            var c = this.opts.element.val();
            this.opts.element.val(this.id(a)), this.updateSelection(a), this.opts.element.trigger({type: "selected", val: this.id(a), choice: a}), this.close(), b && b.noFocus || this.selection.focus(), l(c, this.id(a)) || this.triggerChange()
        }, updateSelection: function (a) {
            var d, c = this.selection.find("span");
            this.selection.data("select2-data", a), c.empty(), d = this.opts.formatSelection(a, c), d !== b && c.append(this.opts.escapeMarkup(d)), this.selection.removeClass("select2-default"), this.opts.allowClear && this.getPlaceholder() !== b && this.selection.find("abbr").show()
        }, val: function () {
            var a, c = !1, d = null, e = this;
            if (0 === arguments.length)return this.opts.element.val();
            if (a = arguments[0], arguments.length > 1 && (c = arguments[1]), this.select)this.select.val(a).find(":selected").each2(function (a, b) {
                return d = {id: b.attr("value"), text: b.text(), element: b.get(0)}, !1
            }), this.updateSelection(d), this.setPlaceholder(), c && this.triggerChange(); else {
                if (this.opts.initSelection === b)throw Error("cannot call val() if initSelection() is not defined");
                if (!a && 0 !== a)return this.clear(c), c && this.triggerChange(), b;
                this.opts.element.val(a), this.opts.initSelection(this.opts.element, function (a) {
                    e.opts.element.val(a ? e.id(a) : ""), e.updateSelection(a), e.setPlaceholder(), c && e.triggerChange()
                })
            }
        }, clearSearch: function () {
            this.search.val(""), this.focusser.val("")
        }, data: function (a) {
            var c;
            return 0 === arguments.length ? (c = this.selection.data("select2-data"), c == b && (c = null), c) : (a && "" !== a ? (this.opts.element.val(a ? this.id(a) : ""), this.updateSelection(a)) : this.clear(), b)
        }}), f = G(d, {createContainer: function () {
            var b = a(document.createElement("div")).attr({"class": "select2-container select2-container-multi"}).html(["    <ul class='select2-choices'>", "  <li class='select2-search-field'>", "    <input type='text' autocomplete='off' class='select2-input'>", "  </li>", "</ul>", "<div class='select2-drop select2-drop-multi' style='display:none;'>", "   <ul class='select2-results'>", "   </ul>", "</div>"].join(""));
            return b
        }, prepareOpts: function () {
            var b = this.parent.prepareOpts.apply(this, arguments);
            return"select" === b.element.get(0).tagName.toLowerCase() ? b.initSelection = function (a, b) {
                var c = [];
                a.find(":selected").each2(function (a, b) {
                    c.push({id: b.attr("value"), text: b.text(), element: b[0]})
                }), b(c)
            } : "data"in b && (b.initSelection = b.initSelection || function (c, d) {
                var e = m(c.val(), b.separator), f = [];
                b.query({matcher: function (c, d, g) {
                    var h = a.grep(e,function (a) {
                        return l(a, b.id(g))
                    }).length;
                    return h && f.push(g), h
                }, callback: a.isFunction(d) ? function () {
                    d(f)
                } : a.noop})
            }), b
        }, initContainer: function () {
            var e, d = ".select2-choices";
            this.searchContainer = this.container.find(".select2-search-field"), this.selection = e = this.container.find(d), this.search.attr("id", "s2id_autogen" + g()), a("label[for='" + this.opts.element.attr("id") + "']").attr("for", this.search.attr("id")), this.search.bind("input paste", this.bind(function () {
                this.enabled && (this.opened() || this.open())
            })), this.search.bind("keydown", this.bind(function (a) {
                if (this.enabled) {
                    if (a.which === c.BACKSPACE && "" === this.search.val()) {
                        this.close();
                        var d, f = e.find(".select2-search-choice-focus");
                        if (f.length > 0)return this.unselect(f.first()), this.search.width(10), u(a), b;
                        d = e.find(".select2-search-choice:not(.select2-locked)"), d.length > 0 && d.last().addClass("select2-search-choice-focus")
                    } else e.find(".select2-search-choice-focus").removeClass("select2-search-choice-focus");
                    if (this.opened())switch (a.which) {
                        case c.UP:
                        case c.DOWN:
                            return this.moveHighlight(a.which === c.UP ? -1 : 1), u(a), b;
                        case c.ENTER:
                        case c.TAB:
                            return this.selectHighlighted(), u(a), b;
                        case c.ESC:
                            return this.cancel(a), u(a), b
                    }
                    if (a.which !== c.TAB && !c.isControl(a) && !c.isFunctionKey(a) && a.which !== c.BACKSPACE && a.which !== c.ESC) {
                        if (a.which === c.ENTER) {
                            if (this.opts.openOnEnter === !1)return;
                            if (a.altKey || a.ctrlKey || a.shiftKey || a.metaKey)return
                        }
                        this.open(), (a.which === c.PAGE_UP || a.which === c.PAGE_DOWN) && u(a), a.which === c.ENTER && u(a)
                    }
                }
            })), this.search.bind("keyup", this.bind(this.resizeSearch)), this.search.bind("blur", this.bind(function (a) {
                this.container.removeClass("select2-container-active"), this.search.removeClass("select2-focused"), this.opened() || this.clearSearch(), a.stopImmediatePropagation()
            })), this.container.delegate(d, "mousedown", this.bind(function (b) {
                this.enabled && (a(b.target).closest(".select2-search-choice").length > 0 || (this.clearPlaceholder(), this.open(), this.focusSearch(), b.preventDefault()))
            })), this.container.delegate(d, "focus", this.bind(function () {
                this.enabled && (this.container.addClass("select2-container-active"), this.dropdown.addClass("select2-drop-active"), this.clearPlaceholder())
            })), this.initContainerWidth(), this.clearSearch()
        }, enable: function () {
            this.enabled || (this.parent.enable.apply(this, arguments), this.search.removeAttr("disabled"))
        }, disable: function () {
            this.enabled && (this.parent.disable.apply(this, arguments), this.search.attr("disabled", !0))
        }, initSelection: function () {
            if ("" === this.opts.element.val() && "" === this.opts.element.text() && (this.updateSelection([]), this.close(), this.clearSearch()), this.select || "" !== this.opts.element.val()) {
                var c = this;
                this.opts.initSelection.call(null, this.opts.element, function (a) {
                    a !== b && null !== a && (c.updateSelection(a), c.close(), c.clearSearch())
                })
            }
        }, clearSearch: function () {
            var a = this.getPlaceholder();
            a !== b && 0 === this.getVal().length && this.search.hasClass("select2-focused") === !1 ? (this.search.val(a).addClass("select2-default"), this.search.width(this.getMaxSearchWidth())) : this.search.val("").width(10)
        }, clearPlaceholder: function () {
            this.search.hasClass("select2-default") && this.search.val("").removeClass("select2-default")
        }, opening: function () {
            this.clearPlaceholder(), this.resizeSearch(), this.parent.opening.apply(this, arguments), this.focusSearch(), this.opts.element.trigger(a.Event("open"))
        }, close: function () {
            this.opened() && this.parent.close.apply(this, arguments)
        }, focus: function () {
            this.close(), this.search.focus()
        }, isFocused: function () {
            return this.search.hasClass("select2-focused")
        }, updateSelection: function (b) {
            var c = [], d = [], e = this;
            a(b).each(function () {
                0 > k(e.id(this), c) && (c.push(e.id(this)), d.push(this))
            }), b = d, this.selection.find(".select2-search-choice").remove(), a(b).each(function () {
                e.addSelectedChoice(this)
            }), e.postprocessResults()
        }, tokenize: function () {
            var a = this.search.val();
            a = this.opts.tokenizer(a, this.data(), this.bind(this.onSelect), this.opts), null != a && a != b && (this.search.val(a), a.length > 0 && this.open())
        }, onSelect: function (a, b) {
            this.addSelectedChoice(a), this.opts.element.trigger({type: "selected", val: this.id(a), choice: a}), (this.select || !this.opts.closeOnSelect) && this.postprocessResults(), this.opts.closeOnSelect ? (this.close(), this.search.width(10)) : this.countSelectableResults() > 0 ? (this.search.width(10), this.resizeSearch(), this.getMaximumSelectionSize() > 0 && this.val().length >= this.getMaximumSelectionSize() && this.updateResults(!0), this.positionDropdown()) : (this.close(), this.search.width(10)), this.triggerChange({added: a}), b && b.noFocus || this.focusSearch()
        }, cancel: function () {
            this.close(), this.focusSearch()
        }, addSelectedChoice: function (c) {
            var j, d = !c.locked, e = a("<li class='select2-search-choice'>    <div></div>    <a href='#' onclick='return false;' class='select2-search-choice-close' tabindex='-1'></a></li>"), f = a("<li class='select2-search-choice select2-locked'><div></div></li>"), g = d ? e : f, h = this.id(c), i = this.getVal();
            j = this.opts.formatSelection(c, g.find("div")), j != b && g.find("div").replaceWith("<div>" + this.opts.escapeMarkup(j) + "</div>"), d && g.find(".select2-search-choice-close").bind("mousedown", u).bind("click dblclick", this.bind(function (b) {
                    this.enabled && (a(b.target).closest(".select2-search-choice").fadeOut("fast", this.bind(function () {
                        this.unselect(a(b.target)), this.selection.find(".select2-search-choice-focus").removeClass("select2-search-choice-focus"), this.close(), this.focusSearch()
                    })).dequeue(), u(b))
                })).bind("focus", this.bind(function () {
                    this.enabled && (this.container.addClass("select2-container-active"), this.dropdown.addClass("select2-drop-active"))
                })), g.data("select2-data", c), g.insertBefore(this.searchContainer), i.push(h), this.setVal(i)
        }, unselect: function (a) {
            var c, d, b = this.getVal();
            if (a = a.closest(".select2-search-choice"), 0 === a.length)throw"Invalid argument: " + a + ". Must be .select2-search-choice";
            c = a.data("select2-data"), c && (d = k(this.id(c), b), d >= 0 && (b.splice(d, 1), this.setVal(b), this.select && this.postprocessResults()), a.remove(), this.opts.element.trigger({type: "removed", val: this.id(c), choice: c}), this.triggerChange({removed: c}))
        }, postprocessResults: function () {
            var a = this.getVal(), b = this.results.find(".select2-result"), c = this.results.find(".select2-result-with-children"), d = this;
            b.each2(function (b, c) {
                var e = d.id(c.data("select2-data"));
                k(e, a) >= 0 && (c.addClass("select2-selected"), c.find(".select2-result-selectable").addClass("select2-selected"))
            }), c.each2(function (a, b) {
                b.is(".select2-result-selectable") || 0 !== b.find(".select2-result-selectable:not(.select2-selected)").length || b.addClass("select2-selected")
            }), -1 == this.highlight() && d.highlight(0)
        }, getMaxSearchWidth: function () {
            return this.selection.width() - n(this.search)
        }, resizeSearch: function () {
            var a, b, c, d, e, f = n(this.search);
            a = w(this.search) + 10, b = this.search.offset().left, c = this.selection.width(), d = this.selection.offset().left, e = c - (b - d) - f, a > e && (e = c - f), 40 > e && (e = c - f), 0 >= e && (e = a), this.search.width(e)
        }, getVal: function () {
            var a;
            return this.select ? (a = this.select.val(), null === a ? [] : a) : (a = this.opts.element.val(), m(a, this.opts.separator))
        }, setVal: function (b) {
            var c;
            this.select ? this.select.val(b) : (c = [], a(b).each(function () {
                0 > k(this, c) && c.push(this)
            }), this.opts.element.val(0 === c.length ? "" : c.join(this.opts.separator)))
        }, val: function () {
            var c, d = !1, f = this;
            if (0 === arguments.length)return this.getVal();
            if (c = arguments[0], arguments.length > 1 && (d = arguments[1]), !c && 0 !== c)return this.opts.element.val(""), this.updateSelection([]), this.clearSearch(), d && this.triggerChange(), b;
            if (this.setVal(c), this.select)this.opts.initSelection(this.select, this.bind(this.updateSelection)), d && this.triggerChange(); else {
                if (this.opts.initSelection === b)throw Error("val() cannot be called if initSelection() is not defined");
                this.opts.initSelection(this.opts.element, function (b) {
                    var c = a(b).map(f.id);
                    f.setVal(c), f.updateSelection(b), f.clearSearch(), d && f.triggerChange()
                })
            }
            this.clearSearch()
        }, onSortStart: function () {
            if (this.select)throw Error("Sorting of elements is not supported when attached to <select>. Attach to <input type='hidden'/> instead.");
            this.search.width(0), this.searchContainer.hide()
        }, onSortEnd: function () {
            var b = [], c = this;
            this.searchContainer.show(), this.searchContainer.appendTo(this.searchContainer.parent()), this.resizeSearch(), this.selection.find(".select2-search-choice").each(function () {
                b.push(c.opts.id(a(this).data("select2-data")))
            }), this.setVal(b), this.triggerChange()
        }, data: function (c) {
            var e, d = this;
            return 0 === arguments.length ? this.selection.find(".select2-search-choice").map(function () {
                return a(this).data("select2-data")
            }).get() : (c || (c = []), e = a.map(c, function (a) {
                return d.opts.id(a)
            }), this.setVal(e), this.updateSelection(c), this.clearSearch(), b)
        }}), a.fn.select2 = function () {
            var d, g, h, i, c = Array.prototype.slice.call(arguments, 0), j = ["val", "destroy", "opened", "open", "close", "focus", "isFocused", "container", "onSortStart", "onSortEnd", "enable", "disable", "positionDropdown", "data"];
            return this.each(function () {
                if (0 === c.length || "object" == typeof c[0])d = 0 === c.length ? {} : a.extend({}, c[0]), d.element = a(this), "select" === d.element.get(0).tagName.toLowerCase() ? i = d.element.attr("multiple") : (i = d.multiple || !1, "tags"in d && (d.multiple = i = !0)), g = i ? new f : new e, g.init(d); else {
                    if ("string" != typeof c[0])throw"Invalid arguments to select2 plugin: " + c;
                    if (0 > k(c[0], j))throw"Unknown method: " + c[0];
                    if (h = b, g = a(this).data("select2"), g === b)return;
                    if (h = "container" === c[0] ? g.container : g[c[0]].apply(g, c.slice(1)), h !== b)return!1
                }
            }), h === b ? this : h
        }, a.fn.select2.defaults = {width: "copy", loadMorePadding: 0, closeOnSelect: !0, openOnEnter: !0, containerCss: {}, dropdownCss: {}, containerCssClass: "", dropdownCssClass: "", formatResult: function (a, b, c, d) {
            var e = [];
            return y(a.text, c.term, e, d), e.join("")
        }, formatSelection: function (a) {
            return a ? a.text : b
        }, sortResults: function (a) {
            return a
        }, formatResultCssClass: function () {
            return b
        }, formatNoMatches: function () {
            return"No matches found"
        }, formatInputTooShort: function (a, b) {
            var c = b - a.length;
            return"Please enter " + c + " more character" + (1 == c ? "" : "s")
        }, formatInputTooLong: function (a, b) {
            var c = a.length - b;
            return"Please delete " + c + " character" + (1 == c ? "" : "s")
        }, formatSelectionTooBig: function (a) {
            return"You can only select " + a + " item" + (1 == a ? "" : "s")
        }, formatLoadMore: function () {
            return"Loading more results..."
        }, formatSearching: function () {
            return"Searching..."
        }, minimumResultsForSearch: 0, minimumInputLength: 0, maximumInputLength: null, maximumSelectionSize: 0, id: function (a) {
            return a.id
        }, matcher: function (a, b) {
            return("" + b).toUpperCase().indexOf(("" + a).toUpperCase()) >= 0
        }, separator: ",", tokenSeparators: [], tokenizer: F, escapeMarkup: function (a) {
            var b = {"\\": "&#92;", "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&apos;", "/": "&#47;"};
            return(a + "").replace(/[&<>"'\/\\]/g, function (a) {
                return b[a[0]]
            })
        }, blurOnChange: !1, selectOnBlur: !1, adaptContainerCssClass: function (a) {
            return a
        }, adaptDropdownCssClass: function () {
            return null
        }}, window.Select2 = {query: {ajax: z, local: A, tags: B}, util: {debounce: q, markMatch: y}, "class": {"abstract": d, single: e, multi: f}}
    }
}(jQuery);