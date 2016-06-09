var React = require('react');
var ReactBootstrap = require('react-bootstrap');
var FormGroup = ReactBootstrap.FormGroup;
var FormControl = ReactBootstrap.FormControl;
var ControlLabel = ReactBootstrap.ControlLabel;


const SampleForm = React.createClass({
    getInitialState() {
        return {
            value: ''
        };
    },

    getValidationState() {
        const length = this.state.value.length;
        if (length > 10) return 'success';
        else if (length > 5) return 'warning';
        else if (length > 0) return 'error';
    },

    handleChange(e) {
        this.setState({ value: e.target.value });
    },

    render() {
        return (
        <form action="">
            <FormGroup
                controlId="formBasicText"
                validationState={this.getValidationState()}
            >
                <ControlLabel>Name</ControlLabel>
                <FormControl
                    type="text"
                    value={this.state.value}
                    placeholder="Enter text"
                    onChange={this.handleChange}
                />
                <FormControl.Feedback />
            </FormGroup>

            <FormGroup
                controlId="formBasicText"
                validationState={this.getValidationState()}
            >
                <ControlLabel>Phone</ControlLabel>
                <FormControl
                    type="text"
                    value={this.state.value}
                    placeholder="Enter text"
                    onChange={this.handleChange}
                />
                <FormControl.Feedback />
            </FormGroup>
            <FormGroup
                controlId="formBasicText"
                validationState={this.getValidationState()}
            >
                <ControlLabel>Phone</ControlLabel>
                <FormControl
                    type="textarea"
                    value={this.state.value}
                    placeholder="Enter text"
                    onChange={this.handleChange}
                />
                <FormControl.Feedback />
            </FormGroup>
        </form>
        );
    }
});

module.exports = SampleForm;