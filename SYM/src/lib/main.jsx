var React = require('react');
var ReactDom = require('react-dom');

var Text = require('../components/Text.jsx');
var ButtonInstance = require('../components/Buttons.jsx');

ReactDom.render(<Text/>, document.getElementById('name'));
ReactDom.render(ButtonInstance, document.getElementById('address'));