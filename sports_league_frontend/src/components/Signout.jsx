import React from 'react';
import { Redirect } from 'react-router-dom'

const Signout = () => {
  localStorage.removeItem('jwt');
  return <Redirect to='/' />
}

export default Signout;