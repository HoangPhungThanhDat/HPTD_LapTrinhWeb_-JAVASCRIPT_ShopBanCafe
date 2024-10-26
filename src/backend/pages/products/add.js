
import { useEffect, useState } from "react";
import apiCategory from "../../../api/apiCategory"; // Ensure this import is correct
import apiBrand from "../../../api/apiBrand"; // Ensure this import is correct
import axiosInstance from "../../../api/axios"; // Ensure this import is correct
import apiProduct from "../../../api/apiProduct"; // Ensure this import is correct

function ProductAdd() {
    const [productName, setProductName] = useState('');
    const [slug, setSlug] = useState('');
    const [catId, setCatId] = useState('');
    const [price, setPrice] = useState('');
    const [description, setDescription] = useState('');
    const [isOnSale, setIsOnSale] = useState(false);
    const [salePrice, setSalePrice] = useState(0);
    const [image, setImage] = useState(null);
    const [brandId, setBrandId] = useState('');

    const [categories, setCategories] = useState([]);
    const [brands, setBrands] = useState([]);

    useEffect(() => {
        const fetchCategories = async () => {
            try {
                const res = await apiCategory.getAll();
                const categoryData = res.data.map((item) => ({
                    id: item.id,
                    name: item.attributes.category_name,
                
                }));
                setCategories(categoryData);
            } catch (e) {
                console.log(e);
            }
        };
        fetchCategories();
    }, []);

    useEffect(() => {
        const fetchBrands = async () => {
            try {
                const res = await apiBrand.getAll();
                console.log("Brands Response:", res); // Debugging line
                const brandData = res.data.map((item) => ({
                    id: item.id,
                    name: item.attributes.brand_name,
                }));
                setBrands(brandData);
            } catch (e) {
                console.log(e);
            }
        };
        fetchBrands();
    }, []);

    const handleSubmit = async (e) => {
        e.preventDefault();
        const productData = {
            product_name: productName,
            cat_id: catId,
            slug: slug,
            price: price,
            description: description,
            is_on_sale: isOnSale,
            sale_price: salePrice,
            image: [],
            brand_id: brandId,
        };

        let fileData = new FormData();
        fileData.append("files", image);

        try {
            axiosInstance.enableUploadFile();
            const res = await axiosInstance.post("/upload", fileData);
            const fileId = res.data[0].id; // Assuming the API returns an array
            productData.image.push(fileId);
            axiosInstance.enableJson();
            const responseProduct = await apiProduct.createProduct({ data: productData });
            console.log('Product created successfully:', responseProduct);
            alert("Thêm sản phẩm thành công ")
        } catch (err) {
            console.log(err);
            alert("Thêm sản phẩm thất bại ")

        }
    };

    return (
        <div className="container">
            <div className="form-container">
                <h2 className="text-center">Thêm Sản Phẩm</h2>
                <form onSubmit={handleSubmit}>
                    <div className="row">
                        <div className="mb-md-7">
                            <div className="mb-3 mt-3">
                                <label htmlFor="product_name" className="form-label">Tên Sản Phẩm</label>
                                <input type="text" className="form-control" id="product_name" placeholder="Nhập Tên Sản Phẩm" name="product_name" value={productName} onChange={(e) => setProductName(e.target.value)} />
                            </div>
                            <div className="mb-3 mt-3">
                                <label htmlFor="slug" className="form-label">Slug</label>
                                <input type="text" className="form-control" id="slug" placeholder="Nhập Slug" name="slug" value={slug} onChange={(e) => setSlug(e.target.value)} />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="parent_id">Danh Mục Cha</label>
                                <select className="form-select" name="parent_id" value={catId} onChange={(e) => setCatId(e.target.value)}>
                                    <option value="">Chọn danh mục</option>
                                    {categories.map((category, index) => (
                                        <option key={index} value={category.id}>{category.name}</option>
                                    ))}
                                </select>
                            </div>
                            <div className="mb-3">
                                <label htmlFor="price" className="form-label">Đơn Giá</label>
                                <input type="text" className="form-control" id="price" placeholder="Nhập Đơn giá" name="price" value={price} onChange={(e) => setPrice(e.target.value)} />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="description" className="form-label">Mô Tả Sản Phẩm</label>
                                <textarea className="form-control" id="description" placeholder="Nhập Mô Tả Sản Phẩm" name="description" value={description} onChange={(e) => setDescription(e.target.value)} />
                            </div>
                        </div>
                        <div className="col-md-5 mt-5">
                            <div className="mb-3">
                                <label htmlFor="is_on_sale" className="form-label" style={{ marginRight: "20px" }}>Giảm Giá</label>
                                <input type="checkbox" className="form-check-input" id="is_on_sale" name="is_on_sale" checked={isOnSale} onChange={(e) => setIsOnSale(e.target.checked)} />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="sale_price" className="form-label">Giá Khuyến Mãi</label>
                                <input type="text" className="form-control" id="sale_price" placeholder="Nhập Giá Khuyến Mãi" name="sale_price" value={salePrice} onChange={(e) => setSalePrice(e.target.value)} />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="image" className="form-label">Hình Ảnh</label>
                                <input type="file" className="form-control" id="image" name="image" onChange={(e) => setImage(e.target.files[0])} />
                            </div>
                            <div className="mb-3">
                                <label htmlFor="brand_id" className="form-label">Nhà Cung Cấp</label>
                                <select className="form-select" name="brand_id" value={brandId} onChange={(e) => setBrandId(e.target.value)}>
                                    <option value="">Chọn nhà cung cấp</option>
                                    {brands.map((brand, index) => (
                                        <option key={index} value={brand.id}>{brand.name}</option>
                                    ))}
                                </select>
                            </div>
                            <div className="d-grid">
                                <button type="submit" className="btn btn-primary">Thêm sản phẩm</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default ProductAdd;



