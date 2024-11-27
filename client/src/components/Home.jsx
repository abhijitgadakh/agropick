import React from "react";
import { Link } from "react-router-dom";
import { routes } from "../Routes";

const Home = () => {
  return (
    <div className="home-container">
      {/* Navbar */}
      <div className="navbar">
        <div className="nav-left">
          <img
            src="/logo_square.png" // Replace with your image path
            alt="Full Width Banner"
            className="nav-logo"
          />
          <div className="nav-right"></div>
          {routes.map((route, index) => (
            <Link to={route.path} className="route-link" key={index}>
              {route.pageName}
            </Link>
          ))}
        </div>
      </div>

      {/* Full-Screen Banner Section */}
      <div className="banner">
        <img
          src="/banner.png" // Replace with your image path
          alt="Full Width Banner"
          className="banner-image"
        />
      </div>
    </div>
  );
};

export default Home;
