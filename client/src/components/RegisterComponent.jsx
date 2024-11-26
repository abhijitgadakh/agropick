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
    console.log(
      "Registering with:",
      email,
      name,
      password,
      passwordAgain,
      contactNumber,
      address,
      pincode
    );
  };

  return (
    <div className="register-form">
      <h2>Register</h2>
      <form onSubmit={handleRegister}>
        <div>
          <label>Email</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Name</label>
          <input
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Password</label>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Password again</label>
          <input
            type="passwordAgain"
            value={passwordAgain}
            onChange={(e) => setPasswordAgain(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Contact Number</label>
          <input
            type="text"
            value={contactNumber}
            onChange={(e) => setContactNumber(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Address</label>
          <input
            type="text"
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Pincode</label>
          <input
            type="text"
            value={pincode}
            onChange={(e) => setPincode(e.target.value)}
            required
          />
        </div>
        <button type="submit">Register</button>
      </form>
      <p>
        Already have an account?{" "}
        <span onClick={toggleForm} style={{ color: "blue", cursor: "pointer" }}>
          Login here
        </span>
      </p>
    </div>
  );
};

export default RegisterComponent;
