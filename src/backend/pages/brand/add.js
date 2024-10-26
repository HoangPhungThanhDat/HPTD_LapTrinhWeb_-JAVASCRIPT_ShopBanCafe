

// import React, { useState } from 'react';
// import apiBrand from '../../../api/apiBrand'; // Đảm bảo import đúng

// function BrandAdd() {
//     const [brandName, setBrandName] = useState('');
//     const [slug, setSlug] = useState('');
//     const [address, setAddress] = useState('');

//     const handleSubmit = async (e) => {
//         e.preventDefault();
        
//         const brandData = {
//             brand_name: brandName,
//             slug: slug,
//             address: address,
//         };

//         try {
//             const response = await apiBrand.createBrand(brandData);
//             console.log('Brand created successfully:', response);
//             alert('Thêm brand thành công');
//             // Reset form fields or handle success state as needed
//         } catch (error) {
//             console.error('Failed to create brand:', error);
//             alert('Thêm brand thất bại');
//             // Handle error state or feedback to user
//         }
//     };

//     return (
//         <div className="container">
//             <div className="form-container">
//                 <h2 className="text-center">Thêm Thương Hiệu</h2>
//                 <form onSubmit={handleSubmit}>
//                     <div className="mb-3">
//                         <label htmlFor="brand_name" className="form-label">Tên Thương Hiệu</label>
//                         <input type="text" className="form-control" id="brand_name" placeholder="Nhập Tên Thương Hiệu" value={brandName} onChange={(e) => setBrandName(e.target.value)} />
//                     </div>
//                     <div className="mb-3">
//                         <label htmlFor="slug" className="form-label">Slug</label>
//                         <input type="text" className="form-control" id="slug" placeholder="Nhập Slug" value={slug} onChange={(e) => setSlug(e.target.value)} />
//                     </div>
//                     <div className="mb-3">
//                         <label htmlFor="address" className="form-label">Địa Chỉ</label>
//                         <input type="text" className="form-control" id="address" placeholder="Nhập Địa Chỉ" value={address} onChange={(e) => setAddress(e.target.value)} />
//                     </div>
//                     <div className="d-grid">
//                         <button type="submit" className="btn btn-primary">Thêm Thương Hiệu</button>
//                     </div>
//                 </form>
//             </div>
//         </div>
//     );
// }

// export default BrandAdd;






import React, { useState } from 'react';
import apiBrand from '../../../api/apiBrand'; // Đảm bảo import đúng

function BrandAdd() {
    const [brandName, setBrandName] = useState('');
    const [slug, setSlug] = useState('');
    const [address, setAddress] = useState('');
    const [isLoading, setIsLoading] = useState(false);
    const [error, setError] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (!brandName || !slug || !address) {
            setError('Vui lòng điền đầy đủ thông tin');
            return;
        }

        const brandData = {
            brand_name: brandName,
            slug: slug,
            address: address,
        };

        console.log('Sending brand data:', brandData);

        setIsLoading(true);
        setError('');

        try {
            const response = await apiBrand.createBrand(brandData);
            console.log('Brand created successfully:', response);
            alert('Thêm brand thành công');
            // Reset form fields or handle success state as needed
            setBrandName('');
            setSlug('');
            setAddress('');
        } catch (error) {
            console.error('Failed to create brand:', error.message);
            alert('Thêm brand thất bại');
            setError('Không thể thêm thương hiệu. Vui lòng thử lại.');
        } finally {
            setIsLoading(false);
        }
    };

    return (
        <div className="container">
            <div className="form-container">
                <h2 className="text-center">Thêm Thương Hiệu</h2>
                <form onSubmit={handleSubmit}>
                    {error && <div className="alert alert-danger">{error}</div>}
                    <div className="mb-3">
                        <label htmlFor="brand_name" className="form-label">Tên Thương Hiệu</label>
                        <input
                            type="text"
                            className="form-control"
                            id="brand_name"
                            placeholder="Nhập Tên Thương Hiệu"
                            value={brandName}
                            onChange={(e) => setBrandName(e.target.value)}
                        />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="slug" className="form-label">Slug</label>
                        <input
                            type="text"
                            className="form-control"
                            id="slug"
                            placeholder="Nhập Slug"
                            value={slug}
                            onChange={(e) => setSlug(e.target.value)}
                        />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="address" className="form-label">Địa Chỉ</label>
                        <input
                            type="text"
                            className="form-control"
                            id="address"
                            placeholder="Nhập Địa Chỉ"
                            value={address}
                            onChange={(e) => setAddress(e.target.value)}
                        />
                    </div>
                    <div className="d-grid">
                        <button type="submit" className="btn btn-primary" disabled={isLoading}>
                            {isLoading ? 'Đang Thêm...' : 'Thêm Thương Hiệu'}
                        </button>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default BrandAdd;
