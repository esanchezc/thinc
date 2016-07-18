module.exports = {
    tags: ['smoke'],
    'Demo test Amazon' : function (browser) {
    browser
      .url('http://www.amazon.com.mx')
      .waitForElementVisible('body', 1000)
      .setValue('#twotabsearchtextbox', 'marvel')
	  .click('.nav-input')
      .waitForElementVisible('#s-results-list-atf', 1000)
	  .click('#result_0 a.s-access-detail-page')
	  .waitForElementVisible('#productTitle', 5000)
      .end();
  }
};

//nightwatch tests/amazon.js
//Notice the repetition of waitForElementVisible + click
//Go to custom-commands