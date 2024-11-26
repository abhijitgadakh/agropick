import React from "react";
import { Link } from "react-router-dom";

const Products = () => {
  return (
    <div>
      <h1>Products Page</h1>
      <p>Here is a list of products.</p>
      <Link to="/">Home</Link>
    </div>
  );
};

export default Products;
