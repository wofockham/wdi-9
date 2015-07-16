$(document).ready(function () {
  // var circles = d3.selectAll('circle');

  // circles.style('fill', 'steelblue');

  // // circles.attr('cx', function () { return Math.random() * 720 });

  // circles.data([32, 57, 112]);

  // circles.attr('r', function (d) { return Math.sqrt(d); });

  // circles.attr('cx', function (d, i) { return i * 100 + 30; });


  var svg = d3.select('svg');
  var circles = svg.selectAll('circle').data([32, 57, 112, 293])
    .enter().append('circle')
    .attr('cy', 60)
    .attr('cx', function (d, i) { return i * 100 + 30; })
    .attr('r', function (d) { return Math.sqrt(d); })
    .attr('fill', 'steelblue');

  var laterCircles = svg.selectAll('circle').data([32, 57]);
  laterCircles.exit().remove();
});
