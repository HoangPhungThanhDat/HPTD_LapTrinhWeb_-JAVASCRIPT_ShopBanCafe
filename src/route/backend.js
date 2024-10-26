
import IndexAdmin from "../backend";
import BrandAdd from "../backend/pages/brand/add";
import BrandEdit from "../backend/pages/brand/edit";
import BrandList from "../backend/pages/brand/list";
import CategoryAdd from "../backend/pages/category/add";
import CategoryEdit from "../backend/pages/category/edit";
import CategoryList from "../backend/pages/category/list";
import ProductAdd from "../backend/pages/products/add";
import ProductEdit from "../backend/pages/products/edit";
import ProductList from "../backend/pages/products/list";
import UserList from "../backend/pages/user/list";



const BackendRoute = [
    {'path':'/admin/category', 'component': CategoryList},
    {'path':'/admin/addCategory', 'component': CategoryAdd},
    {'path':'/admin/editCategory/:id', 'component': CategoryEdit},
    {'path':'/admin/products/:page', 'component': ProductList},
    {'path':'/admin/addproduct', 'component': ProductAdd},
    {'path':'/admin/editProduct/:slug', 'component': ProductEdit},
    {'path':'/admin/user', 'component': UserList},
    {'path':'/admin/brand', 'component': BrandList},
    {'path':'/admin/addbrand', 'component': BrandAdd},
    {'path':'/admin/editbrand', 'component': BrandEdit},



];
export default BackendRoute;