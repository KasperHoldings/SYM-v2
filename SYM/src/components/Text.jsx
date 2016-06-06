var React = require('react');

var Text = React.createClass({
    getInitialState: function() {
        return {value: 'Hello!'};
    },
    handleChange: function(event) {
        this.setState({value: event.target.value});
    },
    render: function() {
        return (
            <input
                type="text"
                className="form-control"
                value={this.state.value}
                onChange={this.handleChange}
            />
        );
    }
});

module.exports = Text;