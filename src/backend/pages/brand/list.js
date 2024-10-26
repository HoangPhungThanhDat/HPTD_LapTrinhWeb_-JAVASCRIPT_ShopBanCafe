
import React, { useEffect, useState } from "react";
import apiBrand from "../../../api/apiBrand";
import { Link } from "react-router-dom";
import { FaRegEdit, FaRegTrashAlt } from "react-icons/fa";

function BrandList() {
    const [brands, setBrands] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const [deleteSuccess, setDeleteSuccess] = useState(false); // State để kiểm soát thông báo xóa thành công

    useEffect(() => {
        fetchBrands();
    }, []); // Sử dụng để tải danh sách thương hiệu khi component được tải lần đầu

    const fetchBrands = () => {
        apiBrand.getAllBrands()
            .then((res) => {
                if (res.data && Array.isArray(res.data)) {
                    const brandData = res.data.map((brand) => ({
                        id: brand.id,
                        brand_name: brand.attributes.brand_name || "N/A",
                        slug: brand.attributes.slug || "N/A",
                        address: brand.attributes.address || "N/A",
                    }));
                    setBrands(brandData);
                    setLoading(false);
                } else {
                    setError("Dữ liệu từ API không hợp lệ");
                    setLoading(false);
                }
            })
            .catch((error) => {
                console.error("Lỗi khi lấy dữ liệu:", error);
                setError("Đã xảy ra lỗi khi lấy dữ liệu");
                setLoading(false);
            });
    };
// xóa thương hiệu
    const delBrand = (id) => {
        apiBrand.delBrand(id)
            .then(() => {
                setDeleteSuccess(true); // Hiển thị thông báo xóa thành công
                fetchBrands(); // Tải lại danh sách thương hiệu sau khi xóa
            })
            .catch((error) => {
                console.error("Lỗi khi xóa thương hiệu:", error);
                setError("Đã xảy ra lỗi khi xóa thương hiệu");
            });
    };

    if (loading) {
        return <div>Loading...</div>;
    }

    if (error) {
        return <div>{error}</div>;
    }

    return (
        <div>
            <h1>Danh Sách Thương Hiệu</h1>
            {deleteSuccess && <div className="alert alert-success">Đã xóa thành công</div>}
            <table className="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên Thương Hiệu</th>
                        <th>SLUG</th>
                        <th>ĐỊA CHỈ</th>
                        <th>Hành Động</th>
                    </tr>
                </thead>
                <tbody>
                    {brands.map((brand) => (
                        <tr key={brand.id}>
                            <td>{brand.id}</td>
                            <td>{brand.brand_name}</td>
                            <td>{brand.slug}</td>
                            <td>{brand.address}</td>
                            <td>
                                <Link className="btn btn-success" to={`/admin/editbrand/${brand.id}`}>
                                    <FaRegEdit /> Sửa
                                </Link>
                                <button className="btn btn-danger" onClick={() => delBrand(brand.id)}>
                                    <FaRegTrashAlt /> Xóa
                                </button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
            <button style={{ marginBottom: "30px" }}>
                <Link className="btn btn-primary" to="/admin/addbrand">
                    Thêm Thương Hiệu
                </Link>
            </button>
        </div>
    );
}

export default BrandList;
