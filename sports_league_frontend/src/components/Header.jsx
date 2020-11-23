import React from 'react';
import { Link } from 'react-router-dom'


function Header() {
        return (
        <div>
         <Link to='Signin' className="btn button-primary">SignIn</Link>
          <Link to='Signup'  className="btn  six columns" disabled>SignUp</Link>
        </div>
        );
    }

    export default Header; 
