import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ShoeDetailPage extends StatelessWidget {
  const ShoeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            const ShoePreview(fullscreen: true),
            Positioned(
                top: 80,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  child: const Icon(Icons.chevron_left, color: Colors.white, size: 60),
                ))
          ],
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(children: const [
            ShoeDescription(
              title: 'Nike Air Max 720',
              description:
                  "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
            ),
            _BuyNow(),
            _Colors(),
            _ActionButtons()
          ]),
        ))
      ]),
    );
  }
}

class _BuyNow extends StatelessWidget {
  const _BuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Text('\$180.0', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          Spacer(),
          OrangeButton(width: 120, height: 40, text: 'Buy Now'),
        ],
      ),
    );
  }
}

class _Colors extends StatelessWidget {
  const _Colors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: const [
              Positioned(left: 90, child: _ColorButton(Color(0xffC6d642))),
              Positioned(left: 60, child: _ColorButton(Color(0xffFFaD29))),
              Positioned(left: 30, child: _ColorButton(Color(0xff2099F1))),
              _ColorButton(Color(0xff364D56)),
            ],
          )),
          const OrangeButton(
            text: 'More related items',
            height: 30,
            width: 170,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  final Color color;

  const _ColorButton(
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const _ShadowedButton(icon: Icon(Icons.heart_broken, size: 25, color: Colors.red)),
        _ShadowedButton(icon: Icon(Icons.add_shopping_cart, size: 25, color: Colors.grey.withOpacity(0.4))),
        const _ShadowedButton(icon: Icon(Icons.settings, size: 25, color: Colors.grey))
      ]),
    );
  }
}

class _ShadowedButton extends StatelessWidget {
  final Icon icon;
  const _ShadowedButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55,
        height: 55,
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: -5, blurRadius: 20, offset: Offset(0, 10))]),
        child: icon);
  }
}