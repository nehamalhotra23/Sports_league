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

  getTeam() {
    axios.get('http://localhost:3001/auth/show')
    .then(response => {
      this.setState({team: response.data})
    })
    .catch(error => console.log(error))
  }

  componentDidMount() {
    this.getTeam()
  }

  render() {
  return (
    <div className="container">
     <Switch>
       <Route exact path='/' component={Header} />
        <Route path='/Signin' render={(props)=><Signin onTeamSigningIn={this.setCurrentTeam} routerProps={props} />} ></Route>
        <Route exact path='/Signup' component={Signup} /> 
        <Route exact path='/Profile' render={() => {
          return this.state.CurrentTeam ? (
           <Profile CurrentTeam={this.state.CurrentTeam} />
          ) : (
            <Signin setCurrentTeam={this.setCurrentTeam} />
          )
        }} />   
     </Switch>
    </div>
  );
}
}

export default App;
