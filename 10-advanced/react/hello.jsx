var React = require('react');
var Header = require('./header');
var Container = require('./container');


const Hello = React.createClass({
  render(){
    return(
      <div>
        <Header />
        <Container />
      </div>
    );
  }
});

export default Hello;
