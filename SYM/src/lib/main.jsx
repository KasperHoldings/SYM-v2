var React = require('react');
var ReactDom = require('react-dom');

var Text = require('../components/Text.jsx');
var SampleForm = require('../components/SampleForm.jsx');
var SampleFormEdit = require('../components/SampleFormEdit.jsx');

if (document.body.contains(document.getElementById('users-create-form'))) {
    ReactDom.render(<SampleForm/>, document.getElementById('users-create-form'));
} else {
    ReactDom.render(<SampleFormEdit/>, document.getElementById('users-edit-form'));
    console.log("Hi");
}
