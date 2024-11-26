import React from "react";
import { Route } from "react-router-dom";
import Home from "./components/Home";
import Login from "./components/Login";
import Register from "./components/Register";
import Products from "./components/Products";
import Cart from "./components/Cart";

export const routes = [
  { path: "/", pageName: "Home", element: <Home /> },
  { path: "/login", pageName: "Login", element: <Login /> },
  { path: "/register", pageName: "Register", element: <Register /> },
  { path: "/products", pageName: "Products", element: <Products /> },
  { path: "/cart", pageName: "Cart", element: <Cart /> },
];
