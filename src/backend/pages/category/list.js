
import { useEffect, useState } from "react";
import apiCategogy from "../../../api/apiCategory";
import { Link } from "react-router-dom";

function CategoryList() {
  const [categories, setCategories] = useState([]);
  const [delCategoryitem, setDelCategoryitem] = useState(false);

  useEffect(() => {
    apiCategogy.getAll().then((res) => {
      try {
        const categoryData = res.data.map((item) => {
          return {
            id: item.id,
            name: item.attributes.category_name,
            parent_id: item.attributes.parent_id,
            slug: item.attributes.slug,
          };
        });
        setCategories(categoryData);
      } catch (e) {
        console.log(e);
      }
    });
  }, [delCategoryitem]);

  const delCategory = (id) => {
    apiCategogy.delCategory(id).then((res) => {
      try {
        alert("Xóa thành công");
        setDelCategoryitem((prev) => !prev); // Toggle the state to trigger re-fetch
      } catch (e) {
        console.log(e);
      }
    });
  };

  return (
    <div>
      <h1>Danh Sách Danh Mục</h1>
      <table className="table table-striped table-bordered">
        <thead>
          <tr>
            <th>ID</th>
            <th>Danh Mục</th>
            <th>Danh Mục Cha</th>
            <th>Slug</th>
            <th>Hành Động</th>
          </tr>
        </thead>
        <tbody>
          {categories.map((item) => (
            <tr key={item.id}>
              <td>{item.id}</td>
              <td>{item.name}</td>
              <td>
                {categories.find((category) => category.id === item.parent_id)?.name || "N/A"}
              </td>
              <td>{item.slug}</td>
              <td>
                <Link className="btn btn-success" to={`/admin/editCategory/${item.id}`}>
                  Sửa
                </Link>
                <button className="btn btn-danger" onClick={() => delCategory(item.id)}>
                  Xóa
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      <button style={{ marginBottom: "30px" }}>
        <Link className="btn btn-primary" to="/admin/addCategory">
          Thêm Danh Mục
        </Link>
      </button>
    </div>
  );
}

export default CategoryList;
