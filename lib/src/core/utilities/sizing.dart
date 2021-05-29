import 'package:flutter/material.dart';

class SizeReference {
  SizeReference(this.context);
  final BuildContext context;
  get h => MediaQuery.of(context).size.height;
  get w => MediaQuery.of(context).size.width;
}
