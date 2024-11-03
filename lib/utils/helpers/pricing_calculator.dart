class YPricingCalculator {

  // -- C A L C U L A T E   P R I C E   O N   T A X   A N D   S H I P P I N G
  static double calculateTotalPrice (double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // -- C A L C U L A T E   S H I P P I N G   C O S T
  static String calculateShippingCost (double productPrice, String location) {
    double shippingCost  =getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // -- C A L C U L A T E   T A X
  static String calculateTax (double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// getTaxRateForLocation Method
  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API.
    // Return the appropriate tax rate.
    return 0.10; // Example tax rate of 10%
  }
  /// getShippingCost Method
  static double getShippingCost(String location) {
    // Lookup the shipping rate for the given location using a shipping rate API.
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00; // Example a shipping cost of $5
  }

  // -- C A L C U L A T E   C A R T   T O T A L
  // static double calculateCartTotal (CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice)=> previousPrice + (currentPrice ?? 0));
  // }
}