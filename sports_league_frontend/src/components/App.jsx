import React, { Component } from 'react';
import Header from './Header';
import Signin from './Signin';
import Signout from './Signout';
import TeamInfo from './TeamInfo';

import {BrowserRouter as Router, Route, NavLink, Switch} from 'react-router-dom'

class App extends Component {
  render() {
    return (
      <Router>
        <div className="container">
          <Navigation />
          <Main />
        </div>
      </Router>
    );
  }
}
const Navigation = () => (
  <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
    <ul className="navbar-nav mr-auto">
      <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/">Home</NavLink></li>
      <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/teams">TeamInfo</NavLink></li>
      
      {
        localStorage.getItem("jwt") ?
          <li className="nav-item"><NavLink exact className="nav-link" to="/signout">Sign Out</NavLink></li>
        :
          <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/signin">Sign In</NavLink></li>
      }
    </ul>
  </nav>
);
const Main = () => (
  <Switch>
    <Route exact path="/" component={Header} />
    <Route exact path="/signin" component={Signin} />
    <Route exact path="/signout" component={Signout} />
    <Route exact path="/teams/" component={TeamInfo} />
  </Switch>
);

export default App;
