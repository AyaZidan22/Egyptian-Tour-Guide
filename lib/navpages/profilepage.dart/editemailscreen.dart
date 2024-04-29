import 'package:flutter/material.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:travelapp/Component/responsive_button.dart';

class EditEmailScreen extends StatefulWidget {
  const EditEmailScreen({Key? key}) : super(key: key);

  @override
  _EditEmailScreenState createState() => _EditEmailScreenState();
}

class _EditEmailScreenState extends State<EditEmailScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Email'),
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'New Email',
            ),
          ),
          const SizedBox(height: 20),
          ResponsiveButton(
              text: "Log Out",
              backgroundColor: AppColors.mainColor,
              textColor: Colors.white,
              width: 150,
              isResponsive: true,
              onClick: () {})
        ]),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
