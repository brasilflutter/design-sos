import 'package:flutter/material.dart';

BorderRadius borderRadiusFromJson(Map<String, dynamic>? json) =>
    BorderRadius.only(
        topLeft: Radius.circular(json?['topLeft'] ?? 0),
        topRight: Radius.circular(json?['topRight'] ?? 0),
        bottomLeft: Radius.circular(json?['bottomLeft'] ?? 0),
        bottomRight: Radius.circular(json?['bottomRight'] ?? 0));
