import 'package:ecommerce_ui/view/my%20orders/model/model.dart';

class OrderRepository {
  List<Order> getOrders() {
    return [
      Order(
        OrderNumber: '123432',
        itemCount: 2,
        totalAmount: 11000000.00,
        status: OrderStatus.active,
        imageUrl: 'assets/images/abrams.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      Order(
        OrderNumber: '554232',
        itemCount: 1,
        totalAmount: 6200.00,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/fnmag.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      Order(
        OrderNumber: '696969',
        itemCount: 69,
        totalAmount: 300.00,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/uniform.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 3)),
      ),
      Order(
        OrderNumber: '222421',
        itemCount: 5,
        totalAmount: 250.00,
        status: OrderStatus.active,
        imageUrl: 'assets/images/ammo.jpeg',
        orderDate: DateTime.now().subtract(const Duration(hours: 5)),
      ),
    ];
  }

  List<Order> getOrdersByStatus (OrderStatus status) {
    return getOrders().where((order) => order.status == status).toList();
  }
}
