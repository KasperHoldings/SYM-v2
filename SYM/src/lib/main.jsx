var React = require('react');
var ReactDom = require('react-dom');

var Text = require('../components/Text.jsx');
var SampleForm = require('../components/SampleForm.jsx');

ReactDom.render(<SampleForm/>, document.getElementById('users-create-form'));