import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({required this.icon, required this.title, required this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.dashboard, size: 40.0),
    title: 'Refer',
    subtitle:
        'Invite your friends to gogoBus by sharing your referral code via WhatsApp , SMS , Facebook , Twitter , and Email.',
  ),
  Option(
    icon: Icon(Icons.do_not_disturb, size: 40.0),
    title: 'Earn',
    subtitle:
        'Your gogoMoney wallet gets credited with 1.0 % whenever your friend books a ticket on gogoBus.',
  ),
  Option(
    icon: Icon(Icons.account_circle, size: 40.0),
    title: 'Reap the benefits',
    subtitle:
        'Use the credit in your gogoMoney wallet towards booking tickets or buying gogoPass.',
  ),
  Option(
    icon: Icon(Icons.invert_colors, size: 40.0),
    title: 'Repeat',
    subtitle:
        'Share your referral code to as many friends as you like . Collect as much as gogoMoney as you can.',
  ),
];
