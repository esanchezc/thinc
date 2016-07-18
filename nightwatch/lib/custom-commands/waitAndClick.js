/**
 * Created by ramses on 2/14/16.
 */

exports.command = function(cssSelector, callback) {
    var self = this;

    var timeout = this.globals.elements_timeout;

    try {
        this.
            useCss()
            .waitForElementVisible(cssSelector, timeout)
            .click(cssSelector);

    } catch(err) {
        console.log(err);
    }

    this.execute(function() {

    }, [], function(result){
        if(typeof(callback) == 'function') {
            callback.call(self)
        }
    });

    return this;
};


//check the value of elements_timeout in globalsModule.js