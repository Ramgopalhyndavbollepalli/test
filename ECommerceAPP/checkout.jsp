<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    
</head>
<body>
  <%@ include file="navbar.jsp" %>

    <header>
        <h1>Checkout</h1>
    </header>
    <main>
        <form action="CheckoutServlet" method="post">
            <div class="form-container">
                <section class="shipping-info">
                    <h2>Shipping Information</h2>
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" id="address" name="address" required>
                    </div>
                    <div class="form-group">
                        <label for="city">City:</label>
                        <input type="text" id="city" name="city" required>
                    </div>
                    <div class="form-group">
                        <label for="state">State:</label>
                        <input type="text" id="state" name="state" required>
                    </div>
                    <div class="form-group">
                        <label for="zip">ZIP Code:</label>
                        <input type="text" id="zip" name="zip" required>
                    </div>
                    <div class="form-group">
                        <label for="country">Country:</label>
                        <input type="text" id="country" name="country" required>
                    </div>
                </section>

                <section class="payment-info">
                    <h2>Payment Information</h2>
                    <div class="form-group">
                        <label for="cardNumber">Credit Card Number:</label>
                        <input type="text" id="cardNumber" name="cardNumber" required>
                    </div>
                    <div class="form-group">
                        <label for="expDate">Expiration Date:</label>
                        <input type="text" id="expDate" name="expDate" required>
                    </div>
                    <div class="form-group">
                        <label for="cvv">CVV:</label>
                        <input type="text" id="cvv" name="cvv" required>
                    </div>
                    <div class="form-group">
                        <label for="billingAddress">Billing Address:</label>
                        <input type="text" id="billingAddress" name="billingAddress" required>
                    </div>
                </section>

                <section class="order-summary">
                    <h2>Order Summary</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Product rows will be added dynamically here -->
                            <!-- Example row -->
                            <tr>
                                <!-- <td>Product Name</td>
                                <td>1</td>
                                <td>$20.00</td>
                                <td>$20.00</td> -->
                            </tr>
                            <!-- End example row -->
                        </tbody>
                    </table>
                    <p class="total">Total: $0.00</p>
                </section>

                <button type="submit">Complete Purchase</button>
            </div>
        </form>
    </main>
   
</body>
</html>
