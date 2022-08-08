import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: test(),
  ));
}
class test extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Form"),),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          TextField(controller: t3,),
          ElevatedButton(onPressed: () {
            String a = t1.text;
            String b = t2.text;
            String c = t3.text;


            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);


            int sum = n1+n2+n3;
            print("sum = $sum");

          },
              child:Text ("Sum")),

          ElevatedButton(onPressed: () {
            String a = t1.text;
            String b = t2.text;
            String c = t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1>n2&&n1>n3)
              {
                print("A ia mex");
              }
            else if(n2>n3)
              {
                print("B is max");
              }
            else
            {
              print("C is max");
            }


          }, child: Text("Mex")),
          ElevatedButton(onPressed: () {
            String a = t1.text;
            String b = t2.text;
            String c = t3.text;

            int n1=int.parse(a);
            int n2=int.parse(b);
            int n3=int.parse(c);

            if(n1<n2&&n1<n3)
            {
              print("A ia min");
            }
            else if(n2<n3)
            {
              print("B is min");
            }
            else
            {
              print("C is min");
            }


          }, child: Text("Min"))
        ],
      ),
    );
  }
}
