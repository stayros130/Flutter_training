import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Stitch',
      amount: 9.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Doctor',
      amount: 1.99,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The smth'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}