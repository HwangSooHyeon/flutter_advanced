import 'package:flutter/material.dart';
import 'package:flutter_advanced/common/component/pagination_list_view.dart';
import 'package:flutter_advanced/order/component/order_card.dart';
import 'package:flutter_advanced/order/model/order_model.dart';
import 'package:flutter_advanced/order/provider/order_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderScreen extends ConsumerWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaginationListView<OrderModel>(
      provider: orderProvider,
      itemBuilder: <OrderModel>(_, index, model) {
        return OrderCard.fromModel(
          model: model,
        );
      },
    );
  }
}
