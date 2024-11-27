import React, { useState } from "react";
import Axios from "axios";

const RegisterComponent = ({ toggleForm }) => {
  const [email, setEmail] = useState("");
  const [name, setName] = useState("");
  const [password, setPassword] = useState("");
  const [passwordAgain, setPasswordAgain] = useState("");
  const [contactNumber, setContactNumber] = useState("");
  const [address, setAddress] = useState("");
  const [pincode, setPincode] = useState("");

  const handleRegister = (e) => {
    e.preventDefault();
    Axios.post("http://localhost:3001/register", {
      email: email,
      name: name,
      password: password,
      contactNumber: contactNumber,
      address: address,
      pincode: pincode,
    }).then((res) => {
      console.log(res);
    });
  };

  return (
    <div className="form-container register-form">
      <h2>Create an Account</h2>
      <form onSubmit={handleRegister} className="form">
        <div className="input-group">
          <input
            placeholder="Email"
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div className="input-group">
          <input
            placeholder="Name"
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
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
        <div className="input-group">
          <input
            placeholder="Confirm Password"
            type="password"
            value={passwordAgain}
            onChange={(e) => setPasswordAgain(e.target.value)}
            required
          />
        </div>
        <div className="input-group">
          <input
            placeholder="Contact Number"
            type="text"
            value={contactNumber}
            onChange={(e) => setContactNumber(e.target.value)}
            required
          />
        </div>
        <div className="input-group">
          <input
            placeholder="Address"
            type="text"
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            required
          />
        </div>
        <div className="input-group">
          <input
            placeholder="Pincode"
            type="text"
            value={pincode}
            onChange={(e) => setPincode(e.target.value)}
            required
          />
        </div>
        <button type="submit" className="btn-submit">
          Register
        </button>
      </form>
      <p>
        Already have an account?{" "}
        <span onClick={toggleForm} className="link">
          Login here
        </span>
      </p>
    </div>
  );
};

export default RegisterComponent;
