import { useSelector } from "react-redux";
import cartReducer from './../../../redux/reducers/cartReducer';
import CartItem from "./cartItem";
import { useDispatch } from "react-redux";
import { TOTAL } from "../../../redux/action/cartAction";
import { CLEAR } from "../../../redux/action/cartAction";
import { Link } from "react-router-dom";
function Cart()
{
  const dispatch=useDispatch();
  dispatch(TOTAL());

  const clearCart=()=>{
    dispatch(CLEAR());
  }
  const totalAmount=useSelector((state)=>state.cart.totalAmount);
  const getDataCart=useSelector(state=>state.cart.carts);
  console.log("getDataCart:",getDataCart);
    return(

        <div>
          <div className="row px-5 products">
        <h1 className="coffee_taital">Giỏ   hàng   của    bạn  </h1>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>


                                <th>Thao tác</th>
                            </tr>
                            {
                                getDataCart.map((e) =>{
                                    return(
                                        <CartItem item={e}/>
                                    )

                                })
                            }
                        </thead>
                       
                    </table>
                </div>
                <div className="row ">
                    <div class="col-md-9 ">
                    <h2 colspan="4" class="total">Tổng tiền:</h2>
                    <h2 class="total">{totalAmount}</h2>                       
                        <td><button class="btn btn-primary btn-block" onClick={()=>clearCart()}>Xoá giỏ hàng</button></td>
                        <td><button class="btn btn-primary btn-block"><Link to="/checkout">Thanh Toán</Link></button></td>

                    </div>
                </div>
            </div>
        </div>
    );
}
export default Cart;