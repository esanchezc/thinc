module.exports = {
  tags: ['example'],
  'Demo test Google' : function (browser) {
    browser
      .url('http://www.google.com')
      .waitForElementVisible('body', 1000)
      .setValue('input[type=text]', 'nightwatch')
      .waitForElementVisible('button[name=btnG]', 1000)
      .click('button[name=btnG]')
      .pause(1000)
      .assert.containsText('#main', 'Night Watch')
      .end();
  }
};

//Simple execution
//nightwatch tests/example.js

//Parallel execution
//nightwatch tests/example.js -e default,chrome

//Tags usage
//nightwatch tests/example.js -e default,chrome -a example

//Go to amazon.js
