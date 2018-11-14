//IE jQuery호환 /*  CrossjQuery */
        if (typeof(jQuery) == "undefined") {
            var iframeBody = document.getElementsByTagName("body")[0];
            var jQuery = function (selector) { return parent.jQuery(selector, iframeBody); };
            var $ = jQuery;
        }