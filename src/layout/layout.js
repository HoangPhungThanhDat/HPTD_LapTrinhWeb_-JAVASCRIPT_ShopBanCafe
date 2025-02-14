import React from "react";
import { Link, Outlet } from "react-router-dom";
import './layout.css';
const Layout = () => {
    return (
      <div>
        <nav>
          <ul>
            <li>
              <Link to="/">Home</Link>
            </li>
            <li>
              <Link to="/blogs">Blogs</Link>
            </li>
            <li>
              <Link to="/contact">Contact</Link>
            </li>
            <li>
              <Link to="/Login">Login</Link>
            </li>
          </ul>
        </nav>
  
        <Outlet />
      </div>
    )
  };
  
  export default Layout;