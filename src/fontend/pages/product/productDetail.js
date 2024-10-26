

import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import apiProduct from "../../../api/apiProduct";
import { imageURL } from "../../../api/config";
import { useDispatch } from "react-redux";
import { ADD } from "../../../redux/action/cartAction";
function ProductDetail()
{
    const {slug}=useParams();
    const [ProductDetail,setProductDetail]=useState([]);
    const dispatch=useDispatch();
    const [amountItem,setAmountItem]=useState(1);

    useEffect(()=>{
        apiProduct.getDetailProductBySlug(slug).then((res)=>{
            try
            {
               const productAttributes=res.data[0].attributes;
                 const product={ 
                    id:res.data[0].id,
                    name:productAttributes.product_name,
                    price:productAttributes.price,
                    slug:productAttributes.slug,
                    image:productAttributes.image.data.attributes.url,
                    description:productAttributes.description,
                                  
              }
                     setProductDetail(product); 
                     console.log("product:",product);
                    

           
            }catch(err){
                console.log("Error:",err.message);
            }
        });

    },[slug]);

    const handleAddToCart=(amountItem)=>
        {
            const product={
                ...ProductDetail,
                amount:amountItem

            };
            dispatch(ADD(product));
           
        }

    const increaseItemCart=()=>
        {
            setAmountItem(amountItem+1);
        }

        const decreaseItemCart=()=>
            {
                if(amountItem>1){
                    setAmountItem(amountItem-1)
                }
            }
    return(
        <div>
           
           <div className="row px-5 ">
            <h1 className="coffee_taital">Chi Tiết Sản Phẩm</h1>
          <div className="col-md-5 img-detail border">
                <img src={imageURL+ProductDetail.image} alt={ProductDetail.name}/>
            </div>
            <div className="col-md-7 detail">
                <h1>{ProductDetail.name}</h1>
                <h5 className="mb-4">${ProductDetail.price}</h5>
                <p className="mb-4">{ ProductDetail.description}</p>

<div className="d-flex align-items-center mb-4 pt-2 quantity">
    <div className="input-group mr-3">
        <span>Số Lượng</span>
        <div className="input-group-btn">
            <button className="btn btn-primary btn-minus" onClick={()=>decreaseItemCart()}>
                <i className="fa fa-minus"></i>
            </button>
        </div>
        <input type="text" className="text-center"value={amountItem} onChange={(e)=>setAmountItem(e.target.value)}/>
        <div className="input-group-btn">
            <button className="btn btn-primary btn-plus" onClick={()=>increaseItemCart()}>
                <i className="fa fa-plus"></i>
            </button>

        </div>
</div>
</div>
  <button className="btn btn-primary mt-3" onClick={()=>handleAddToCart(amountItem)}>Thêm Giỏ Hàng</button>
                
            </div>
           </div>
        </div>


        
    );
}
export default ProductDetail;