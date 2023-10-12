import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int rateCount;
  final double size;

  const StarRating({super.key,
    required this.rating,
    required this.rateCount,
    this.size = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(5, (index) {
          if (rating > index + 1) {
            return Icon(Icons.star, color: Colors.yellow, size: size);
          } else if (rating > index && rating < index + 1) {
            return Icon(Icons.star_half, color: Colors.yellow, size: size);
          } else {
            return Icon(Icons.star_border, color: Colors.yellow, size: size);
          }
        }),
        const SizedBox(width: 6),
        Text(
          '$rateCount',
          style: TextStyle(fontSize: size, color: Colors.grey[700]),
        ),
      ],
    );
  }
}