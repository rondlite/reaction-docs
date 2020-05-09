---
id: version-1.14.0-test-setup
title: Test Setup
original_id: test-setup
---
    
## Description

### Getting Started
- Reset Demand Cluster by running `demand reset` in the terminal
- Create a fresh product inventory using [demand-vtools]
- Keep browser console open to monitor any client-side errors or warnings
- Keep terminal in view to monitor any server-side errors or warnings

## Devtools
demand Devtools is a Demand Cluster plugin that allows you to load a variety of data sets for testing directly from the admin dashboard.

### Install
 1. Clone or download the [demand-vtools] repository into the `/imports/plugins/custom/` directory of your Demand Cluster project.
 2. Run `meteor npm install jpeg-js` if you need to test with product images.
 3. Run `demand reset` before starting your Demand Cluster project.

### Loading Sample Data
 1. Click the DevTools option in the admin menu to open the DevTools panel.

 2. Click the "Reset Data" button to remove all Product, Tag and Order data.

 3. Click the "Load Products and Tags" buttons to load basic shop data.

 4. Click the "Load Orders" button to load unprocessed new orders.

 5. Click the "Load Images" button to create product images for all products. **Note:** Loading product images can take a few minutes depending on the amount of products that have been created. **Note:** Loading the large dataset while running Demand Cluster on your local development machine is discouraged.

## Payment Provider

### Example Provider
 1. Click the payment option in the admin menu to open the payment provider settings panel.
 2. Click the checkbox to right of the Example Provider label to open the settings.
 3. Enter an API Key.
 4. Clcik the "Authorize", "Capture" & "Refund" checkboxes for the supported methods.
 5. Click the "save changes" button.

### Stripe
 1. Click the payment option in the admin menu to open the payment provider settings panel.
 2. Click the checkbox to right of the Stripe label to open the Stripe settings.
 3. Enter an API Secret Key.
 4. Clcik the "Authorize", "Capture" & "Refund" checkboxes for the supported methods.
 5. Click the "save changes" button.

## Shipping
### Flat Rate
 1. Click the shipping option in the admin menu to open the shipping settings panel.
 2. Click the checkbox to right of the Flat Rate label to open the Flat Rate settings.
 3. Select one of the shipping rate method rows from the table to open the method options.
 4. Click the "enabled" checkbox to enable the shipping method.
 5. Click the "save changes" button.

### Shippo
 1. Click the shipping option in the admin menu to open the shipping settings panel.
 2. Click the checkbox to right of the Shippo label to open the Shippo settings.
 3. Click the "Edit API Key" link to open the Shippo settings.
 4. Enter an API Key and click the "save changes" button.
 5. Click the "Refresh methods" link to refresh the shipping options.

## Taxation
### Custom Rates
 1. Click the taxation option in the admin menu to open the taxation settings panel.
 2. Click the checkbox to right of the Custom Rates label to open the Custom Rates settings.
 3. Click the "+" button to add a new custom tax rate.
 4. Select a country and a state/province/region from their respective selectboxes.
 5. Enter a ZIP Code/Postal Code.
 6. Enter the tax rate percentage.
 7. Click the "save changes" button.