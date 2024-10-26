import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import apiBrand from '../../../api/apiBrand';

function BrandEdit() {
    const { id } = useParams();
    const [brandName, setBrandName] = useState('');
    const [slug, setSlug] = useState('');
    const [address, setAddress] = useState('');
    const [error, setError] = useState(null);
    const navigate = useNavigate();

    useEffect(() => {
        apiBrand.getBrandById(id)
            .then(res => {
                const brandData = res.data;
                setBrandName(brandData.brand_name);
                setSlug(brandData.slug);
                setAddress(brandData.address);
            })
            .catch(error => {
                console.error("There was an error fetching the brand!", error);
                setError("Không thể lấy dữ liệu thương hiệu");
            });
    }, [id]);

    const handleSubmit = async (e) => {
        e.preventDefault();

        // Kiểm tra dữ liệu trước khi gửi yêu cầu
        if (!brandName || !slug || !address) {
            alert("Vui lòng điền đầy đủ thông tin thương hiệu.");
            return;
        }

        const brand = {
            brand_name: brandName,
            slug: slug,
            address: address,
        };

        try {
            const response = await apiBrand.editBrand(id, brand);
            console.log('API response:', response);
            alert('Sửa thành công');
            navigate('/admin/brands');
        } catch (error) {
            console.error('Error updating brand:', error);
            setError("Đã xảy ra lỗi khi cập nhật thông tin thương hiệu");
        }
    };

    return (
        <div className="container">
            <div className="form-container">
                <h2 className="text-center">Sửa Thương Hiệu</h2>
                {error && <div className="alert alert-danger">{error}</div>}
                <form onSubmit={handleSubmit}>
                    <div className="mb-3">
                        <label htmlFor="brand_name" className="form-label">Tên Thương Hiệu</label>
                        <input
                            type="text"
                            className="form-control"
                            id="brand_name"
                            value={brandName}
                            onChange={(e) => setBrandName(e.target.value)}
                            required
                        />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="slug" className="form-label">Slug</label>
                        <input
                            type="text"
                            className="form-control"
                            id="slug"
                            value={slug}
                            onChange={(e) => setSlug(e.target.value)}
                            required
                        />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="address" className="form-label">Địa Chỉ</label>
                        <input
                            type="text"
                            className="form-control"
                            id="address"
                            value={address}
                            onChange={(e) => setAddress(e.target.value)}
                            required
                        />
                    </div>
                    <div className="d-grid">
                        <button type="submit" className="btn btn-primary">Sửa Thương Hiệu</button>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default BrandEdit;
