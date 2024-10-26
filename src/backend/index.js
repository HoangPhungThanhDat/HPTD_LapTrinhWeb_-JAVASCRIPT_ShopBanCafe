import { Link, Outlet } from "react-router-dom";
function  IndexAdmin()
{
    return(
     <div>
        <div className="p-5 bg-primary text-white text-center">
                <h1>Quản Lý</h1>
                <p>Chào mừng bạn đến với trang Admin Dashboard ! </p>
            </div>

            <nav className="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
                <div className="container-fluid">
                    <a className="navbar-brand" href="#">Admin Dashboard</a>
                    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarNav">
                        <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                            <li className="nav-item">
                                <Link className= "nav-link active" to= "/admin">Trang chủ</Link>
                            </li>
                            <li className="nav-item dropdown">
                                <a className="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Danh sách quản lý</a>
                                <ul className="dropdown-menu">
                                <li><Link className="dropdown-item" to ="/admin/category">Danh mục</Link></li>
                                <li><Link className="dropdown-item" to ="/admin/products/1">Sản phẩm</Link></li>
                                <li><Link className="dropdown-item" to ="/admin/addproduct">Thêm sản phẩm </Link></li>
                                <li><Link className="dropdown-item" to ="/admin/user">Người dùng </Link></li>
                                <li><Link className="dropdown-item" to ="#">Đơn hàng </Link></li>
                                <li><Link className="dropdown-item" to ="/admin/brand">Nhà cung cấp </Link></li>
                                </ul>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#">Link</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                        <form className="d-flex">
                            <input className="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                            <button className="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
            
            <div className="container-fluid">
                <div className="row">
                    <nav id="sidebarMenu" className="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                        <div className="position-sticky pt-3">
                            <ul className="nav flex-column">
                                <li className="nav-item">
                                    <a className="nav-link active" aria-current="page" href="#">
                                        <span data-feather="home"></span>
                                        Dashboard
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link" href="#">
                                        <span data-feather="file"></span>
                                        Orders
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link" href="#">
                                        <span data-feather="shopping-cart"></span>
                                        Products
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link" href="#">
                                        <span data-feather="users"></span>
                                        Customers
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link" href="#">
                                        <span data-feather="bar-chart-2"></span>
                                        Reports
                                    </a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link" href="#">
                                        <span data-feather="layers"></span>
                                        Integrations
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
            
                    <main className="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                        <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                            <h1 className="h2">Dashboard</h1>
                            <div className="btn-toolbar mb-2 mb-md-0">
                                <div className="btn-group me-2">
                                    <button type="button" className="btn btn-sm btn-outline-secondary">Share</button>
                                    <button type="button" className="btn btn-sm btn-outline-secondary">Export</button>
                                </div>
                                <button type="button" className="btn btn-sm btn-outline-secondary dropdown-toggle">
                                    <span data-feather="calendar"></span>
                                    This week
                                </button>
                            </div>
                        </div>
            
                        <div className="row">
                            <div className="col-md-4">
                                <div className="card mb-4 shadow-sm">
                                    <div className="card-header">
                                        <h5 className="my-0">Card 1</h5>
                                    </div>
                                    <div className="card-body">
                                        <h6 className="card-title">Card Title</h6>
                                        <p className="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" className="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>
                            <div className="col-md-4">
                                <div className="card mb-4 shadow-sm">
                                    <div className="card-header">
                                        <h5 className="my-0">Card 2</h5>
                                    </div>
                                    <div className="card-body">
                                        <h6 className="card-title">Card Title</h6>
                                        <p className="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" className="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>
                            <div className="col-md-4">
                                <div className="card mb-4 shadow-sm">
                                    <div className="card-header">
                                        <h5 className="my-0">Card 3</h5>
                                    </div>
                                    <div className="card-body">
                                        <h6 className="card-title">Card Title</h6>
                                        <p className="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" className="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <Outlet/>
                    
                        <h2>Section title</h2>
                        <div className="table-responsive">
                            <table className="table table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Header</th>
                                        <th>Header</th>
                                        <th>Header</th>
                                        <th>Header</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1,001</td>
                                        <td>Lorem</td>
                                        <td>ipsum</td>
                                        <td>dolor</td>
                                        <td>sit</td>
                                    </tr>
                                    <tr>
                                        <td>1,002</td>
                                        <td>amet</td>
                                        <td>consectetur</td>
                                        <td>adipiscing</td>
                                        <td>elit</td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>Integer</td>
                                        <td>nec</td>
                                        <td>odio</td>
                                        <td>Praesent</td>
                                    </tr>
                                    <tr>
                                        <td>1,004</td>
                                        <td>libero</td>
                                        <td>Sed</td>
                                        <td>cursus</td>
                                        <td>ante</td>
                                    </tr>
                                    <tr>
                                        <td>1,005</td>
                                        <td>dapibus</td>
                                        <td>diam</td>
                                        <td>Sed</td>
                                        <td>nisi</td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </main>
                </div>
            </div>

            <div className="mt-5 p-4 bg-dark text-white text-center">

                <p>Footer</p>
            </div>





            {/* <div classNameName="p-5 bg-primary text-white text-center">
            <h1>Quản Lý</h1>
            <p>Resize this responsive page to see the effect!</p> 
            </div>

            <nav classNameName="navbar navbar-expand-sm bg-dark navbar-dark">
            <div classNameName="container-fluid">
                <ul classNameName="navbar-nav">
                <li classNameName="nav-item">
                    <Link classNameName= "nav-link active" to= "/admin">Trang chủ</Link>
                </li>
                <li className="nav-item dropdown">
                    <a className="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"> Danh sách quản lý</a>
                    <ul className="dropdown-menu">
                        <li><Link className="dropdown-item" to ="/admin/category">Danh mục</Link></li>
                        <li><Link className="dropdown-item" to ="#">Sản phẩm</Link></li>
                        <li><Link className="dropdown-item" to ="#">Người dùng </Link></li>
                        <li><Link className="dropdown-item" to ="#">Đơn hàng </Link></li>
                        <li><Link className="dropdown-item" to ="#">Nhãn hàng </Link></li>

                    </ul>
                </li>
                <li classNameName="nav-item">
                    <a classNameName="nav-link" href="#">Link</a>
                </li>
                <li classNameName="nav-item">
                    <a classNameName="nav-link disabled" href="#">Disabled</a>
                </li>
                </ul>
            </div>
            </nav>

            <div classNameName="container mt-5">
            <div classNameName="row">
                   <Outlet/>
            
            </div>
            </div>

            <div classNameName="mt-5 p-4 bg-dark text-white text-center">






                


            <p>Footer</p>
            </div>


 */}


     </div>
    )
}
export default IndexAdmin;