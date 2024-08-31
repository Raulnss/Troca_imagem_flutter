import 'package:flutter/material.dart';

class full extends StatefulWidget {
  @override
  State<full> createState() => fullState();
}
class fullState extends State<full> {
  String nada = "img1.jpeg";
  int cont = 0;
  int cont2 = 0;

  int cont3 = 0;
  int cont4 = 0;

  int cont5 = 0;
  int cont6 = 0;

  int licont = 0;
  int descont = 0;
    void mudarimg1() {
      setState(() {
        nada = "img1.jpeg";
        licont = cont;
        descont = cont2;
      });
    }    void mudarimg2() {
      setState(() {
        nada = "img2.jpeg";
        licont = cont3;
        descont = cont4;
      });
    }    void mudarimg3() {
      setState(() {
        nada = "img3.jpeg";
        licont = cont5;
        descont = cont6;
      });
    }
    void like(){
      setState(() {
        if (nada == "img1.jpeg") {
          cont++;
          licont = cont;
        } else if (nada == "img2.jpeg") {
          cont3++;
          licont = cont3;
        } else if (nada == "img3.jpeg") {
          cont5++;
          licont = cont5;
        }
      });
    }
    void deslike(){
      setState(() {
        if (nada == "img1.jpeg") {
          cont2++;
          descont = cont2;
        } else if (nada == "img2.jpeg") {
          cont4++;
          descont = cont4;
        } else if (nada == "img3.jpeg") {
          cont6++;
          descont = cont6;
        }
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("galeri"),),
      drawer: Drawer(
        child: Column(
          children: [
            ElevatedButton(onPressed: mudarimg1, child: const Text("img1")),
            ElevatedButton(onPressed: mudarimg2, child: const Text("img2")),
            ElevatedButton(onPressed: mudarimg3, child: const Text("img3")),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(nada),
            const Text("\n"),
            Center( 
             child:  Row(
              children: [
                const Padding(padding: EdgeInsets.all(80)),
              ElevatedButton(onPressed: like, child: const Icon(Icons.thumb_up_alt)),Text("$licont"),
              ElevatedButton(onPressed: deslike, child: const Icon(Icons.thumb_down_alt)),Text("$descont"),
            ],
            ),
            ),
          ],
        ), 
      ),
    );
  }
}