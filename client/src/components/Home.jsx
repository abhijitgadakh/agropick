import React from "react";
import { Link } from "react-router-dom";
import { routes } from "../Routes";

const Home = () => {
  return (
    <div>
      <h1>Home Page</h1>
      <p>
        Welcome to the home page! You can navigate to other pages from here.
      </p>
      <ul>
        {routes.map((route, index) => (
          <li key={index}>
            <Link to={route.path}>{route.pageName}</Link>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Home;
