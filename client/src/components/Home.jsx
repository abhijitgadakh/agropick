import React from "react";
import { Link } from "react-router-dom";
import { routes } from "../Routes";

const Home = () => {
  return (
    <div className="home-container">
      <h1 className="home-title">Home Page</h1>
      <p className="home-description">
        Welcome to the home page! You can navigate to other pages from here.
      </p>
      <ul className="route-list">
        {routes.map((route, index) => (
          <li key={index} className="route-item">
            <Link to={route.path} className="route-link">
              {route.pageName}
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Home;
