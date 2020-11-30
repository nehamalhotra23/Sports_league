import React, { useState } from "react";
import { NavLink } from "react-router-dom";

export default function Navigation({}) {
  const [reload, setReload] = useState(false);
  return (
    <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
      <ul className="navbar-nav mr-auto">
        <li className="nav-item">
          <NavLink exact className="nav-link" activeClassName="active" to="/">
            Home
          </NavLink>
        </li>
        <li className="nav-item">
          <NavLink
            exact
            className="nav-link"
            activeClassName="active"
            to="/signup"
          >
            Sign up
          </NavLink>
        </li>
        <li className="nav-item">
          <NavLink
            exact
            className="nav-link"
            activeClassName="active"
            to="/team"
          >
            TeamInfo
          </NavLink>
        </li>

        {localStorage.getItem("jwt") ? (
          <li className="nav-item">
            <a
              href="#"
              className="nav-link"
              onClick={() => {
                localStorage.removeItem("jwt");
                window.location.href = "/signin";
              }}
            >
              Sign Out
            </a>
          </li>
        ) : (
          <li className="nav-item">
            <NavLink
              exact
              className="nav-link"
              activeClassName="active"
              to="/signin"
            >
              Sign In
            </NavLink>
          </li>
        )}
      </ul>
    </nav>
  );
}
