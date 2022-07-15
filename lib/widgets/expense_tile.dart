import 'package:flutter/material.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({
    Key? key,
    required this.value,
    required this.note,
  }) : super(key: key);

  final double value;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 8.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 25.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_circle_up_outlined,
                color: Colors.redAccent[700],
                size: 30.0,
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                note,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            "-₹$value",
            style:  TextStyle(
                color: Colors.redAccent[700],
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
