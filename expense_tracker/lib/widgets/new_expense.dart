import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleContoller = TextEditingController();
  final _amountContoller = TextEditingController();


  @override
  void dispose() {
    _titleContoller.dispose();
    _amountContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleContoller,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title')
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: _amountContoller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '\$',
              label: Text('Amount'),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              const SizedBox(
                width: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleContoller.text);
                  print(_amountContoller.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}