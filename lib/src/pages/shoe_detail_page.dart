import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/providers/shoe_provider.dart';
import 'package:provider/provider.dart';

import '../helpers/helper.dart';
import '../widgets/custom_widgets.dart';

class ShoeDetailPage extends StatelessWidget {
  const ShoeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusBarToLight();
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            const Hero(tag: 'shoePreview', child: ShoePreview(fullscreen: true)),
            Positioned(
                top: 80,
                child: FloatingActionButton(
                  onPressed: () {
                    changeStatusBarToDark();
                    Navigator.pop(context);
                  },
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
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          const Text('\$180.0', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          const Spacer(),
          Bounce(from: 8, delay: const Duration(microseconds: 500), child: const OrangeButton(width: 120, height: 40, text: 'Buy Now')),
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
              Positioned(left: 90, child: _ColorButton(Color(0xffC6d642), 4, 'assets/verde.png')),
              Positioned(left: 60, child: _ColorButton(Color(0xffFFaD29), 3, 'assets/amarillo.png')),
              Positioned(left: 30, child: _ColorButton(Color(0xff2099F1), 2, 'assets/azul.png')),
              _ColorButton(Color(0xff364D56), 1, 'assets/negro.png'),
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
  final int index;
  final String urlImage;

  const _ColorButton(
    this.color,
    this.index,
    this.urlImage, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ShoeProvider shoeProvider = Provider.of<ShoeProvider>(context, listen: false);
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () => shoeProvider.assetImage = urlImage,
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
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
