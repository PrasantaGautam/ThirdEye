import 'package:flutter/material.dart';

class TransactionModel {
  final IconData icon;
  final String title;
  final double amount;
  final String date;

  TransactionModel({
    required this.icon,
    required this.title,
    required this.amount,
    required this.date,
  });
}
