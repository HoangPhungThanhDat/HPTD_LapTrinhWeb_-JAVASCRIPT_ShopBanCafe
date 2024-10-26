import axiosInstance from "./axios"

const apiCategogy={
    //lấy tất cả danh mục
    getAll:()=>{
        return axiosInstance.get("/categories").then((res)=>res.data);
    },
    //thêm danh mục
    createCategory:(category)=>{
        return axiosInstance.post("/categories",category).then((res)=>res.data);
    }, 
    //lấy 1 danh mục 
    getCategoryById:(id)=>
    {
        return axiosInstance.get(`/categories/${id}`);
    },
    //api sửa danh muc
    editCategory:(id, category)=>{
        return axiosInstance.put(`/categories/${id}`,category);
    }, 
    //xóa danh mục
    delCategory:(id)=>{
        return axiosInstance.delete(`/categories/${id}`);
    }, 
    
    

};
export default apiCategogy;