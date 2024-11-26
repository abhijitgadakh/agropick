import React, { useState } from "react";

import { Link } from "react-router-dom";
import LoginComponent from "./LoginComponent";
import RegisterComponent from "./RegisterComponent";

const Login = () => {
  const [isLogin, setIsLogin] = useState(true); // State to toggle between login and register form

  const toggleForm = () => {
    setIsLogin(!isLogin); // Toggle between forms
  };

  return (
    <div className="login-page">
      {isLogin ? (
        <LoginComponent toggleForm={toggleForm} />
      ) : (
        <RegisterComponent toggleForm={toggleForm} />
      )}
    </div>
  );
};

export default Login;
