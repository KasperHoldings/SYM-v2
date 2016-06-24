var React = require('react');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;

var Base = require('./components/Base.jsx');
var Page1 = require('./components/Page1.jsx');
var Page2 = require('./components/Page2.jsx');

var Routes = (
    <Router>
        <Route path="/" component={Base}>
            <Route path="page1" composent={Page1}/>
            <Route path="page2" composent={Page2}/>
        </Route>
    </Router>
);