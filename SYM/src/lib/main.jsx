var React = require('react');
var ReactDom = require('react-dom');
var Text = require('./../components/Text.jsx');
var TextArea = require('./../components/TextArea.jsx');

ReactDom.render(<Text/>, document.getElementById('name'));
ReactDom.render(<Text/>, document.getElementById('email'));
ReactDom.render(<TextArea/>, document.getElementById('address'));