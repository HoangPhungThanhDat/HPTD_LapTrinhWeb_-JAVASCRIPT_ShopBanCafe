import React ,{useContext, useState} from "react";
import apiUser from "../../../api/apiUser";
import UserContext from "../../context/userContext";
import { useNavigate } from "react-router-dom";
function LoginUser()
{
    const [email,setEmail]=useState("");
    const[password,setPassword]=useState("");
    const {setUser}=useContext(UserContext);
    const navigate=useNavigate();
     const handleSubmit = async (e) => {
        e.preventDefault();
        const data={
            identifier:email,
            password:password,
        };
        try{
            const response=await apiUser.loginUser(data);
            console.log(response);
            var user=response.data.user;
            setUser(user);
            navigate("/");

        }catch(error)
        {
            console.error(error);

        }
     };
    return(
   <div className="contact_section layout_padding">
            <div className="container">
                <div className="row">
                    <div className="col-sm-12" >
                    <h1 className="contact_taital">Đăng Nhập</h1>
                    <div className="bulit_icon"><img src="asset/images/bulit-icon.png" alt="icon"/></div>
                    </div>
                </div>
            </div>
            <div className="container-fluid">
                <form className="contact_section_2"  onSubmit={handleSubmit} >
                    <div className="row">
                        <div className="col-md-12">
                            <div className="mail_section_1">
                                 <input type="text" className="mail_text" placeholder="Email" name="email" onChange={(e)=>setEmail(e.target.value)} />
                                <input type="password" className="mail_text" placeholder="Mật Khẩu" name="password" onChange={(e)=>setPassword(e.target.value)} />
                                <input type="submit" className="submit_button" value="Đăng Nhập " />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    )
}
export default LoginUser;