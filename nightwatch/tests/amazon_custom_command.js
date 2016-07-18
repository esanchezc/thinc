module.exports = {
    tags: ['smoke'],
    'Demo test Amazon' : function (browser) {
    browser
        .url('http://www.amazon.com.mx')
        .waitForElementVisible('body', 1000)
        .setValue('#twotabsearchtextbox', 'marvel')
	    .waitAndClick('.nav-input')
	    .waitAndClick('#result_0 a.s-access-detail-page')
	    .waitForElementVisible('#productTitle', 8000)
        .end();
  }
};

//nightwatch tests/amazon_custom_command.js -e chrome,default
//see custom-commands for definition of waitAndClick.js