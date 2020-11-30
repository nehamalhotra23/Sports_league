<!-- post: http://localhost:3001/auth/signin

raw-JSON body:

{
"auth":
  {
"name": "Team1",
"email": "team1@ymail.com",
"password": "team1@ymail.com"

  }

}

* Jwt token will be created after sign in -->
<!-- * Copy the jwt token from response body
* paste that in token tab under Authorisation tab
* remove the body of the request
* choose get: http://localhost:3001/teams/1 -->

<!-- response body:
{
    "id": 1,
    "name": "TEAM 1",
    "email": "team1@ymail.com",
    "password_digest": "$2a$12$8eQEedn9/VlO4Swlsj9qlOqRQ1iJjNZUsR0BQORMEln9EzUD4r73i",
    "created_at": "2020-11-25T20:39:00.916Z",
    "updated_at": "2020-11-25T20:39:00.916Z"
} -->

<!-- 3. PUT: http://localhost:3001/teams/1

make sure the toke is there
body: Raw: Json

{
"name": "Team 1",
"email": "team1@ymail.com",
"password": "team1@ymail.com",
"password_confirmation": "team1@ymail.com"
} -->

<!-- 4. DELETE: http://localhost:3001/teams/1

make sure the toke is there

body: Raw: Json
{
"auth":
{
"name": "Team1",
"email": "team1@ymail.com",
"password": "team1@ymail.com"

    }

}

Response:
{
"status": 200,
"msg": "Team has been deleted."
} -->

<!-- 5. post: http://localhost:3001/auth/signup
new team has to be unique

body
{
"name": "TeamNew",
"email": "teamNew@ymail.com",
"password": "teamNew@ymail.com"
"password_confirmation": "teamNew@ymail.com"

}

response: 201 created

{
"id": 22,
"name": "Team1",
"email": "team1@ymail.com",
"password_digest": "$2a$12$BaYoVcyboSldN4FVTCwGkeLYUtlykAnTi6CWIJ9lAxvHdCjc/F/Ci",
"created_at": "2020-11-25T21:15:51.410Z",
"updated_at": "2020-11-25T21:15:51.410Z"
} -->

<!-- 6. list of player_bots for particular team/ make sure authorisation toke is present
get: http://localhost:3001/teams/:id/player_bots   -->

<!-- responseBody: 200k

[
    {
        "id": 1,
        "name": "playerbot 0",
        "speed": 30,
        "strength": 20,
        "agility": 10,
        "designation": "starter",
        "team_id": 1,
        "created_at": "2020-11-30T19:49:35.237Z",
        "updated_at": "2020-11-30T19:49:35.237Z"
    },
    {
        "id": 2,
        "name": "playerbot 1",
        "speed": 30,
        "strength": 20,
        "agility": 10,
        "designation": "starter",
        "team_id": 1,
        "created_at": "2020-11-30T19:49:35.245Z",
        "updated_at": "2020-11-30T19:49:35.245Z"
    },
] -->
