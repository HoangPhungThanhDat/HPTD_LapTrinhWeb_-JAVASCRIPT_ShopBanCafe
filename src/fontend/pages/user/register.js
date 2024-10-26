import { useState } from "react";
import apiUser from './../../../api/apiUser';
import { useNavigate } from "react-router-dom";

function Register() {
    const [username, setUsername] = useState("");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [phone, setPhone] = useState("");
    const [address, setAddress] = useState("");

    const navigate = useNavigate();

    const handleSubmit = async (event) => {
        event.preventDefault(); // Ngăn chặn hành động mặc định của biểu mẫu

        try {
            const user = { username, address, email, password, phone };
            console.log('Sending user data:', user); // Debug log
            const response = await apiUser.createUser(user);
            console.log('Đăng ký thành công:', response.data);
            alert('Đăng ký thành công');
            navigate('/'); // Chuyển hướng sau khi đăng ký thành công
        } catch (error) {
            if (error.response) {
                // Lỗi từ phía server
                console.error('Lỗi từ server:', error.response.data);
                alert('Lỗi từ server: ' + error.response.data.message);
            } else {
                // Lỗi khác
                console.error('Lỗi khác:', error.message);
                alert('Lỗi: ' + error.message);
            }
        }
    }

    return (
        <div className="contact_section layout_padding">
            <div className="container">
                <div className="row">
                    <div className="col-sm-12">
                        <h1 className="contact_taital">Đăng Ký</h1>
                        <div className="bulit_icon"><img src="asset/images/bulit-icon.png" alt="icon"/></div>
                    </div>
                </div>
            </div>
            <div className="container-fluid">
                <form className="contact_section_2" onSubmit={handleSubmit}>
                    <div className="row">
                        <div className="col-md-12">
                            <div className="mail_section_1">
                                <input type="text" className="mail_text" placeholder="Tên Người Dùng" name="username" value={username} onChange={(e) => setUsername(e.target.value)} />
                                <input type="password" className="mail_text" placeholder="Mật Khẩu" name="password" value={password} onChange={(e) => setPassword(e.target.value)} />
                                <input type="text" className="mail_text" placeholder="Địa Chỉ" name="address" value={address} onChange={(e) => setAddress(e.target.value)} />
                                <input type="text" className="mail_text" placeholder="Email" name="email" value={email} onChange={(e) => setEmail(e.target.value)} />
                                <input type="text" className="mail_text" placeholder="Số Điện Thoại" name="phone" value={phone} onChange={(e) => setPhone(e.target.value)} />
                                <input type="submit" className="submit_button" value="Đăng Ký" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    );
}

export default Register;
