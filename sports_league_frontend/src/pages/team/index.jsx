import React, { useState, useEffect } from "react";
import axios from "axios";
import { withRouter } from "react-router-dom";

function Team() {
  const [currentTeam, setCurrentTeam] = useState();
  useEffect(() => {
    let token = "Bearer " + localStorage.getItem("jwt");
    let name = localStorage.getItem("name");
    axios({
      method: "get",
      url: `http://localhost:3001/teams/`,
      headers: {
        "Content-Type": "application/json",
        name: name,
        Authorization: token,
      },
    })
      .then((response) => {
        setCurrentTeam(response.data);
      })
      .catch((error) => console.log("error", error));
  }, []);
  return (
    <div>
      <div>
        <h1>{setCurrentTeam.name}</h1>
      </div>
    </div>
  );
}

export default withRouter(Team);
