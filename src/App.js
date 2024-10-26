import './App.css';
import Index from './fontend';
import{BrowserRouter,Routes,Route} from 'react-router-dom';
import FontendRoute from './route/fontend';
import { UserProvider } from './fontend/context/userContext';
import store from './redux/store';
import { Provider } from'react-redux';   
import BackendRoute from './route/backend'; 
import IndexAdmin from './backend';
import { ToastContainer } from "react-toastify";
function App() {
  return (
    

    <Provider store={store}>  
    <UserProvider>
    <BrowserRouter>
    <ToastContainer/>
      <Routes>

          <Route path="/" element={<Index/>}>
            {
              FontendRoute.map((router, index) => {
                const Page=router.component;
                return <Route key={index} path={router.path} element={<Page/>}/>
              })
            }
          </Route>
            {/* backend router */}
          <Route path="/admin" element={<IndexAdmin/>}>
            {
              BackendRoute.map((router, index) => {
                const Page=router.component;
                return <Route key={index} path={router.path} element={<Page/>}/>
              })
            }
          </Route>

          
      </Routes>
    </BrowserRouter>
    </UserProvider>
    </Provider>
  );
}

export default App;




