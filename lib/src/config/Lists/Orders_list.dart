import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_orders_container.dart';
import 'package:fast_shop/src/utils/widgets/Custom_wishlist_card.dart';

List<CustomOrdersContainer> orderlist = const [
  CustomOrdersContainer(
    status: "Cancelled",
    dateofev: "Cancelled on 13 Dec",
    typpay: "Cash on Delivery",
    imgpt: nikespts,
  ),
  CustomOrdersContainer(
    status: "Delivered",
    dateofev: "Delivered on 29 Dec",
    typpay: "Cash on Delivery",
    imgpt: adshsx,
  ),
  CustomOrdersContainer(
    status: "Delivered",
    dateofev: "Delivered on 31 May",
    typpay: "Cash on Delivery",
    imgpt: tsht,
  ),
  CustomOrdersContainer(
    status: "Cancelled",
    dateofev: "Cancelled on 15 July",
    typpay: "Cash on Delivery",
    imgpt: aplwt,
  ),
];
