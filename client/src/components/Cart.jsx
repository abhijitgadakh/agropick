import React from "react";
import { Link } from "react-router-dom";

const Cart = () => {
  return (
    <div>
      <h1>Cart Page</h1>
      <p>Your cart is empty. Add some products!</p>
      <Link to="/">Home</Link>
    </div>
  );
};

export default Cart;
