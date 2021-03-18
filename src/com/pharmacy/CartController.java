package com.pharmacy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shoppingcart.bean.CartBean;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String strAction = request.getParameter("action");
		   
		   
		  if(strAction!=null && !strAction.equals("")) {
		   if(strAction.equals("add")) {
		    addToCart(request);
		   } else if (strAction.equals("Update")) {
		    updateCart(request);
		   } else if (strAction.equals("Delete")) {
		    deleteCart(request);
		   }
		  }
		  response.sendRedirect("ShoppingCart.jsp");
		  return;
		 }
		  
		 protected void deleteCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String strItemIndex = request.getParameter("itemIndex");
		  CartBean cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  if(objCartBean!=null) {
		   cartBean = (CartBean) objCartBean ;
		  } else {
		   cartBean = new CartBean();
		  }
		  cartBean.deleteCartItem(strItemIndex);
		  session.setAttribute("orderTotal",cartBean.getOrderTotal());
		 }
		  
		 protected void updateCart(HttpServletRequest request) {
		  HttpSession session = request.getSession(true);
		  String strQuantity = request.getParameter("quantity");
		  String strItemIndex = request.getParameter("itemIndex");
		  
		  CartBean cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  if(objCartBean!=null) {
		   cartBean = (CartBean) objCartBean ;
		  } else {
		   cartBean = new CartBean();
		  }
		  cartBean.updateCartItem(strItemIndex, strQuantity);
		 }
		  
		 protected void addToCart(HttpServletRequest request) {
		  HttpSession session = request.getSession(true);
		  session.setMaxInactiveInterval(5*10);
		  String strModelNo = request.getParameter("modelNo");
		  String strDescription = request.getParameter("description");
		  String strPrice = request.getParameter("price");
		  String strQuantity = request.getParameter("quantity");
		  String strImage = request.getParameter("img");
		  System.out.println("strImage>>>>"+strPrice);
		   
		  CartBean cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  
		 
		  if(objCartBean!=null) {
		   cartBean = (CartBean) objCartBean;
		  } else {
		   cartBean = new CartBean();
		   session.setAttribute("cart", cartBean);
		  }
		   
		  cartBean.addCartItem(strModelNo, strDescription, strPrice, strQuantity, strImage);
		  session.setAttribute("orderTotal",cartBean.getOrderTotal());
		 
		  
	}

}
