import React from "react";
import { Link } from "react-router-dom";
import { imageURL } from "../../../api/config";

function ProductItem(props)
{
    return(
        <div className="col-md-3 productItem me-1" key={props.key}>
            <Link to={(`/product-detail/${props.product.slug}`)} key={props.key}>              
                <img src={imageURL +props.product.image} alt={props.product.name}/>
           <h5 className="card-title">{ props.product.name}
           <h6 key={props.key}>{ props.product.price}</h6>
           </h5>
            </Link>
          
        </div>
    );
}
export default ProductItem;