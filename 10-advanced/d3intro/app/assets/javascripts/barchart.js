$(document).ready(function () {
  if ($('#barchart').length === 0) return;

  var data = [4, 8, 15, 16, 23, 47, 50];

  // Scale the x axis to accomodate the max value in data.
  var x = d3.scale.linear()
            .domain([0, d3.max(data)])
            .range([0, 500]);

  d3.select('.chart')
    .selectAll('div')
    .data(data).enter().append('div')
    .style('width', function (d) { return x(d) + 'px'; })
    .text(function (d) { return d; });

});