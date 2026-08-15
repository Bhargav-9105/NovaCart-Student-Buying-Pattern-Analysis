# 🛒 NovaCart – Student Buying Pattern Analysis

## 📌 Project Overview

NovaCart is an e-commerce data management and analytics project developed to understand student buying patterns.

The project uses SQL Server to store and analyze data related to students, products, purchases, product categories, and reviews.

The analysis helps identify purchasing behavior, spending patterns, product preferences, customer satisfaction, payment methods, and delivery preferences.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Analyze student purchasing behavior
- Identify popular product categories and brands
- Analyze spending patterns across different age groups
- Study monthly purchasing trends
- Analyze customer ratings and satisfaction
- Compare payment methods
- Analyze delivery preferences
- Identify high-value and frequent customers
- Develop a basic recommendation-system concept
- Understand OLTP and OLAP concepts
- Explore ethical and sustainability considerations

---

## 🗄️ Database Structure

The project uses the following five tables:

| Table | Description |
|---|---|
| STUDENT | Contains student/customer information |
| PRODUCT_CATEGORY | Contains product categories |
| PRODUCT | Contains product details |
| PURCHASE | Contains purchase transactions |
| REVIEW | Contains product ratings and reviews |

### Database Relationships

```text
STUDENT
   │
   │ 1:M
   ▼
PURCHASE
   │
   ├──────────► PRODUCT
   │                │
   │                ▼
   │        PRODUCT_CATEGORY
   │
   ▼
REVIEW
