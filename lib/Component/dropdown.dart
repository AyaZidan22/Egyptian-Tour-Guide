import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatefulWidget {
  final String hintText;
  final ValueChanged<Object?>? onChanged;
  final Object? value;
  final List<Map<String, String>> items;

  const CustomDropdownFormField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.value,
    required this.items,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomDropdownFormFieldState createState() =>
      _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  Object? dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonFormField(
          items: widget.items.map((item) {
            return DropdownMenuItem(
              value: item['value'],
              child: Text(item['displayText']!),
            );
          }).toList(),
          onChanged: widget.onChanged,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          decoration: InputDecoration(
            hintText: widget.hintText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.grey.shade200,
            filled: true,
          )),
    );
  }
}
