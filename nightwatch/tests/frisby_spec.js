/**
 * Created by ramses on 2/14/16.
 */
var frisby = require('/usr/local/lib/node_modules/frisby/lib/frisby.js');

var URL = 'http://httpbin.org';
var pageNotFound = '/status/404';
var getIpAddress = '/ip';
var post = '/post';

frisby.create('Get Ip address JSON')
    .get(URL+getIpAddress)
    .expectStatus(200)
    .expectHeaderContains('content-type', 'application/json')
    .expectJSON({
        "origin": "189.208.16.143"
    })
    .toss();

frisby.create('Post JSON string as body')
    .post('http://httpbin.org/post', {
        arr: [1, 2, 3, 4],
        foo: "bar",
        bar: "baz",
        answer: 42
    }, {json: true})
    .expectHeaderContains('Content-Type', 'json')
    .toss();


frisby.create('Check 404 page')
    .get(URL+pageNotFound)
    .expectStatus(404)
    .expectHeaderContains('content-type', 'text/html')
    .toss();

