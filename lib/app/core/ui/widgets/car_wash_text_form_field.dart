import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicons/uicons.dart';

class CarWashTextFormField extends StatefulWidget {
  final bool obscureText;
  final bool showEyeIcon;
  final String hintText;

  const CarWashTextFormField({
    super.key,
    this.obscureText = false,
    this.showEyeIcon = false,
    required this.hintText,
  });

  @override
  State<CarWashTextFormField> createState() => _CarWashTextFormFieldState();
}

class _CarWashTextFormFieldState extends State<CarWashTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 20,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          filled: true,
          fillColor: const Color(0xFFF2F2F7),
          suffixIcon: widget.showEyeIcon
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? UIcons.regularRounded.eye_crossed
                        : UIcons.regularRounded.eye,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
        obscureText: _obscureText,
      ),
    );
  }
}
