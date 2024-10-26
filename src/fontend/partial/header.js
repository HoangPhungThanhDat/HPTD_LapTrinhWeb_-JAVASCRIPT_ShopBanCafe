import { Link } from "react-router-dom";
import apiCategory from "../../api/apiCategory";
import { useContext, useEffect, useState } from "react";
import UserContext from "../context/userContext";
import { useSelector } from "react-redux";
function Header() {

    const getData=useSelector((state)=>state.cart.carts);//----------------------------------------------------


    const{user}=useContext(UserContext);
    if(user)
    {
        var username=user.username;


    }else{
        var username="";
    }


    const [subMenu, setSubMenu] = useState([]);

    useEffect(() => {
        apiCategory.getAll().then((res) => {
            try {
                const menuData = res.data.map((item) => ({
                    id: item.id,
                    name: item.attributes.category_name,
                    slug: item.attributes.slug,
                    parent: item.attributes.parent
                }));
                setSubMenu(menuData);
                console.log(menuData);
            } catch (error) {
                console.log(error);
            }
        });
    }, []);
    
    return (
        <div className="container-fluid">
            <nav className="navbar navbar-expand-lg navbar-light bg-light">
                <a className="navbar-brand" href="index.html">
                    <img src="asset/images/logo.png" alt="Logo" />
                </a>
                <button
                    className="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                >
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul className="navbar-nav ml-auto">
                        <li className="nav-item active">
                            <Link className="nav-link" to="/">Trang Chủ</Link>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link" to="/about">Giới Thiệu</Link>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link" to="/products">Coffees</Link>
                        </li>
                        <li className="nav-item dropdown">
                            <a
                                className="nav-link dropdown-toggle"
                                href="/shop"
                                id="navbarDropdown"
                                role="button"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false"
                            >
                                Shop
                            </a>
                            <div className="dropdown-menu" aria-labelledby="navbarDropdown">
                                {subMenu.map((submenu, index) => (
                                    submenu.parent === 0 ? (
                                        <li key={submenu.id}>
                                            <Link to={`product-by-cat/${submenu.slug}`}>
                                                {submenu.name}
                                            </Link>
                                            <ul>
                                                {subMenu.map((sub, subIndex) => (
                                                    sub.parent === submenu.id ? (
                                                        <li key={sub.id}>
                                                            <Link to={`product-by-cat/${sub.slug}`}>
                                                                {sub.name}
                                                            </Link>
                                                        </li>
                                                    ) : null
                                                ))}
                                            </ul>
                                        </li>
                                    ) : (
                                        <li key={submenu.id}>
                                            <Link to={`product-by-cat/${submenu.slug}`}>
                                                {submenu.name}
                                            </Link>
                                        </li>
                                    )
                                ))}
                            </div>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link" to="/blog">Blog</Link>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link" to="/contact">Liên Hệ</Link>
                        </li>
                        <li className="nav-item">
                            <Link className="nav-link" to="/register">Đăng ký</Link>
                        </li>           

                        {
                            user ?(
                                <Link className="nav-link" to="/logout">Logout</Link>

                            ):(
                                <Link className="nav-link" to="/login">Login</Link>

                            )
                          }           
                    </ul>
                    <form className="form-inline my-2 my-lg-0">
                        <div className="login_bt">
                            <ul>
                                <li>
                                    <a href="">
                                        <span className="user_icon">
                                            <i className="fa fa-user" aria-hidden="true"></i>
                                        </span>
                                        {username}
                                    </a>
                                </li>



                                                       
                                <li>
                                    
                                    <Link to="/cart" class=""  >
                                        <span className="user_icon">
                                                <i className="fas fa-shopping-cart">{getData.length}</i>
                                        </span>
                                        Cart
                                    </Link>
                                </li>
                                <li>
                                    <Link to="" class=""  >
                                        <span className="user_icon">
                                                <i className="fas fa-shopping-cart"></i>
                                        </span>
                                        Search
                                    </Link>
                                </li>
                            </ul>
                        </div>
                    </form>
                </div>
            </nav>
        </div>
    );
}

export default Header;



