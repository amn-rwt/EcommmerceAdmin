import 'package:flutter/material.dart';

import '../../features/categories/categories_view.dart';
import '../../features/products/products_view.dart';

List<Widget> screens = [
  const ProductsView(),
  const CategoriesView(),
];

List<String> tabs = [
  'Products',
  'Product Category',
];
