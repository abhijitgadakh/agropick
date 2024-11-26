import React from "react";
import { Link } from "react-router-dom";

const Register = () => {
  return (
    <div>
      <h1>Register Page</h1>
      <p>Create a new account here.</p>
      <Link to="/">Home</Link>
    </div>
  );
};

export default Register;
