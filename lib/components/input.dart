import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final bool isPassword;
  final int? maxLine;

  const Input({
    super.key,
    required this.label,
    this.maxLine,
    this.prefixIcon,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword && isHidden,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                child: Icon(
                  isHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onTap: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
              )
            : null,
      ),
    );
  }
}
