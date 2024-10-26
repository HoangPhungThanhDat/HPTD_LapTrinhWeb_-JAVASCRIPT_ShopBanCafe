import React, { useContext, useState,useEffect } from "react";
import UserContext from "../../context/userContext";
import { Link } from "react-router-dom";
import { useSelector } from "react-redux";
import axios from "axios";

function Checkout()
{
    const {user}=useContext(UserContext);
    const getDataCart=useSelector((state)=>state.cart.carts);
    const totalAmount=useSelector((state)=>state.cart.totalAmount);
    
    const [paymentSuccess,setPaymentSuccess]=useState(false);


    const handlePayment = async(event) => {
        event.preventDefault();
        
        try {
            // Tạo đơn hàng từ thông tin giỏ hàng và người dùng
            const order = {
                user: user,
                cartItems: getDataCart,
                totalAmount: totalAmount,
                note: event.target.note.value // Lấy ghi chú từ form
            };

            // Gửi yêu cầu thanh toán đến API hoặc server của bạn
            const response = await axios.post("/api/payment", order);

            // Xử lý kết quả từ server
            if (response.data.success) {
                setPaymentSuccess(true); // Đặt trạng thái thành công để hiển thị thông báo
            } else {
                alert("Đã xảy ra lỗi khi thanh toán. Vui lòng thử lại sau."); // Xử lý lỗi nếu cần thiết
            }
        } catch (error) {
            console.error("Lỗi khi gửi yêu cầu thanh toán:", error);
            alert("Đã xảy ra lỗi khi gửi yêu cầu thanh toán. Vui lòng thử lại sau.");
        }

       
        // setPaymentSuccess(true);
    };
    useEffect(() => {
        if (paymentSuccess) {
            setTimeout(() => {
                setPaymentSuccess(false);
            }, 3000); // Ẩn thông báo sau 3 giây
        }
    }, [paymentSuccess]);



    return(
        user ?
        <div className="row px-5 products">
            <h1 className="coffee_taital">Thanh Toán</h1>
            <div className="col-md-6">
                
        <form action="" onSubmit={handlePayment}>
        <h2>Thông Tin Khách Hàng:</h2>
        <label for="fullname">Họ và tên:</label>
        <input type="text" id="fullname" name="fullname" value={user.username} />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"  value={user.email} />

        <label for="phone">Điện thoại:</label>
        <input type="tel" id="phone" name="phone" value={user.phone} />

        <label for="address">Địa chỉ:</label>
        <input type="text" id="address" name="address"  value={user.address} />


        <label for="note">Ghi chú:</label>
        <input type="text" id="note" name="note" />
        <input type="submit" value="Thanh toán"/>
    </form>
            </div>

            <div className="col-md-6"> 

                <h2>Thông Tin Giỏ Hàng:</h2>
                <table className="table table-bordered">
<tr>
                        <th>Tên Sản Phẩm</th>
                        <th>Đơn Giá</th>
                        <th>Thanh Toán</th>
                        <th>Thành Tiền</th>
                    </tr>
                    {
                        getDataCart.map((e)=>{
                            return(
                                <tr>
                                    <td>{e.name}</td>
                                    <td>{e.price}</td>
                                    <td>{e.quantity}</td>
                                    <td>{e.price*e.quantity}</td>
                                </tr>
                            )
                        })
                    }
                    <tr><th colSpan={3}>Tổng Tiền</th>{totalAmount}<th></th></tr>
                    

                </table>
            </div>
            {paymentSuccess && (
                <div className="alert alert-success mt-3" role="alert">
                    Thanh toán thành công! Đơn hàng của bạn đang được xử lý.
                </div>
            )}

        </div>:
        

        <div className="cart ">
            <h1 className="coffee_taital">Bạn Cần Đăng Nhập Để Thanh Toán</h1>
            <button type="button" className="btn btn-info"><Link to="/login"
            className='text-white text-decoration-none'>Đăng Nhập</Link>
            </button>
            
        </div>
    )
}
export default Checkout;




