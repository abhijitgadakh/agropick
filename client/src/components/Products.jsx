import React, { useEffect, useState } from "react";

const Products = () => {
  const [products, setProducts] = useState([]);
  const [error, setError] = useState(null);
  const [cart, setCart] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3001/get_products")
      .then((response) => {
        if (!response.ok) {
          throw new Error("Failed to fetch products");
        }
        return response.json();
      })
      .then((data) => {
        // Set a default quantity for each product
        const productsWithQuantity = data.map((product) => ({
          ...product,
          quantity: 1, // Default quantity
        }));
        setProducts(productsWithQuantity);
      })
      .catch((error) => setError(error.message));
  }, []);

  // Function to handle adding a product to the cart
  const handleAddToCart = (product) => {
    setCart((prevCart) => [...prevCart, product]);
  };

  // Function to handle quantity changes for "u" products
  const handleQuantityChange = (productId, action) => {
    setProducts((prevProducts) =>
      prevProducts.map((product) =>
        product.id === productId
          ? {
              ...product,
              quantity:
                action === "increase"
                  ? product.quantity + 1
                  : product.quantity > 1
                  ? product.quantity - 1
                  : 1, // Ensure quantity doesn't go below 1
            }
          : product
      )
    );
  };

  return (
    <div className="products-container">
      <h1 className="products-title">Products</h1>
      {error && <p className="error-message">{error}</p>}
      <ul className="products-list">
        {products.map((product) => (
          <li key={product.id} className="product-item">
            {/* Image at the top */}
            <div className="img-pro">
              <img
                src={`/product_imgs/${product.product_image}`}
                alt={product.product_name}
                className="product-image"
              />
            </div>

            {/* Product Info Below Image */}
            <div className="product-info">
              <h2 className="product-name">{product.product_name}</h2>
              <p className="product-price">Price: Rs. {product.price}</p>
              <p className="product-farmer">Farmer: {product.grown_by}</p>
              <p className="product-location">
                Grown at: {product.area}, {product.pincode}
              </p>
              <p className="product-use-by">
                Use till: {new Date(product.use_before).toLocaleDateString()}
              </p>

              {/* Conditional Rendering based on sell_by */}
              {product.sell_by === "w" ? (
                <div className="product-weight">
                  <label>Select Weight:</label>
                  <select className="weight-dropdown">
                    <option value="250gm">250gm</option>
                    <option value="500gm">500gm</option>
                    <option value="1kg">1kg</option>
                    <option value="2kg">2kg</option>
                    <option value="5kg">5kg</option>
                  </select>
                </div>
              ) : product.sell_by === "u" ? (
                <div className="quantity-selector">
                  <button
                    className="quantity-btn"
                    onClick={() => handleQuantityChange(product.id, "decrease")}
                    disabled={product.quantity <= 1}
                  >
                    -
                  </button>
                  <span className="quantity-count">{product.quantity}</span>
                  <button
                    className="quantity-btn"
                    onClick={() => handleQuantityChange(product.id, "increase")}
                  >
                    +
                  </button>
                </div>
              ) : null}

              <button
                className="add-to-cart-btn"
                onClick={() => handleAddToCart(product)}
              >
                Add to Cart
              </button>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Products;
