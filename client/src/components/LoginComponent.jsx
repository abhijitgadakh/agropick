import React, { useState } from "react";

const LoginComponent = ({ toggleForm }) => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleLogin = (e) => {
    e.preventDefault();
    console.log("Logging in with", username, password);
  };

  return (
    <div className="form-container login-form">
      <h2>Login</h2>
      <form onSubmit={handleLogin} className="form">
        <div className="input-group">
          <input
            placeholder="Email or Username"
            type="text"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            required
          />
        </div>
        <div className="input-group">
          <input
            placeholder="Password"
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        <button type="submit" className="btn-submit">
          Login
        </button>
      </form>
      <p>
        Don't have an account?{" "}
        <span onClick={toggleForm} className="link">
          Register here
        </span>
      </p>
    </div>
  );
};

export default LoginComponent;
