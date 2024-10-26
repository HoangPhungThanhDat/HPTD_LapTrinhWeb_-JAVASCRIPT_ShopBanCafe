function about(){
    return(
      <div className="about_section layout_padding">
      <div className="container">
         <div className="row">
            <div className="col-md-12">
               <h1 className="about_taital">GIỚI THIỆU</h1>
               <div className="bulit_icon"><img src="asset/images/bulit-icon.png"/></div>
            </div>
         </div>
         <div className="about_section_2 layout_padding">
            <div className="image_iman"><img src="asset/images/about-img.png" className="about_img"/></div>
            <div className="about_taital_box">
               <h1 className="about_taital_1">Coffee (HĐ)</h1>
               <p className=" about_text">Cà phê là loại đồ uống phổ biến và được ưa chuộng trên toàn thế giới. Đây không chỉ là một loại thức uống giúp tỉnh táo mà còn là một phần của văn hóa, nghệ thuật và lối sống của nhiều quốc gia. Cà phê siêu ngon được đánh giá cao bởi hương vị độc đáo, độ đậm đà và cách chế biến tỉ mỉ.</p>
               <div className="readmore_btn"><a href="#">Read More</a></div>
            </div>
         </div>
      </div>
   </div>
    );
}
export default about;