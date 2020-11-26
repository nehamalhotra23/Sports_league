<!-- post: http://localhost:3001/auth/signin

body:

{
"auth":
{
"name": "Team1",
"email": "team1@ymail.com",
"password": "team1"

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
"password": "team0",
"password_confirmation": "team0"
} -->

<!-- 4. DELETE: http://localhost:3001/teams/1

make sure the toke is there

body: Raw: Json
{
"auth":
{
"name": "Team1",
"email": "team1@ymail.com",
"password": "team1"

    }

}

Response:
{
"status": 200,
"msg": "Team has been deleted."
} -->

<!-- 4. post: http://localhost:3001/auth/signup

body
{
"name": "Team1",
"email": "team1@ymail.com",
"password": "team1"

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

<!-- 5. GET http://localhost:3001/rosters/1
   response body:
   {
   "id": 1,
   "team_id": 1
   } -->
