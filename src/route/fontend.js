import Home from "../fontend/pages/home/home";
import About from "../fontend/pages/about/about";
import Contact from "../fontend/pages/contact/contact";
import Products from "../fontend/pages/product/products";



import NotFound from "../fontend/pages/notFound";
import ProductDetail from "../fontend/pages/product/productDetail";
import ProductsByCat from "../fontend/pages/product/productsByCat";
import Register from "../fontend/pages/user/register";
import LoginUser from "../fontend/pages/user/login";
import LogoutUser from "../fontend/pages/user/logout";
import Cart from "../fontend/pages/cart/cart";
import Checkout from "../fontend/pages/cart/checkout";

const FrontendRoute=[
    {'path':'/', 'component': Home},
    {'path':'/about', 'component': About},
    {'path':'/contact', 'component': Contact},
    {'path':'/products', 'component': Products},
    {'path':'/product-detail/:slug', 'component': ProductDetail},
    {'path':'/product-by-cat/:slug', 'component': ProductsByCat},
    {'path':'/register', 'component': Register},
    {'path':'/login', 'component': LoginUser},
    {'path':'/logout', 'component': LogoutUser},
    {'path':'/cart', 'component': Cart},
    {'path':'/checkout','component':Checkout},




    {'path':'*', 'component': NotFound},



];
export default FrontendRoute;