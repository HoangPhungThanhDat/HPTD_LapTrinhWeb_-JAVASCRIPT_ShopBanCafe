import { toast } from "react-toastify";
import 'react-toastify/dist/ReactToastify.css';
const initCart={

    carts:[],
    amountItem:0,
    totalAmount:0

};

const initState=JSON.parse(localStorage.getItem('cart'))|| initCart;
const saveCartToLocalStorage=(cartData)=>
 {
        localStorage.setItem('cart',JSON.stringify(cartData));
};

const cartReducer=(state=initState,action)=>{
    switch(action.type)
    {
        case 'ADD_TO_CART':
            const existingItemIndex=state.carts.findIndex(item=>item.id ===action.payload.id);
            if(existingItemIndex !==-1)
                {
                    const updateCart=state.carts.map((item,index)=>
                        index === existingItemIndex ? {...item,quantity:item.quantity+action.payload.amount}
                        :item

                    );
                    toast.info(`Tăng Số Lượng ${action.payload.name} `,{
                        position:"bottom-right",
                        autoClose:2000,

                    })
                  return{
                    ...state,
                    carts:updateCart,
                    amountItem: state.amountItem

                  }
                }else{

                    toast.success(`Thêm ${action.payload.name} vào giỏ hàng`,{
                        position:"bottom-right",
                        autoClose:2000,

                    })
                    return{
                        ...state,
                        carts:[...state.carts,{...action.payload,quantity:action.payload.amount}],
                        amountItem:state.amountItem+1
                    }
                }
            case 'TOTAL_CART':
                let total=0;
                state.carts.map(item=>{
                    total +=item.price*item.quantity;
                });
                const newState={
                    ...state,
                    totalAmount:total,
                };
                saveCartToLocalStorage(newState);
                return newState;

                case "REMOVE_ITEM_CART":

                toast.warning(`Xóa ${action.payload.name} khỏi giỏ hàng`,{
                    position:"bottom-right",
                    autoClose:2000,

                })
                    return{
                        ...state,
                        carts:state.carts.filter(item=>item.id!==action.payload.id),
                    }

                
                case "CLEAR_CART":
                    return{
                        ...state,
                        carts:[],
                    }

              default:
                return state;
    }

}
export default cartReducer;