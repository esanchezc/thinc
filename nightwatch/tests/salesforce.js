var timeout = 20000;

module.exports = {
    tags: ['regression'],
    beforeEach : function(browser) {
        browser
            .url('https://www.salesforce.com/mx');
    },

    after : function(browser) {
        browser
            .end();
    },

    'SalesForce positive' : function(browser) {
        browser
            .url('https://www.salesforce.com/mx')
            .waitForElementVisible('body', timeout)
            .click('#free-trial-trigger')
            .waitForElementVisible('body', timeout)
            .setValue('#UserFirstName', 'valid name')
            .setValue('#UserLastName', 'valid lastname')
            .setValue('#UserTitle', 'valid cargo')
            ;
    },

    'SalesForce negative' : function(browser) {
        browser
            .url('https://www.salesforce.com/mx')
            .waitForElementVisible('body', timeout)
            .click('#free-trial-trigger')
            .setValue('#UserFirstName', '!#@#%^&')
            .setValue('#UserLastName', '#%$^%$&^%*&')
            ;
    }
};