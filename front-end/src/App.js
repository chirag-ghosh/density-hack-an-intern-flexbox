import React from "react";
import Portfolio from "./components/PortfolioPage/Portfolio";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import OrderPage from "./components/OrderPage/OrderPage";
import UserState from "./Context/UserState";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import axios from "axios";

axios.defaults.baseURL = "http://ec2-13-232-154-171.ap-south-1.compute.amazonaws.com/";

function App() {
  return (
    <div className="App">
      <UserState>
        <BrowserRouter>
          <Routes>
            <Route path="/" element={<Portfolio />} />
            <Route path="/order" element={<OrderPage />} />
          </Routes>
        </BrowserRouter>
        <ToastContainer
          position="top-right"
          autoClose={5000}
          hideProgressBar={false}
          newestOnTop={false}
          closeOnClick
          rtl={false}
          pauseOnFocusLoss
          draggable
          pauseOnHover
          theme="dark"
        />
      </UserState>
    </div>
  );
}

export default App;
