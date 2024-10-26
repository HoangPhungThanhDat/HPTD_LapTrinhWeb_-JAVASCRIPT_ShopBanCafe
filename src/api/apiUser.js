
import axiosInstance from "./axios";

const apiUser = {
    createUser: (data) => {
        return axiosInstance.post("/auth/local/register", data);
    },
    //đăng nhập
    loginUser: (data) => {
        return axiosInstance.post("/auth/local/", data);
    },
    // LẤY TẤT CẢ NGƯỜI DÙNG 
    getAll:()=>{
        return axiosInstance.get("/users").then((res)=>res.data);
    },
    //CHI TIẾT NGƯỜI DÙNG
    getUserById: (id) => {
        return axiosInstance.get(`/users/${id}`).then((res) => res.data);
    },
};

export default apiUser;
