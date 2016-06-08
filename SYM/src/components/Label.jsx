var React = require('react');

var Label = React.createClass({
    getInitialState: function (v) {
        return {value: v};
    },
   
    render: function () {
        return (
            <label htmlFor={this.getInitialState.value}>{this.getInitialState.value}</label>
        );
    }
});

module.exports = Label;