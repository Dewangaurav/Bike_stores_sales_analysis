### Bike_stores_sales_analysis

### Introduction
This project focuses on analyzing sales data from a chain of bike stores to gain insights into sales performance, customer behavior, product popularity, and inventory management. By leveraging SQL queries, we aim to extract meaningful information from the data, which can inform business strategies and decision-making processes.

### Tool used
Microsoft SQL Server

### Dataset and Description

The dataset contains the following fields: [data.xls](https://github.com/user-attachments/files/15776660/data.xls)

#### production.categories
- **category_id**: Unique identifier for each category.
- **category_name**: Name of the product category.

#### production.brands
- **brand_id**: Unique identifier for each brand.
- **brand_name**: Name of the product brand.

#### production.products
- **product_id**: Unique identifier for each product.
- **product_name**: Name of the product.
- **brand_id**: Identifier linking to the brand of the product.
- **category_id**: Identifier linking to the category of the product.
- **model_year**: Model year of the product.
- **list_price**: Listed price of the product.

#### sales.customers
- **customer_id**: Unique identifier for each customer.
- **first_name**: Customer's first name.
- **last_name**: Customer's last name.
- **phone**: Customer's phone number.
- **email**: Customer's email address.
- **street**: Customer's street address.
- **city**: City of the customer's address.
- **state**: State of the customer's address.
- **zip_code**: ZIP code of the customer's address.

#### sales.stores
- **store_id**: Unique identifier for each store.
- **store_name**: Name of the store.
- **phone**: Store's phone number.
- **email**: Store's email address.
- **street**: Street address of the store.
- **city**: City where the store is located.
- **state**: State where the store is located.
- **zip_code**: ZIP code of the store.

#### sales.staffs
- **staff_id**: Unique identifier for each staff member.
- **first_name**: Staff member's first name.
- **last_name**: Staff member's last name.
- **email**: Staff member's email address.
- **phone**: Staff member's phone number.
- **active**: Indicates if the staff member is currently active (1 for active, 0 for inactive).
- **store_id**: Identifier linking to the store where the staff member works.
- **manager_id**: Identifier linking to the staff member's manager.

#### sales.orders
- **order_id**: Unique identifier for each order.
- **customer_id**: Identifier linking to the customer who placed the order.
- **order_status**: Status of the order (1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed).
- **order_date**: Date when the order was placed.
- **required_date**: Date when the order is required to be completed.
- **shipped_date**: Date when the order was shipped.
- **store_id**: Identifier linking to the store fulfilling the order.
- **staff_id**: Identifier linking to the staff member managing the order.

#### sales.order_items
- **order_id**: Identifier linking to the order.
- **item_id**: Unique identifier for each item in an order.
- **product_id**: Identifier linking to the product.
- **quantity**: Quantity of the product ordered.
- **list_price**: Listed price of the product.
- **discount**: Discount applied to the product.

#### production.stocks
- **store_id**: Identifier linking to the store.
- **product_id**: Identifier linking to the product.
- **quantity**: Quantity of the product in stock.

This dataset provides comprehensive information about products, customers, orders, and store inventories, allowing for detailed sales and performance analysis.
#### Objective
The primary objectives of this project are to:
- Identify top-performing products and stores.
- Analyze discount strategies and their impact.
- Understand customer purchasing patterns.
- Evaluate staff performance in terms of sales revenue.
- Assess product sales across different stores and brands.
- Determine key financial metrics such as stock turnover rates and total expenditure.

#### Analysis Questions

1. **Top Products by Sales Revenue in 2017**
  
2. **Average Discount Per Store for Completed Orders in the Last 6 Months**
  
3. **Customer with the Most Orders**
   
4. **Top Performing Staff Members by Sales Revenue**
   
5. **Total Quantity of Each Product Sold in Each Store**

6. **Average List Price by Brand and Category**

7. **Top 5 Customers by Total Expenditure**

8. **Stock Turnover Rate for Each Product in Each Store**

#### Conclusion
This project demonstrates the application of SQL in analyzing sales data from bike stores to derive actionable insights. By answering the key analysis questions, we can identify top-performing products and stores, understand customer behavior, evaluate staff performance, and manage inventory effectively. These insights are crucial for strategic decision-making and improving overall business performance.

***Note: The analysis queries provided in this project are written in Microsoft SQL database and can be executed on any SQL database management system containing the credit card transaction dataset.
