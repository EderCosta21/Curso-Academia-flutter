import 'package:flutter/material.dart';

class DeliveryButton extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const DeliveryButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.width,
    this.height = 50,
  }) : super(key: key);

  @override
  State<DeliveryButton> createState() => _DeliveryButtonState();
}

class _DeliveryButtonState extends State<DeliveryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.label),
      ),
    );
  }
}
