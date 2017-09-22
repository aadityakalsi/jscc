/*! tparser.js */

var p = require('../parser.js');
var expect = require('chai').expect;

describe('parser', function() {
    it('no preproc: works', function() {
        var _p = new p.Parser();
        str = '/*   *';
        expect(() => _p.parse(str)).to.throw('Unterminated comment');
    });
    it('no preproc: works', function() {
        var _p = new p.Parser();
        var str = 'int foo(int x);';
        expect(() => _p.parse(str)).to.not.throw();
    });
});
