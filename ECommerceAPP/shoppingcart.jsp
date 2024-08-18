<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body>
    <header>
        <h1>Shopping Cart</h1>
        <nav>
            <a href="index.jsp">Home</a> |
            <a href="productList.jsp">Products</a> |
            <a href="checkout.jsp">Checkout</a>
        </nav>
    </header>
    <main>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                    <tr>
                        <td>${item.productName}</td>
                        <td>${item.quantity}</td>
                        <td>${item.price}</td>
                        <td>${item.total}</td>
                        <td>
                            <form action="removeFromCart" method="post">
                                <input type="hidden" name="productId" value="${item.productId}">
                                <button type="submit" class="btn-remove">Remove</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="cart-summary">
            <h2>Summary</h2>
            <p>Total Items: ${totalItems}</p>
            <p>Total Price: ${totalPrice}</p>
            <a href="checkout.jsp" class="btn-checkout">Proceed to Checkout</a>
        </div>
        <form action="clearCart" method="post">
            <button type="submit" class="btn-clear">Clear Cart</button>
        </form>
    </main>
    <footer>
        <p>&copy; 2024 Your E-Commerce Store</p>
    </footer>
</body>
</html>
