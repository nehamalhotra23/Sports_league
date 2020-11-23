import React from 'react';
class Profile extends React.Component {
    render() {
        return (
            <div>
                <h1>CURRENT TEAM</h1>
                <h1>{this.state.currentTeam.name}</h1>
            </div>
        )
    }
}