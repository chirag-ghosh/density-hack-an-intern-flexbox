import React from 'react';
import Portfolio from "./components/PortfolioPage/Portfolio";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import OrderPage from './components/OrderPage/OrderPage';

function App() {

  return (
    <div className="App">
      <BrowserRouter>
      <Routes>
        <Route path='/' element={<Portfolio />} />
        <Route path='/home' element={<Portfolio />} />
        <Route path='/order' element={<OrderPage />} />
      </Routes>
      </BrowserRouter>
      
    </div>
  );
}

export default App;
