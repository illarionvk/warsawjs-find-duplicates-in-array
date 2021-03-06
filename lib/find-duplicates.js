// Generated by CoffeeScript 1.9.1
(function() {
  'use strict';
  var _, findDuplicates, prettyPrint;

  _ = require('lodash');

  prettyPrint = function(data) {
    return console.log(JSON.stringify(data, null, 2));
  };

  findDuplicates = function(skus) {
    return _.chain(skus).groupBy(function(sku) {
      return sku;
    }).pairs().filter(function(item) {
      return item[1].length > 1;
    }).map(function(item) {
      return item[0];
    }).sortBy(function(sku) {
      return sku;
    }).value();
  };

  module.exports = findDuplicates;

}).call(this);
