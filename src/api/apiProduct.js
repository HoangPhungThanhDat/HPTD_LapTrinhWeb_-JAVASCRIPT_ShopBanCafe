// import axiosInstance from "./axios";


// export default apiProduct;

import axiosInstance from "./axios";
import axios from 'axios';

const apiProduct = {
    // Lấy tất cả sản phẩm
    getAll: () => {
        return axiosInstance.get("/products?populate=*").then((res) => res.data);
    },
    // Lấy 5 sản phẩm mới nhất
    getNewest: () => {
        return axiosInstance.get("/products?sort[0]=createdAt:desc&pagination[limit]=8&populate=*").then((res) => res.data);
    },
    // Lấy 6 sản phẩm khuyến mãi
    getPromotion: () => {
        return axiosInstance.get("/products?filters[is_on_sale][$eq]=true&pagination[limit]=6&populate=*").then((res) => res.data);
    },
    // Lấy chi tiết sản phẩm theo slug
    getDetailProductBySlug: (slug) => {
        return axiosInstance.get(`/products?filters[slug][$eq]=${slug}&populate=*`).then((res) => res.data);
    },
    // Lấy danh sách sản phẩm theo danh mục
    getProductByCatSlug:(slug)=>
    { 
        return axiosInstance.get(`products?filters[category][slug][$eq]=${slug}&populate=*`).then((res)=>res.data);

    },
    //lấy sản phẩm phân trang 
    getProductPagination: (page, limit)=>{
        return axiosInstance.get(`/products?pagination[page]=${page}&pagination[pageSize]=${limit}&populate=*`).then((res)=> res.data);
    },


    //BACKEND
    //them san pham
    createProduct: (data) => {
       
        return axiosInstance.post('/products', data).then((res) => res.data);
    },
    //sua san pham
    updateProduct:(id,data)=>{
        return axiosInstance.put(`/products/${id}`,data);
    },
    //xoa san pham
    delProductById: (id) => {
        return axiosInstance.delete(`/products/${id}`);
    },   
    
};

export default apiProduct;

