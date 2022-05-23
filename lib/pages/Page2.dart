import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Icon(
          Icons.account_balance_wallet_outlined,
          size: 150,
        )
    );
  }
}
