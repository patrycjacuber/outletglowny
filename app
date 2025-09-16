import React, { useEffect, useState } from 'react';
import {  HashRouter as Router, Routes, Route, Outlet } from 'react-router-dom';
import Home from './pages/Home';
import Collection from './pages/Collection';
import Contact from './pages/Contact';
import Product from './pages/Product';
import Cart from './pages/Cart';
import PlaceOrder from './pages/PlaceOrder';
import Orders from './pages/Orders';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import SearchBar from './components/SearchBar';
import ProductItem from './components/ProductItem';
import AdminPanel from './components/AdminPanel';
import AdminOrders from './pages/AdminOrders';
import Success from './pages/Success';



const App = () => {
  const basePath = '/outlet'

  // NEW

  return (
    <Router>
      <div className='px-4 sm:px-[5vw] md:px-[7vw] lg:px-[9vw]'>

        <Navbar />
        <SearchBar />

        <Routes>
          {/* {currPage === '' && <Home/>}
          {currPage === 'collection' && <Collection/>} */}
          <Route path={basePath} element={<Home />} />
          <Route path={basePath + '/collection'} element={<Collection />} />
          <Route path={basePath + '/contact'} element={<Contact />} />
          <Route path={basePath + '/product/:id'} element={<Product />} />
          <Route path={basePath + '/cart'} element={<Cart />} />
          <Route path={basePath + '/placeorder'} element={<PlaceOrder />} />
          <Route path={basePath + '/orders'} element={<Orders />} />
          <Route path={basePath + '/success'} element={<Success />} />
          <Route path={basePath + '/admin'} element={<AdminOrders />} />
          <Route path='*' element={<div>404 Not Found</div>} />
        </Routes>

        <Footer />

      </div>
    </Router>

  );
};

export default App;
