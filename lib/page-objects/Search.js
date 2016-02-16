/**
 * Created by ramses on 2/14/16.
 */
module.exports = function(browser) {
    var timeout = browser.globals.elements_timeout;
    var css = {};

    css.searchTextField = '#twotabsearchtextbox';
    css.searchButton = '.nav-input';
    css.searchResultsList = '#s-results-list-atf';
    xpath.quantitty = '//option[contains(@value,%s)]';

    return {
        searchTerm : function(searchTerm) {
            return browser
                .setValue(css.searchTextField, searchTerm)
                .click(css.searchButton)
                .waitForElementVisible(css.searchResultsList, timeout);
        },

        changeQuantity : function(quantity) {
            return browser
                .click('//option[contains(@value,'+ quantity + ')]')
                .waitForElementVisible(css.searchResultsList, timeout);
        }
    };
};
