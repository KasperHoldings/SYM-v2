var React = require('react');
var ReactBootstrap = require('react-bootstrap');
var FormGroup = ReactBootstrap.FormGroup;
var FormControl = ReactBootstrap.FormControl;
var ControlLabel = ReactBootstrap.ControlLabel;
var ButtonGroup = ReactBootstrap.ButtonGroup;
var Button = ReactBootstrap.Button;


const SampleForm = React.createClass({
    //getInitialState() {
    //    return {
    //        value: ''
    //    };
    //},
    //
    //getValidationState() {
    //    const length = this.state.value.length;
    //    if (length > 10) return 'success';
    //    else if (length > 5) return 'warning';
    //    else if (length > 0) return 'error';
    //},
    //
    //handleChange(e) {
    //    this.setState({ value: e.target.value });
    //},

    render() {
        return (
        <form action="/users/create" method="POST">
            <FormGroup
                controlId="formBasicText"
                //validationState={this.getValidationState()}
            >
                <ControlLabel>Name</ControlLabel>
                <FormControl
                    type="text"
                    //value={this.state.value}
                    //placeholder="Enter text"
                    //onChange={this.handleChange}
                    name="name"
                />
                <FormControl.Feedback />
            </FormGroup>

            <FormGroup
                controlId="address"
                //validationState={this.getValidationState()}
            >
                <ControlLabel>Address</ControlLabel>
                <FormControl
                    type="text"
                    //value={this.state.value}
                    //placeholder="Enter text"
                    //onChange={this.handleChange}
                    name="address"
                />
                <FormControl.Feedback />
            </FormGroup>
            <FormGroup
                controlId="phone"
                //validationState={this.getValidationState()}
            >
                <ControlLabel>Phone</ControlLabel>
                <FormControl
                    type="text"
                    //value={this.state.value}
                    //placeholder="Enter text"
                    //onChange={this.handleChange}
                    name="phone"
                />
                <FormControl.Feedback />
            </FormGroup>
            <FormGroup
                controlId="email"
                //validationState={this.getValidationState()}
            >
                <ControlLabel>Email</ControlLabel>
                <FormControl
                    type="text"
                    //value={this.state.value}
                    //placeholder="Enter text"
                    //onChange={this.handleChange}
                    name="email"
                />
                <FormControl.Feedback />
            </FormGroup>
            <ButtonGroup>
                <Button type="submit" bsStyle="primary">
                    Create User
                </Button>
                <Button type="submit" bsStyle="warning">
                    Cancel
                </Button>
            </ButtonGroup>

        </form>
        );
    }
});

module.exports = SampleForm;