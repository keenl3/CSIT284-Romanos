import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontFamily: 'CustomFont',
                    color: Color.fromARGB(255, 255, 220, 238), // Light color text for title
                  ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '₱${expense.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 220, 238), // Light color text for title amount
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcons[expense.category],
                      color: Color.fromARGB(255, 255, 220, 238),  // Light color for icon
                    ),
                    const SizedBox(width: 8),
                    Text(
                      expense.formattedDate,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 220, 238), // Light color text for date
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}