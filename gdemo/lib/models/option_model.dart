import 'package:flutter/material.dart';

class Option {
  String title;
  String subtitle;

  Option({required this.title, required this.subtitle});
}

final options = [
  Option(
    title: 'Refer',
    subtitle:
        'Invite your friends to gogoBus by sharing your referral code via WhatsApp , SMS , Facebook , Twitter , and Email.',
  ),
  Option(
    title: 'Earn',
    subtitle:
        'Your gogoMoney wallet gets credited with 1.0 % whenever your friend books a ticket on gogoBus.',
  ),
  Option(
    title: 'Reap the benefits',
    subtitle:
        'Use the credit in your gogoMoney wallet towards booking tickets or buying gogoPass.',
  ),
  Option(
    title: 'Repeat',
    subtitle:
        'Share your referral code to as many friends as you like . Collect as much as gogoMoney as you can.',
  ),
];
