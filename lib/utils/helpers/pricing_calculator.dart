class CPricingCalculator {
  /// - Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  ///  -- Calculate shipping Cost
  static String calculateShippingCost(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmounnt = productPrice * taxRate;
    return taxAmounnt.toStringAsFixed(2);
  }

  /// -- Calculate Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice + taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // lookup the tax rate for the given location from a tax rate database or api
    // todo: tax rate about location

    return 0.10; //example tax rate of 10%
  }

  // static double calculateShippingCost(String location) {
  //   // todo: tax rate about location
  //   return 5.00;
  // }

  static double getShippingCost(String location) {
    // lookup the shipping cost for the given location from a tax rate database or api
    // Calculate the shipping cost based on various factors like distance weight
    return 5.00;
  }

  // static String calculateTax(double productPrice, String location) {
  //   double taxRate = getTaxRateForLocation(location);
  //   double taxAmounnt = productPrice * taxRate;
  //   return taxAmounnt.toStringAsFixed(2);
  // }

  // static String calculateCartTotal(double productPrice, String location) {
  //   double taxRate = getTaxRateForLocation(location);
  //   double taxAmounnt = productPrice * taxRate;
  //   return taxAmounnt.toStringAsFixed(2);
  // }
}
