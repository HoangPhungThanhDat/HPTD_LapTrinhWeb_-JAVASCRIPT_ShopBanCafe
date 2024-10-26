import { useParams } from "react-router-dom";
import React, { useEffect, useState } from "react";
import apiProduct from "../../../api/apiProduct";
import ProductItem from "./productItem";
const ProductsByCat=()=>{
    
    const {slug}=useParams();
    const [ProductsByCat, setProductsByCat] = useState([]);

    useEffect(() => {
        apiProduct.getProductByCatSlug(slug).then((res)=>{
            try{
                const data = res.data;
                const products = data.map((item)=>{
                    return {
                        id: item.attributes.id,
                        name: item.attributes.product_name,
                        price: item.attributes.price,
                        image: item.attributes.image.data.attributes.url,
                     
                    }
                });
                setProductsByCat(products);
            }catch(e){
                console.log("Error:",e);
            }
        })
    }, [ProductsByCat]);
    return (
        <div className="row px-5 products">
        <h1 className="coffee_taital">Sản phẩm của chúng tôi</h1>
        {
        ProductsByCat.map((product, index)=>{
            return(
                <ProductItem key={index} product={product}/>
            )

        })
        }
        </div>
    )
}
export default ProductsByCat;

