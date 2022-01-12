import 'package:adinesiaflutter/main.dart';
import 'package:adinesiaflutter/widget_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  //deklrasi controller
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Login Apps'),
      ),

      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              WidgetImage(),
              SizedBox(height: 20,),
              Text('Welcome to Adinesia Apps', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: etUsername,
                  decoration: InputDecoration(
                    hintText: 'Input Username'
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  controller: etPassword,
                  decoration: InputDecoration(
                      hintText: 'Input Password'
                  ),
                ),
              ),
              SizedBox(height: 5,),
              MaterialButton(onPressed: (){
                //menangkap value dari textfield
                String nNama = etUsername.text;
                String nPassword = etPassword.text;

                print('username ' + nNama);
                print('password ' + nPassword);

                //case yg bisa login username = admin & pass : 123123
                if((nNama == 'admin') && (nPassword =='123123')){
                  print('Berhasil login');
                  Fluttertoast.showToast(
                      msg: "Berhasil login",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                   => Page1(nNama: nNama, nPass: nPassword,)
                  ));
                }else{
                  print('gagal login');
                  Fluttertoast.showToast(
                      msg: "gagal login",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
              },
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Login'),
              )

            ],
          ),
        ),
      ),
    );
  }
}
