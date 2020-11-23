import React from 'react';
import { Switch, Route } from 'react-router-dom';

class Signin extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      email: "",
      password: ""
    }
  }
  handleChange(event){
    this.setState({
      [event.target.id]: event.target.value
    })
  }
handleOnSubmit(event){
    event.preventDefault()
    let team = {"auth": 
    {name: this.state.name, 
     email: this.state.email, 
     password: this.state.password}}
fetch('http://localhost:3001/auth/signin', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(team)
    })
    .then(function(response){
      if (!response.ok) {
        throw Error(response.statusText);
      }
      return response.json()
    })
    .then((data) => localStorage.setItem("jwt", data.jwt))
    .catch(error => {console.log(error)});
  }

  // saved for logout
  // getResource(){
  //   let token = "Bearer " + localStorage.getItem("jwt")
  //   fetch('/api/resource', {
  //     method: 'GET',
  //     headers: {
  //       'Authorization': token
  //     }
  //   })
  //   .then((response) => response.json())
  //   .then((json) => doSomething(json))
  // }
  render() {
  return (
    <div className="container">
     <form className="form" onSubmit={(event) => this.handleOnSubmit(event)}>
         <input
          name="name" id="name" type="name"
          value={this.state.name}
          onChange={(event) => this.handleChange(event)}
        />  
        <label htmlFor="email">Email: </label>
        <input
          name="email" id="email" type="email"
          value={this.state.email}
          onChange={(event) => this.handleChange(event)}
        />
        <label htmlFor="password">Password: </label>
        <input
          name="password" id="password" type="password"
          value={this.state.password}
          onChange={(event) => this.handleChange(event)}
          />
        <input type="submit" />
      </form>
    </div>
  );
}
}


export default Signin;
