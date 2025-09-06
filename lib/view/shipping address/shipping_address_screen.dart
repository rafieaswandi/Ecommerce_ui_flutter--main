import 'package:ecommerce_ui/utils/app_textstyles.dart';
import 'package:ecommerce_ui/view/shipping%20address/models/address.dart';
import 'package:ecommerce_ui/view/shipping%20address/repositories/address_repository.dart';
import 'package:ecommerce_ui/view/shipping%20address/widgets/address_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class ShippingAddressScreen extends StatelessWidget {
  final AddressRepository _repository = AddressRepository();
  ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          "Shipping Address",
          style: AppTextstyles.withColor(
            AppTextstyles.h3, 
            isDark ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(Icons.add_circle_outline,
          color: isDark ? Colors.white : Colors.black,
          ))
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _repository.getAddresses().length,
        itemBuilder: (context, index) => _buildAddressCard(context, index),
        ),
    );
  }

  Widget _buildAddressCard(BuildContext context, int index) {
    final address = _repository.getAddresses()[index];

    return AddressCard(
      address: address, 
      onEdit: () => _showEditAddressBottomSheet(context, address),
      // onDelete: () => _showDeleteConfirmation(context),  
    );
  }

  void _showEditAddressBottomSheet(BuildContext context, Address address){
    final isDark = Theme.of(context).brightness == Brightness.dark;

    Get.bottomSheet(
      Container(
        padding: const  EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit Address',
              style: AppTextstyles.withColor(
                AppTextstyles.h3,
                Theme.of(context).textTheme.bodyLarge!.color!,
              ),
            ),
            IconButton(onPressed: () => Get.back(), 
            icon: Icon(Icons.close, color: isDark ? Colors.white : Colors.black,))
          ],
        ),
      )
    );
  }
}