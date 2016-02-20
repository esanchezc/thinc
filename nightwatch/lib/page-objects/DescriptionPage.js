/**
 * Created by ramses on 2/15/16.
 */
/**
 * Created by ramses on 2/14/16.
 */
module.exports = function(browser) {
    var timeout = browser.globals.elements_timeout;
    var css = {};


    return {
        addToCart : function(searchTerm) {
            return browser

                .click(css.addToCartButton)
        }
    };
};
