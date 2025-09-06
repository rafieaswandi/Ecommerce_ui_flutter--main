import 'package:ecommerce_ui/view/shipping%20address/models/address.dart';

class AddressRepository {
  List<Address> getAddresses() {
     return [
        Address(
          id: '1', 
          label: 'Home', 
          fullAddress: '123 Main Street, Morocco', 
          city: 'Casablanca', 
          state: 'Casablanca', 
          zipCode: '12345',
          isDefault: true,
          type: AddressType.home,
        ),
        Address(
          id: '2', 
          label: 'Office', 
          fullAddress: '321 Business Street, Morocco', 
          city: 'Casablanca', 
          state: 'Casablanca', 
          zipCode: '54321',
          isDefault: false,
          type: AddressType.office,
        ),
     ];
  }

  Address? getDefaultAddress() {
    return getAddresses().firstWhere(
      (address) => address.isDefault, 
      orElse: () => getAddresses().first
      );
  }
}