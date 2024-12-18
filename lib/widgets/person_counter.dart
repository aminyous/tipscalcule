import 'package:flutter/material.dart';

class PersonCounter extends StatelessWidget {
  const PersonCounter({
    super.key,
    required this.theme,
    required int personCount, 
    required this.onIncrement, 
    required this.onDecrement,
  }) : _personCount = personCount;

  final ThemeData theme;
  final int _personCount;

  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Split",
          style: theme.textTheme.titleMedium,
        ),
        Row(
          children: [
            IconButton(
                color: theme.colorScheme.primary,
                //onPressed: () => {},
                onPressed: onDecrement,
                icon: const Icon(Icons.remove)),
            Text(
              "$_personCount",
              style: theme.textTheme.titleMedium,
            ),
            IconButton(
                color: theme.colorScheme.primary,
                //onPressed: ()=>{},
                onPressed: onIncrement,
                icon: const Icon(Icons.add)),
          ],
        )
      ],
    );
  }
}