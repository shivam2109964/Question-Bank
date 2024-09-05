abstract class Customer {
  double getDiscount();
}

class RegularCustomer implements Customer {
  @override
  double getDiscount() {
    return 0.1; // 10% discount
  }
}

class PremiumCustomer implements Customer {
  @override
  double getDiscount() {
    return 0.2; // 20% discount
  }
}

class GoldCustomer implements Customer {
  @override
  double getDiscount() {
    return 0.3; // 30% discount
  }
}

class NewCustomer implements Customer {
  @override
  double getDiscount() {
    return 0.0;
  }
}

class DiscountService {
  double getDiscount(Customer customer) {
    return customer.getDiscount();
  }

  Customer determineCustomer(double purchaseAmount) {
    if (purchaseAmount > 10000) {
      return GoldCustomer();
    } else if (purchaseAmount > 1000) {
      return PremiumCustomer();
    } else if (purchaseAmount > 500) {
      return RegularCustomer();
    } else {
      return NewCustomer();
    }
  }
}

void main() {
  var discountService = DiscountService();

  // Example Purchase amounts
  List<double> purchaseAmount = [400, 600, 1500, 12000];

  for (var amount in purchaseAmount) {
    Customer customer = discountService.determineCustomer(amount);
    double discount = discountService.getDiscount(customer);
    print("Purchase Amount: ₹$amount");
    print("Customer Type: ${customer.runtimeType}");
    print("Discount Offered: ${discount * 100}%\n");
  }
}
