import Header from "./partial/header";
import Menu from "./partial/menu";
import Slide from "./partial/slide";
import Footer from "./partial/footer";
import {Outlet} from 'react-router-dom';
function index() {
  return (
      <div className="header_section">        
        <Header  />
         
        <Menu/>
                 
        <Slide/>
        
        <div className="row content">
          <Outlet/>
        </div>
        
          
        <Footer/>

      </div>
  );
}
export default index;

