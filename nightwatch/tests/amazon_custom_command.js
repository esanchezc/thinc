module.exports = {
    tags: ['custom'],
    'Demo test Amazon' : function (browser) {
    browser
        .url('http://www.amazon.com.mx')
        .waitForElementVisible('body', 1000)
        .setValue('#twotabsearchtextbox', 'marvel')
	    .waitAndClick('.nav-input')
        .waitForElementVisible('#s-results-list-atf', 8000)
	    .click('#result_0 a.s-access-detail-page')
	    .waitForElementVisible('#productTitle', 8000)
        .end();
  }
};