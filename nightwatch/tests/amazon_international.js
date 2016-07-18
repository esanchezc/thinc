/**
 * Created by ramses on 2/14/16.
 */
module.exports = {

    tags: ['smoke'],
    after : function(browser) {
        browser
            .end();
    },

    'Amazon Mexico Search' : function(browser) {
        browser.globals.search_terms.forEach(function(singleSearchTerm){
            console.log(singleSearchTerm);
            browser
                .url(browser.globals.prod.frontend.url + browser.globals.locales.mexico.urn)
                .page.Search().searchTerm(singleSearchTerm)
                .waitAndClick('#result_0 a.s-access-detail-page')
                .waitForElementVisible('#title', 8000);
            //.pause(3000);
        })
    },

    'Amazon Canada Search' : function(browser) {
        browser
            .url(browser.globals.prod.frontend.url + browser.globals.locales.canada.urn)
            .page.Search().searchTerm("Marvel")
            .waitAndClick('#result_0')
            .waitForElementVisible('#nav-logo', 8000);
            //.pause(3000);
    }

};


//nightwatch tests/amazon_international.js
//nightwatch tests/amazon_international.js -e default,chrome

