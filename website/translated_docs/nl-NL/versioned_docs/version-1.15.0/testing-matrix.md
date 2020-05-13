---
id: version-1.15.0-testing-matrix
title: End-to-end testing matrix
original_id: testing-matrix
---

| Test ID                           | Test Case                                  | Step by Step                                                                                                                                                                                                                                                  | Expected Outcome                                                       |
| --------------------------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| **REGISTRATION & AUTHENTICATION** |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| A1                                | Correct Credentials                        | 1. Press Person Icon for drop-down <br>2. Enter a valid e-mail / password combination <br>3. Press sign in <br>4. Verify valid log-in state                                                                                                 | Account is logged in                                                   |
| A2                                | Incorrect Credentials                      | 1. Press Person icon for drop-down <br>2. Enter an invalid e-mail / password combination <br>3. Press sign in <br>4. Verify invalid log-in state                                                                                            | Account is not logged in                                               |
| A3                                | Registration                               | 1. Press Person icon for drop-down <br>2. Click register link <br>3. Enter e-mail / password combination <br>4. Press register <br>5. Signout <br>6. Log-in with registered credentials <br>7. Verify valid log-in state  | Account is registered, can be used to log in                           |
| A4                                | Reset Password                             | 1. Press Person icon for drop-down <br>2. Press Reset Password <br>3. Enter e-mail <br>4. Check e-mail to reset password <br>5. Reset password <br>6. Log-in with newly created password <br>7. Verify valid log-in state | Able to reset / change password, can be used to log in                 |
| A5                                | Sign Out                                   | 1. Press Person icon frop drop-down <br>2. Log-in <br>3. Press Person icon for drop-down <br>4. Press sign out <br>5. Verify non-authenticated state in                                                                               | Able to sign out and be able to re-log in                              |
| **NAVIGATION BAR**                |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| B1                                | Home Page Redirect                         | 1. Go to anywhere else other than home page such as a product page <br>2. Press STORE_NAME (i.e Reaction) on Nav Bar <br>3. Verify if redirected to home page                                                                                     | Able to have redirection to home page from anywhere within application |
| B2                                | Search Option                              | 1. Have a storefront with sample data <br>2. Press search icon <br>3. Verify if directed to search text field                                                                                                                                     | Redirected to search functionality of site                             |
| B3                                | Select Language                            | 1. Press language drop-down <br>2. Select a language <br>3. Verify if menu items are changed into language                                                                                                                                        | Language is changed for the site                                       |
| B4                                | Select Currency                            | 1. Press currency drop-down <br>2. Select a currency <br>3. Verify if currency is selected and used in purchase                                                                                                                                   | Currency is changed from the default and it is shop wide               |
| B5                                | Profile Drop-down (Non-authenticated)      | 1. Press Person icon for drop-down <br>2. Verify if e-mail / password fields and register / forget password links exist                                                                                                                                 | Authentication box appears                                             |
| B6                                | Profile Drop-down (Authenticated)          | 1. Press Person icon for drop-down <br>2. Verify if sign-out option available                                                                                                                                                                           | Authenticated box appears with Sign Out option                         |
| B7                                | Cart Summary                               | 1. Press Cart <br>2. Verify if cart appears                                                                                                                                                                                                             | Cart appears with / without an item                                    |
| B8                                | Notifications                              | 1. Log-in <br>2. Press Alarm icon <br>3. Verify if notifications / messages appear                                                                                                                                                                | Notifications / messages appear in drop-down                           |
| **HAMBURGER MENU**                |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| C1                                | Product Map                                | 1. Have a storefront with sample data <br>2. Press Hamburger Menu <br>3. Verify if Categories and Sub-Categories are reflected                                                                                                                    | Storefront can be travered through the product map                     |
| C2                                | Select Language                            | 1. Press language drop-down <br>2. Select a language <br>3. Verify if menu items are changed into language                                                                                                                                        | Language is changed for the site                                       |
| C3                                | Select Currency                            | 1. Press currency drop-down <br>2. Select a currency <br>3. Verify if currency is selected and used in purchase                                                                                                                                   | Currency is changed from the default and it is shop wide               |
| **USER PROFILE**                  |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| D1                                | Proper Profile Data                        | 1. Verify if Name and E-mail Address appears                                                                                                                                                                                                                  | Name and E-mail appears                                                |
| D2                                | Update Email Address                       | 1. Update e-mail address <br>2. Sign-out <br>3. Sign-in with updated e-mail address <br>4. Verify only e-mail changed within profile                                                                                                        | Profile persists minus the e-mail address change                       |
| D3                                | Update Password                            | 1. Update current password <br>2. Sign-out <br>3. Sign-in with new password <br>4. Verify log-in state                                                                                                                                      | Able to log-in with same e-mail and new password                       |
| D4                                | Your Orders                                | 1. Make sample orders under account <br>2. Verify if orders appear in order box                                                                                                                                                                         | Orders saved to profile                                                |
| D5                                | Default Address                            | 1. Enter Address Information <br>2. Order a sample product <br>3. Verify if address appears in checkout area                                                                                                                                      | Address saved in profile is default and appears in checkout phase      |
| **ADMIN DASHBOARD**               |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| E1                                | Dashboard Menu Pop-Up                      | 1. Press Dashboard <br>2. Verify if Admin Dashboard Slides Out                                                                                                                                                                                          | Admin dashboard appears                                                |
| E2                                | Orders                                     | 1. Make sample orders with different accounts <br>2. Press Orders <br>3. Verify if sample orders appear                                                                                                                                           | All orders appear                                                      |
| E3                                | Accounts                                   | 1. Make sample accounts <br>2. Press Accounts <br>3. Verify if sample accounts appear                                                                                                                                                             | All accounts appear                                                    |
| E4                                | Log-in Services                            | 1. Press Log-in Services <br>2. Verify service capabilities                                                                                                                                                                                             | Login services available                                               |
| E5                                | Social Settings                            | 1. Press Social Settings <br>2. Verify social settings capabilities                                                                                                                                                                                     | Social settings available                                              |
| E6                                | Shop                                       | 1. Press Shop <br>2. Verify able to enter shop details                                                                                                                                                                                                  | Able to change shop information                                        |
| E7                                | E-mail                                     | 1. Press E-mail <br>2. Verify able to see e-mail logs and set-up mail provider                                                                                                                                                                          | E-mail provider and logs are visible                                   |
| E8                                | Localization                               | 1. Press Localization <br>2. Verify able to change localization options and reflect onto shop                                                                                                                                                           | Changes made are reflected onto shop, options available to be changed  |
| E9                                | Shipping                                   | 1. Press Shipping <br>2. Verify able to change and toggle options                                                                                                                                                                                       | Available options are able to changed                                  |
| E10                               | Tax                                        | 1. Press Tax <br>2. Verify able to enter custom rate / tax                                                                                                                                                                                              | Able to change custom rate                                             |
| E11                               | Template                                   | 1. Press Template <br>2. Verify able to update e-mail templates                                                                                                                                                                                         | Able to change e-mail templates                                        |
| E12                               | Search                                     | 1. Press Search <br>2. Verify if able to change search options / button                                                                                                                                                                                 | Able to change search capabilities                                     |
| E13                               | Payment                                    | 1. Press Payment <br>2. Verify able to toggle / select options                                                                                                                                                                                          | Able to change options                                                 |
| E14                               | Edit Mode                                  | 1. Press Edit Mode Switch <br>2. Verify if Switch and Edit Mode capabilities reflect state                                                                                                                                                              | Edit mode toggled correctly                                            |
| E15                               | Add Product                                | 1. Press Plus Sign (Add Product) <br>2. Verify redirection to Create New Product                                                                                                                                                                        | Go to Create a Product                                                 |
| **PRODUCT PAGE**                  |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| F1                                | Product Title                              | 1. Verify if product name is correctly formatted                                                                                                                                                                                                              | Product name is formatted correctly                                    |
| F2                                | Product Sub-title                          | 1. Verify if product subtitle is correctly formatted                                                                                                                                                                                                          | Product subtitle is formatted correctly                                |
| F3                                | Image Zoom                                 | 1. Hover over product with mouse <br>2. Verify if mouse action triggers a zoom capability                                                                                                                                                               | Product can be zoomed in following mouse cursor                        |
| F4                                | Product Information                        | 1. Verify proper format of product : price -> company -> description                                                                                                                                                                                          | Product information formatted correctly                                |
| F5                                | Selecting Option                           | 1. Select an Option <br>2. Verify if border highlight appears on selected option                                                                                                                                                                        | Option is highlighted                                                  |
| F6                                | Multiple Images                            | 1. Choose another image that is not default <br>2. Verify if image appears on main box                                                                                                                                                                  | Pictures can be selected and zoomed in on                              |
| F7                                | Add to Cart                                | 1. Select an option (if applicable) <br>2. Press Add to Cart <br>3. Verify if appears in cart                                                                                                                                                     | Item is in cart                                                        |
| F8                                | Add to Cart - Pop Up                       | 1. Select an option (if applicable) <br>2. Press Add to Cart <br>3. Verify if pop up appears to state item added to cart                                                                                                                          | Pop-up appears with proper information                                 |
| F9                                | Add to Cart - Multiple Quantities - Cart   | 1. Select an option (if applicable) <br>2. Change quantity to more than 1 <br>3. Press Add to Cart <br>4. Verify if pop up appears with amount stated to cart                                                                               | Items in cart                                                          |
| F10                               | Add to Cart - Multiple Quantities - Pop Up | 1. Select an option (if applicable) <br>2. Change quantity to more than 1 <br>3. Press Add to Cart <br>4. Verify if items appear with amount stated to cart                                                                                 | Pop-up appears with proper amount stated                               |
| F11                               | Add to Cart - Pop Up - Checkout Now        | 1. Select an option (if applicable) <br>2. Press Add to Cart <br>3. Wait for Pop up to appear <br>4. Press Checkout button in Pop up <br>5. Verify redirection to checkout                                                            | Able to begin checkout phase                                           |
| **CART**                          |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| G1                                | Empty Cart                                 | 1. Make sure no items in cart <br>2. Press cart <br>3. Verify proper empty cart message <br>4. Press keep on shopping <br>5. Verify cart disappears                                                                                   | Proper cart empty message and able to collapse cart area               |
| G2                                | Universal Cart                             | 1. Add a sample product to cart <br>2. Go to a different product <br>3. Press cart <br>4. Verify if cart is accessible <br>5. Repeat a few times in different areas of application                                                    | Cart can be accessed anywhere throughout application                   |
| G3                                | Item Count                                 | 1. Add sample products to cart <br>2. Verify if amount of products added are reflected onto number bubble                                                                                                                                               | Number bubble has correct amount of items in cart                      |
| G4                                | Cart Information - Items in Cart           | 1. Add sample products to cart <br>2. Verify if amount of products are reflected onto string area                                                                                                                                                       | Proper amount of items reflected                                       |
| G5                                | Cart Information - Sub-total               | 1. Add sample products to cart <br>2. Verify if sub-totals are correct                                                                                                                                                                                  | Sub-total is correct                                                   |
| G6                                | Cart Information - Total                   | 1. Add sample products to cart <br>2. Verify if total price is correct                                                                                                                                                                                  | Total is correct                                                       |
| G7                                | Product Deletion                           | 1. Add sample products to cart <br>2. Press X on a product <br>3. Verify that item is only deleted in cart                                                                                                                                        | Item is deleted from cart                                              |
| G8                                | Product Redirection                        | 1. Add sample products to cart <br>2. Press sample product in cart <br>3. Verify if redirected to sample product page                                                                                                                             | Redirected to sample product                                           |
| G9                                | Checkout                                   | 1. Add sample products to cart <br>2. Press Checkout now <br>3. Verify if redirected to checkout process                                                                                                                                          | Redirected to checkout process                                         |
| G10                               | Cart Merge - No Items                      | 1. Sign in <br>2. Verify no products in cart <br>3. Sign out <br>4. Add sample products to cart <br>5. Sign in <br>6. Verify if sample products persist and merged to account cart                                              | Carts are merged                                                       |
| G11                               | Cart Merge - Existing Items                | <br>1. Sign in <br>2. Add sample products to cart <br>3. Sign out <br>4. Add sample products to cart <br>5. Sign in <br>6. Verify if sample products persist and merged to account cart                                   | Carts are merged                                                       |
| **CHECKOUT**                      |                                            |                                                                                                                                                                                                                                                               |                                                                        |
| H1                                | Account                                    | 1. Begin Checkout Process <br>2. Verify if Guest / Registration / Sign-in options exist                                                                                                                                                                 | Options exist for guest checkout , registration , and sign in          |
| H2                                | Guest                                      | 1. Begin Checkout Process <br>2. Press Continue as guest <br>3. Verify able to add e-mail 4. Verify abe to continue process                                                                                                                       | Able to continue as a guest with an e-mail                             |
| H3                                | Registration                               | 1. Begin Checkout Process <br>2. Press Register <br>3. Enter information <br>4. Press register <br>5. Verify able to continue process                                                                                                 | Able to continue as newly registered user                              |
| H4                                | Existing User                              | 1. Begin Checkout Process <br>2. Press Sign in <br>3. Enter information <br>4. Press Sign in <br>5. Verify able to continue process                                                                                                   | Able to continue as existing user                                      |
| H5                                | Address - Guest                            | 1. Verify able to add address                                                                                                                                                                                                                                 | Able to add address                                                    |
| H6                                | Address - Newly Registered                 | 1. Verify able to add address <br>2. After checkout process complete, verify if address is saved to profile                                                                                                                                             | Able to add address and save                                           |
| H7                                | Address - Existing User                    | 1. Verify able to select existing address or add new address                                                                                                                                                                                                  | Able to select existing addresses or add new address and save          |
| H8                                | Shipping Options                           | 1. Verify able to select shipping options                                                                                                                                                                                                                     | Able to select different shipping options                              |
| H9                                | Review                                     | 1. Verify cart + shipping information are added                                                                                                                                                                                                               | Cart information is reflected properly                                 |
| H10                               | Payment                                    | 1. Verify able to add payment information                                                                                                                                                                                                                     | Information is added through dropdown / text input / secure input      |
| H11                               | Complete Order                             | 1. Verify able to complete order after satisfied information                                                                                                                                                                                                  | Order is able to be completed, e-mail is sent out                      |