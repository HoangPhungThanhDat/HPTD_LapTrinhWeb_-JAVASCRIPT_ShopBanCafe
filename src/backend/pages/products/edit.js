import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import apiCategory from "../../../api/apiCategory";
import apiBrand from "../../../api/apiBrand";
import apiProduct from "../../../api/apiProduct";
import axiosInstance from "../../../api/axios";

function ProductEdit() {
    const { slug } = useParams();
    const [productName, setProductName] = useState("");
    const [slugProduct, setSlugProduct] = useState("");
    const [catId, setCatId] = useState("");
    const [price, setPrice] = useState("");
    const [description, setDescription] = useState("");
    const [isOnSale, setIsOnSale] = useState(false);
    const [salePrice, setSalePrice] = useState(0);
    const [image, setImage] = useState(null);
    const [brandId, setBrandId] = useState("");
    const [imageId, setImageId] = useState(0);

    const [categories, setCategories] = useState([]);
    const [brands, setBrands] = useState([]);
    const [productId, setProductId] = useState(0);
    const navigate = useNavigate();

    useEffect(() => {
        apiProduct.getDetailProductBySlug(slug).then((res) => {
            try {
                console.log("Product Detail:", res);

                const productAttributes = res.data[0].attributes;
                setProductId(res.data[0].id);
                setProductName(productAttributes.product_name);
                setPrice(productAttributes.price);
                setSlugProduct(productAttributes.slug);
                setCatId(productAttributes.cat_id);
                setImage(productAttributes.image?.attributes.url); 
                setSalePrice(productAttributes.sale_price);
                setDescription(productAttributes.description);
                setIsOnSale(productAttributes.is_on_sale);
                setBrandId(productAttributes.brand_id);
                setImageId(productAttributes.image?.data.id); 
            } catch (err) {
                console.log("Error", err.message);
            }
        });
    }, [slug]);

    useEffect(() => {
        apiCategory.getAll().then((res) => {
            try {
                const categoryData = res.data.map((item) => ({
                    id: item.id,
                    name: item.attributes.category_name,
                }));

                setCategories(categoryData);
            } catch (e) {
                console.log(e);
            }
        });
    }, []);

    useEffect(() => {
        apiBrand.getAll().then((res) => {
            try {
                const brandData = res.data.map((item) => ({
                    id: item.id,
                    name: item.attributes.brand_name,
                }));

                setBrands(brandData);
            } catch (e) {
                console.log(e);
            }
        });
    }, []);

    const handleSubmit = async (e) => {
        e.preventDefault();
        
        try {
            let imageData = null;
if (image instanceof File) {
                const formData = new FormData();
                formData.append("files", image);

                axiosInstance.enableUploadFile();
                const res = await axiosInstance.post("/upload", formData);
                imageData = res.data[0].id;
            } else if (image instanceof String || typeof image === 'string') {
                imageData = imageId;
            }
            
            const productData = {
                id: productId,
                product_name: productName,
                cat_id: catId,
                slug: slugProduct,
                price: price,
                description: description,
                is_on_sale: isOnSale,
                sale_price: salePrice,
                image: imageData,
                brand_id: brandId,
            };

            axiosInstance.enableJson();
            const responseProduct = await apiProduct.updateProduct(productId, { data: productData });
            console.log("Response Product:", responseProduct);
            navigate("/admin/products/1");
        } catch (error) {
            console.error("Error updating product:", error);
        }
    };

    return (
        <div className="container">
            <div className="form-container">
                <h2 className="text-center">Sửa Sản Phẩm</h2>
                <form onSubmit={handleSubmit}>
                    <div className="row">
                        <div className="col-md-7">
                            <div className="mb-3 mt-3">
                                <label htmlFor="product_name" className="form-label">Tên Sản Phẩm</label>
                                <input type="text" className="form-control" id="product_name" placeholder="Nhập Tên Sản Phẩm" name="product_name" value={productName} onChange={(e) => setProductName(e.target.value)} />
                            </div>
                            <div className="mb-3 mt-3">
                                <label htmlFor="slug" className="form-label">Slug</label>
                                <input type="text" className="form-control" id="slug" placeholder="Nhập Slug" name="slug" value={slugProduct} onChange={(e) => setSlugProduct(e.target.value)} />
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
                                <button type="submit" className="btn btn-primary">Lưu Sản Phẩm</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    );
}
export default ProductEdit;