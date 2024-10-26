

import React, { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import apiProduct from "../../../api/apiProduct";
import { imageURL } from "../../../api/config";
import { FaRegFaceRollingEyes } from "react-icons/fa6";
import { FaRegEdit } from "react-icons/fa";
import { MdDelete } from "react-icons/md";

function ProductList() {
    const [products, setProducts] = useState([]);
    const [updateTrigger, setUpdateTrigger] = useState(false);
    const [pages, setPages] = useState(1);
    const { page } = useParams();
    const currentPage = parseInt(page) || 1; // Đảm bảo rằng page là một số hợp lệ
    const limit = 5;

    useEffect(() => {
        apiProduct.getProductPagination(currentPage, limit).then((res) => {
            try {
                const numberOfPages = Math.ceil(res.meta.pagination.total / res.meta.pagination.pageSize);
                setPages(numberOfPages);
                const productsData = res.data.map((item) => {
                    const attributes = item.attributes || {}; // Kiểm tra attributes
                    const category = attributes.category?.data?.attributes || {};
                    const image = attributes.image?.data?.attributes || {};
                    return {
                        id: item.id,
                        product_name: attributes.product_name || "N/A",
                        slug: attributes.slug || "N/A",
                        cat_name: category.category_name || "N/A",
                        description: attributes.description || "N/A",
                        is_on_sale: attributes.is_on_sale || false,
                        price: attributes.price || 0,
                        sale_price: attributes.sale_price || 0,
                        image: image.url || "",
                    };
                });
                setProducts(productsData);
                console.log("Product list:", productsData);
            } catch (error) {
                console.log("Failed to fetch product list:", error);
            }
        }).catch(error => {
            console.log("API call failed:", error);
        });
    }, [currentPage, updateTrigger]);

    const delProduct = (id) => {
        apiProduct.delProductById(id).then((res) => {
            try {
                console.log(res);
                alert("Xóa sản phẩm thành công");
                setUpdateTrigger(prev => !prev); // Kích hoạt lại việc tải danh sách sản phẩm
            } catch (e) {
                console.log("Failed to delete product:", e);
            }
        });
    };

    return (
        <div>
            <h1>Product List</h1>
            <table className="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Hình Ảnh</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Danh Mục</th>
                        <th>Đơn Giá</th>
                        <th>Hành Động</th>
                    </tr>
                </thead>
                <tbody>
                    {products.map((product) => (
                        <tr key={product.id}>
                            <td>{product.id}</td>
                            <td><img src={imageURL + product.image} alt={product.product_name} style={{ width: "100px" }} /></td>
                            <td>{product.product_name}</td>
                            <td>{product.cat_name}</td>
                            <td>{product.price}</td>
                            <td>
                                <Link to={`/products/${product.slug}`}><button className="btn btn-primary"><FaRegFaceRollingEyes /></button></Link>
                                <Link to={`/admin/editproduct/${product.slug}`}><button className="btn btn-primary"><FaRegEdit /></button></Link>
                                <button onClick={() => delProduct(product.id)} className="btn btn-primary"><MdDelete /></button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>

            <ul className="pagination">
                <li className="page-item">
                    <Link className="page-link" to={`/admin/products/${currentPage - 1}`}>Previous</Link>
                </li>
                {Array.from(Array(pages).keys()).map((index) => (
                    <li key={index} className={`page-item ${index + 1 === currentPage ? "active" : ""}`}>
                        <Link className="page-link" to={`/admin/products/${index + 1}`}>{index + 1}</Link>
                    </li>
                ))}
                <li className="page-item">
                    <Link className="page-link" to={`/admin/products/${currentPage + 1}`}>Next</Link>
                </li>
            </ul>
        </div>
    );
}

export default ProductList;