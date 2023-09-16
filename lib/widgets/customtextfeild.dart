import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextFeild extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isPass;
  const CustomTextFeild({
    super.key, required this.title, required this.icon, required this.isPass,
  });

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  @override
  void initState() {
    super.initState();
    focusNode=FocusNode();
    
    
  }

  @override
  void dispose() {

    super.dispose();
    focusNode.dispose();
    
  }
  bool obsecure=true;
  late FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height/14,
      child: TextFormField(
        focusNode: focusNode,
        obscureText: widget.isPass?obsecure:false,
        decoration: InputDecoration(
          
          suffixIcon:widget.isPass? IconButton(icon:Icon(obsecure?Icons.visibility:Icons.visibility_off),onPressed: () {
            setState(() {
              obsecure=!obsecure;
            });
          },):null,
          suffixIconColor: Colors.grey,
        prefixIcon: Icon(widget.icon),
        prefixIconColor: focusNode.hasFocus?primary:Colors.grey,
          hintText: widget.title,
            border: OutlineInputBorder(
    
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1))),
      ),
    );
  }
}
