import React, { useState } from "react";
import LoginComponent from "./LoginComponent";
import RegisterComponent from "./RegisterComponent";

const Login = () => {
  const [isLogin, setIsLogin] = useState(true); // State to toggle between login and register form

  const toggleForm = () => {
    setIsLogin(!isLogin); // Toggle between forms
  };

  return (
    <div className="login-page">
      <div className="login-container">
        {isLogin ? (
          <LoginComponent toggleForm={toggleForm} />
        ) : (
          <RegisterComponent toggleForm={toggleForm} />
        )}
      </div>
    </div>
  );
};

export default Login;
