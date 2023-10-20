import 'package:event_booking_app/core/widgets/button.dart';
import 'package:event_booking_app/core/widgets/card.dart';
import 'package:flutter/material.dart';

class RatingReviewsWidget extends StatelessWidget {
  const RatingReviewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: const Row(
              children: [
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.blue,
                  ),
                ),
                Icon(
                  Icons.star_rounded,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Text(
              '324 Ratings',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MyButton(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 15,
            ),
            label: 'Reviews',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
