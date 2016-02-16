/**
 * Created by ramses on 2/14/16.
 */
module.exports = {
    tags: ['page_objects'],
    beforeEach: function (browser) {
        browser
            .url(browser.globals.prod.frontend.url + browser.globals.locales.mexico.urn);
    },

    after: function (browser) {
        browser
            .end();
    },

    'Amazon Mexico Search': function (browser) {
        browser
            .page.Search().searchTerm("Marvel")
    },

    'Amazon 2' : function(browser) {
        browser
            .page.Search().searchTerm("DC Comics")
    }

};
