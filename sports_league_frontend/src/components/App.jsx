import React from 'react';
import { Switch, Route } from 'react-router-dom';
import Header from './Header';
import Signin from './Signin';
import Signup from './Signup';
import Profile from './Profile';

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      CurrentTeam: null,
    }
  }
  setCurrentTeam(data) {
    this.setState({
      CurrentTeam: data.team,
    })
  }
  render() {
  return (
    <div className="container">
     <Switch>
       <Route exact path='/' component={Header} />
        <Route path='/Signin' render={()=><Signin onTeamSigningIn={this.setCurrentTeam} />} ></Route>
        <Route exact path='/Signup' component={Signup} /> 
        <Route exact path='/Profile' component={Profile} />   
     </Switch>
    </div>
  );
}
}

export default App;
