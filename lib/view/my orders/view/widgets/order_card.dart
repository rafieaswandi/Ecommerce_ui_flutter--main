 import 'package:ecommerce_ui/utils/app_textstyles.dart';
import 'package:ecommerce_ui/view/my%20orders/model/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback onViewDetails;
  const OrderCard({
    super.key, 
    required this.order, 
    required this.onViewDetails
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: isDark ? Colors.black.withOpacity(0.2)
              : Colors.grey.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0,2)
            )
          ]
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(order.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #${order.OrderNumber}',
                          style: AppTextstyles.withColor(
                            AppTextstyles.h3, 
                            Theme.of(context).textTheme.bodyLarge!.color!
                            ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          '${order.itemCount} items . \$${order.totalAmount.toStringAsFixed(2)}',
                          style: AppTextstyles.withColor(
                            AppTextstyles.bodyMedium, 
                            isDark ? Colors.grey[400]! : Colors.grey[600]!,
                            ),
                        ),

                        const SizedBox(height: 8),

                        _buildStatusChip(
                          context,
                          order.statusString,
                          ),
                      ],
                    )
                  )
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey.shade200),
            InkWell(
              onTap: onViewDetails,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'View Details',
                  style: AppTextstyles.withColor(
                    AppTextstyles.bodyMedium, 
                    Theme.of(context).primaryColor
                    ),
                )
              ),
            )
          ],
        ),
    );
  }

  Widget _buildStatusChip(BuildContext context, String type){
    Color getStatusColor(){
      switch(type){
        case 'active':
          return Colors.blue;
        case 'completed':
          return Colors.green;
        case 'cancelled':
          return Colors.red;
        default:
          return Colors.grey;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: getStatusColor().withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        type.capitalize!,
        style: AppTextstyles.withColor(
          AppTextstyles.bodySmall, 
          getStatusColor()
          ),
      ),
    );
  }
}

