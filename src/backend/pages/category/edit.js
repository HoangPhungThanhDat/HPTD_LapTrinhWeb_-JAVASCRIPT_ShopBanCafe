import { useParams, useNavigate } from "react-router-dom";
import apiCategory from "../../../api/apiCategory";
import React, { useState, useEffect } from "react";

function CategoryEdit() {
    const { id } = useParams();
    const [catName, setCatName] = useState("");
    const [parentID, setParentID] = useState("");
    const [slug, setSlug] = useState("");
    const [categories, setCategories] = useState([]);
    const [status, setStatus] = useState("0");
    const navigate = useNavigate();

    useEffect(() => {
        apiCategory.getCategoryById(id).then(res => {
            try {
                const categoryData = res.data.data.attributes;
                setCatName(categoryData.category_name);
                setParentID(categoryData.parent_id);
                setSlug(categoryData.slug);
                setStatus(categoryData.status);
            } catch (e) {
                console.log(e);
            }
        });
    }, [id]);

    useEffect(() => {
        apiCategory.getAll().then(res => {
            try {
                const categoryData = res.data.map((item) => {
                    return {
                        id: item.id,
                        name: item.attributes.category_name,
                        parent_id: item.attributes.parent_id,
                        slug: item.attributes.slug
                    };
                });
                setCategories(categoryData);
            } catch (e) {
                console.log(e);
            }
        });
    }, []);

    const handleSubmit = async (e) => {
        e.preventDefault();
        const category = {
            category_name: catName,
            parent_id: parentID === "0" ? null : parseInt(parentID),
            slug: slug,
            status: status
        };

        try {
            const response = await apiCategory.editCategory(id, { data: category });
            console.log("API response:", response);
            alert("Sửa thành công");
            //navigate("/admin/category");
        } catch (error) {
            console.log("Error updating category", error);
        }
    };

    return (


        <div className="container">
            <div className="form-container">
                <h2 className="text-center">Sủa Danh Mục</h2>
                <form onSubmit={handleSubmit}>
                    <div className="mb-3">
                        <label htmlFor="categoryName" className="form-label">Tên Danh Mục</label>
                        <input 
                            type="text" 
                            className="form-control" 
                            name="category_name" 
                            value={catName} 
                            onChange={(e) => setCatName(e.target.value)} 
                            required 
                        />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="parentCategory" className="form-label">Danh Mục Cha</label>
                        <select 
                            className="form-select" 
                            name="parent_id" 
                            value={parentID} 
                            onChange={(e) => setParentID(e.target.value)} 
                        >
                            <option value="0">Không có danh mục cha</option>
                            {categories.map((item, index) => (
                                <option key={index} value={item.id}>{item.name}</option>
                            ))}
                        </select>
                    </div>
                    <div className="mb-3">
                        <label htmlFor="categorySlug" className="form-label">Slug</label>
                        <input 
                            type="text" 
                            className="form-control" 
                            name="slug" 
                            value={slug} 
                            onChange={(e) => setSlug(e.target.value)} 
                            required 
                        />
                         <div className="mb-3">
                          <label htmlFor="status">Status</label>
                         <select 
                        type="text" 
                        className="form-control" 
                        name="status" 
                        value={status} 
                        onChange={(e) => setStatus(e.target.value)}
                    > 
                        <option value="0">Không Hiển Thị</option>
                        <option value="1">Hiển Thị</option> 
                    </select>
                </div>
                    </div>
                    <div className="d-grid">
                        <button type="submit" className="btn btn-primary">Sửa danh mục</button>
                    </div>
                </form>
            </div>
        </div>     
    );
}

export default CategoryEdit;

