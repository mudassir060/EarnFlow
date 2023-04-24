
import 'package:flutter/material.dart';

import '../constant/style.dart';
import 'myspacer.dart';

Widget mytextfield(title, ctrl, vwidth, icon, endicon, {required TextInputType keyboardType, 
String? Function(dynamic)? valid}) 
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: vwidth-50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          
          border: Border.all(color: borderColor)),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          myspacer(0.0, 3.0),
          Padding(
            padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8),
            child: SizedBox(
              height: 40,
               width: 40,
              //color: Colors.black,
              child: Image(
                image: AssetImage(icon),
                
              ),
            ),
          ),
          myspacer(0.0, 5.0),
          SizedBox(
              width: vwidth-150,
              child: TextFormField(
                keyboardType: keyboardType,
                validator:valid,
                controller: ctrl,
                decoration:
                    InputDecoration(hintText: title, border: InputBorder.none),
                
              )),
          if (endicon != null)
            Image(image: AssetImage(endicon), height: 30, width: 30),
        ],
      ),
    ),
  );
}
