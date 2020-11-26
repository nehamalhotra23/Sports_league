import React, { Component } from 'react';
import axios from 'axios';

class TeamInfo extends Component {
  constructor() {
    super();
    this.state = {  team: {} };
  }

  componentDidMount() {
    let token = "Bearer " + localStorage.getItem("jwt");
    let name1 = localStorage.getItem("name");
    console.log(name, "nameee")
    axios({method: 'get', url: `http://localhost:3001/teams/`, headers: {'name': name1 } , headers: {'Authorization': token }})
      .then((response) => { 
        localStorage.setItem('teams',JSON.stringify(response.data));
        this.setState({
          team: response.data
        })
        console.log(response.data, "nnnnnnnehhaaa")
      })
      .catch(error => console.log('error', error));
  }

  render() {
    return (
      <div>
        <h1>Hi infoooo</h1>
        <h2> neha {this.state.team.name}</h2>
        <p>
        </p>
        <hr/>
      </div>
    )
  }
}

export default TeamInfo;