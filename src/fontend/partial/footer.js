function footer(){
    return(
        <div>
            <div className="map_main">
                     <div className="map-responsive">
                        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France" width="250" height="500" frameborder="0" style={{border:"0", width: "100%"}} allowfullscreen=""></iframe>
                     </div>
            </div>
            <div className="footer_section layout_padding">
         <div className="container">
            <div className="row">
               <div className="col-md-12">
                  <h1 className="address_text">Địa Chỉ</h1>
                  <p className="footer_text">here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use </p>
                  <div className="location_text">
                     <ul>
                        <li>
                           <a href="#">
                           <i className="fa fa-phone" aria-hidden="true"></i><span className="padding_left_10">0123455667</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i className="fa fa-envelope" aria-hidden="true"></i><span className="padding_left_10">Hoangdat@gmail.com</span>
                           </a>
                        </li>
                     </ul>
                  </div>
                  <div className="form-group">
                     <textarea className="update_mail" placeholder="Your Email" rows="5" id="comment" name="Your Email"></textarea>
                     <div className="subscribe_bt"><a href="#"><img src="asset/images/teligram-icon.png"/></a></div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div className="copyright_section">
         <div className="container">
            <div className="row">
               <div className="col-lg-6 col-sm-12">
                  
               </div>
               <div className="col-lg-6 col-sm-12">
                  <div className="footer_social_icon">
                     <ul>
                        <li><a href="#"><i className="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i className="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i className="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i className="fa fa-instagram" aria-hidden="true"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
        </div>
    );
}
export default footer;