import React from "react";
import Navigation from "./nav";
import Home from "../pages/home";
import Team from "../pages/team";

import Signin from "../pages/Signin";
import Signup from "../pages/Signup";

import { BrowserRouter, Route, Switch } from "react-router-dom";

export default function App() {
  return (
    <BrowserRouter>
      <div className="container">
        <Navigation />
        <Switch>
          <Route exact path="/" component={Home} />
          <Route path="/teams/:name?" component={Team} />
          <Route exact path="/signin" component={Signin} />
          <Route exact path="/signup" component={Signup} />
        </Switch>
      </div>
    </BrowserRouter>
  );
}
