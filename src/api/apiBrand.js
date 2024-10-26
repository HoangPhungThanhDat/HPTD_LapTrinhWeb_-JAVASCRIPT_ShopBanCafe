import axiosInstance from "./axios";
import axios from 'axios';
const apiBrand={
    getAll:()=>{
        return axiosInstance.get("/brands").then((res)=>res.data);

    },
    
    getAllBrands: () => {
        return axiosInstance.get('/brands').then((res) => res.data);
    },
    // thêm thương hiệu
    createBrand: async (brandData) => {
        try {
            const response = await axios.post('http://localhost:1337/api/brands', {
                data: brandData // Bao gói brandData trong đối tượng data
            });
            return response.data;
        } catch (error) {
            console.error('Error creating brand:', error.response ? error.response.data : error.message);
            throw new Error('Failed to create brand: ' + (error.response ? JSON.stringify(error.response.data) : error.message));
        }
    },

    getBrandById:(id)=>
    {
        return axiosInstance.get(`/brands/${id}`);
    },
    // sửa thương hiệu
    editBrand:(id, brand)=>{
        return axiosInstance.put(`/brands/${id}`,brand);
    }, 

    // xóa thương hiệu
    delBrand:(id)=>{
        return axiosInstance.delete(`/brands/${id}`);
    }, 

   
};
export default apiBrand;