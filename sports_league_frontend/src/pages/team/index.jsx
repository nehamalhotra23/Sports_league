import React, { useState, useEffect } from "react";
import axios from "axios";
import { withRouter } from "react-router-dom";

function Team({ match }) {
  const [currentTeam, setCurrentTeam] = useState(undefined);

  useEffect(() => {
    let token = "Bearer " + localStorage.getItem("jwt");
    let name = localStorage.getItem("name");

    axios({
      method: "get",
      url: `http://localhost:3001/teams/${match.params.name}`,
      headers: { name: name },
      headers: { Authorization: token },
    })
      .then((response) => {
        setCurrentTeam(response.data);
      })
      .catch((error) => console.log("error", error));
  }, []);

  return (
    <div>
      {currentTeam && (
        <div>
          <h1>{currentTeam.name}</h1>
        </div>
      )}
    </div>
  );
}

export default withRouter(Team);
