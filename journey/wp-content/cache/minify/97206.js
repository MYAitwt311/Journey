jQuery(function(o){if("undefined"==typeof woocommerce_price_slider_params)return!1;function e(){o("input#min_price, input#max_price").hide(),o(".price_slider, .price_label").show();var e=o(".price_slider_amount #min_price").data("min"),r=o(".price_slider_amount #max_price").data("max"),i=o(".price_slider_amount #min_price").val(),c=o(".price_slider_amount #max_price").val();o(".price_slider:not(.ui-slider)").slider({range:!0,animate:!0,min:e,max:r,values:[i,c],create:function(){o(".price_slider_amount #min_price").val(i),o(".price_slider_amount #max_price").val(c),o(document.body).trigger("price_slider_create",[i,c])},slide:function(e,r){o("input#min_price").val(r.values[0]),o("input#max_price").val(r.values[1]),o(document.body).trigger("price_slider_slide",[r.values[0],r.values[1]])},change:function(e,r){o(document.body).trigger("price_slider_change",[r.values[0],r.values[1]])}})}o(document.body).bind("price_slider_create price_slider_slide",function(e,r,i){o(".price_slider_amount span.from").phpl(accounting.formatMoney(r,{symbol:woocommerce_price_slider_params.currency_format_symbol,decimal:woocommerce_price_slider_params.currency_format_decimal_sep,thousand:woocommerce_price_slider_params.currency_format_thousand_sep,precision:woocommerce_price_slider_params.currency_format_num_decimals,format:woocommerce_price_slider_params.currency_format})),o(".price_slider_amount span.to").phpl(accounting.formatMoney(i,{symbol:woocommerce_price_slider_params.currency_format_symbol,decimal:woocommerce_price_slider_params.currency_format_decimal_sep,thousand:woocommerce_price_slider_params.currency_format_thousand_sep,precision:woocommerce_price_slider_params.currency_format_num_decimals,format:woocommerce_price_slider_params.currency_format})),o(document.body).trigger("price_slider_updated",[r,i])}),e(),"undefined"!=typeof wp&&wp.customize&&wp.customize.selectiveRefresh&&wp.customize.widgetsPreview&&wp.customize.widgetsPreview.WidgetPartial&&wp.customize.selectiveRefresh.bind("partial-content-rendered",function(){e()})});