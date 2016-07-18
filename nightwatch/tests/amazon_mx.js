/**
 * Created by ramses on 2/14/16.
 */
module.exports = {
    tags: ['smoke'],
    beforeEach: function (browser) {
        browser
            .url(browser.globals.prod.frontend.url + browser.globals.locales.mexico.urn);
    },

    after: function (browser) {
        browser
            .end();
    },

    'Amazon Marvel': function (browser) {
        browser
            .page.Search().searchTerm("Marvel")
    },

    'Amazon DC Comics' : function(browser) {
        browser
            .page.Search().searchTerm("DC Comics")
    }

};

//nightwatch tests/amazon_mx.js -e chrome,default
//each browser searches for marvel and then for DC Comics, 4 tests in total
//see page-objects/Search.js for the defintion of searchTerm function
