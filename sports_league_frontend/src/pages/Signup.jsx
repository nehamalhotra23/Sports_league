import React, { Component } from "react";
import { post } from "axios";

class Signup extends Component {
  constructor() {
    super();
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const password_confirmation = document.getElementById(
      "password_confirmation"
    ).value;
    const request = {
      name: name,
      email: email,
      password: password,
      password_confirmation: password_confirmation,
    };
    post("http://localhost:3001/auth/signup", request)
      .then((response) => {
        this.props.history.push("/");
      })
      .catch((error) => console.log("error", error));
  }

  render() {
    return (
      <div>
        <h1>Sign up</h1>
        <form onSubmit={this.handleSubmit}>
          <div className="form-group">
            <label htmlFor="name">Name: </label>
            <input name="name" id="name" type="name" className="form-control" />
            <label htmlFor="email">Email: </label>
            <input
              name="email"
              id="email"
              type="email"
              className="form-control"
            />
          </div>
          <div className="form-group">
            <label htmlFor="password">Password:</label>
            <input
              name="password"
              id="password"
              type="password"
              className="form-control"
            />
            <label htmlFor="password_confirmation">
              Password confirmation:
            </label>
            <input
              name="password_confirmation"
              id="password_confirmation"
              type="password_confirmation"
              className="form-control"
            />
          </div>
          <button type="submit" className="btn btn-dark">
            Submit
          </button>
        </form>
      </div>
    );
  }
}

export default Signup;
