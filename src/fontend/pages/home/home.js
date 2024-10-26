
// import React, { useEffect, useState } from "react";
// import apiProduct from "../../../api/apiProduct";

// function Home() {
//     const [products, setProducts] = useState([]);
    

//     useEffect(() => {
//         apiProduct.getNewest().then((res) => {
//             try {
//                 setProducts(res);
//                 console.log(res);
//             } catch (err) {
//                 console.log(err);
//             }
//         });
//     });

//     return (
//         <div className="row px-5 d-flex justify-content-between">
//             <h1>Sản phẩm mới nhất</h1>
//             {products.map((product) => (
//                 <div key={product.id} className="col-md-3 productItem me-1">
//                     <img src={product.image} alt={product.name} />
//                     <h5 className="card-title">{product.name}</h5>
//                     <h6>{product.price}</h6>
//                 </div>
//             ))}
//         </div>
//     );
// }

// export default Home;


import React, { useEffect, useState } from "react";
import apiProduct from "../../../api/apiProduct";
import ProductItem from "../product/productItem";


function Home() {
    const [products, setProducts] = useState([]);
    const [error, setError] = useState(null);

    const [promotionProducts, setPromotionProducts] = useState([]);

    useEffect(() => {
        apiProduct.getNewest()
            .then((res) => {
                const newProducts = res.data.map((product) => {
                    return {
                        id: product.id,
                        name: product.attributes.product_name,
                        price: product.attributes.price,
                        slug: product.attributes.slug,
                        image: product.attributes.image.data.attributes.url,
                        description: product.attributes.description, // Thêm thuộc tính description
                    };
                });
                setProducts(newProducts);
            })
            .catch((err) => {
                console.error("Lỗi khi lấy sản phẩm mới nhất:", err);
                setError("Không thể tải sản phẩm mới nhất.");
            });
    }, []);

    useEffect(() => {
        apiProduct.getPromotion().then((res) =>{
            try{
                const promotionProductData = res.data.map((product) => {
                    return {
                        id: product.id,
                        name: product.attributes.name,
                        price: product.attributes.price,
                        slug: product.attributes.slug,
                        image: product.attributes.image.data.attributes.url,
                    }});
                    setPromotionProducts(promotionProductData);
                
                
                //console.log(newProducts);
            }catch(err){
                console.log(err);
            }
            

        });
    },[]);

    return (
        <div className="row px-5 products">
        <h1 className="coffee_taital">Sản phẩm mới nhất</h1>
            {error && <p>{error}</p>}
            {products.map((product) => (
                <ProductItem key={product.id} product={product} />
            ))}

        <h1 className="coffee_taital">Sản phẩm khuyến mãi</h1>
            {
                promotionProducts.map((product, index) =>{
                    return(
                        <ProductItem key={index} product={product}/>
                    )
                })
            }
        </div>
    );
}

export default Home;

