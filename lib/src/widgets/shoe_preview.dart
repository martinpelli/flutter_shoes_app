import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  const ShoePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      width: double.infinity,
      height: 430.0,
      decoration: BoxDecoration(color: Color(0xffFFCF53), borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: const [_ShoeShadow(), _ShoeSize()],
      ),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  const _ShoeSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _SizeBox(
            size: 7,
          ),
          _SizeBox(
            size: 7.5,
          ),
          _SizeBox(
            size: 8,
          ),
          _SizeBox(
            size: 8.5,
          ),
          _SizeBox(
            size: 9,
          ),
          _SizeBox(
            size: 9.5,
          )
        ],
      ),
    );
  }
}

class _SizeBox extends StatelessWidget {
  final double size;

  const _SizeBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: (size == 9) ? const Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [if (size == 9) const BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5))]),
      child: Text(size.toString().replaceAll('.0', ''),
          style: TextStyle(color: (size == 9) ? Colors.white : const Color(0xffF1A23A), fontSize: 16.0, fontWeight: FontWeight.bold)),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  const _ShoeShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: const [
          Positioned(bottom: 20, right: 0, child: _Shadow()),
          Image(
            image: AssetImage('assets/azul.png'),
          )
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  const _Shadow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(100), boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}
