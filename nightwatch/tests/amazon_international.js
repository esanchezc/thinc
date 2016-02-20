/**
 * Created by ramses on 2/14/16.
 */
module.exports = {
    tags: ['page_objects1'],
    after : function(browser) {
        browser
            .end();
    },

    'Amazon Mexico Search' : function(browser) {
        browser
            .url(browser.globals.prod.frontend.url + browser.globals.locales.mexico.urn)
            .page.Search().searchTerm("Marvel")
            .pause(3000);
    },

    'Amazon Canada Search' : function(browser) {
        browser
            .url(browser.globals.prod.frontend.url + browser.globals.locales.canada.urn)
            .page.Search().searchTerm("Marvel")
            .pause(3000);
    }
};
