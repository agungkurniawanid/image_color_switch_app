import 'package:flutter/material.dart';

class MyContent extends StatefulWidget {
  const MyContent({super.key});

  @override
  State<MyContent> createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  var imgchoose = "https://i.imgur.com/qwGiinV.png";
  String textTheme = "Green";

  List<Color> listColor = [
    const Color(0xFF92E3A9),
    const Color(0xFFC53F3F),
    const Color(0xFFFF725E),
    const Color(0xFFFFC100),
    const Color(0xFFC6FF00),
    const Color(0xFF90CAF9),
    const Color(0xFF407BFF),
    const Color(0xFF7E57C2),
    const Color(0xFFBA68C8),
    const Color(0xFFFF81AE),
    const Color(0xFF263238),
    const Color(0xFF37474F),
    const Color(0xFFB0BEC5),
    const Color(0xFFFFFFFF),
  ];

  void listImage(int index) {
    Map<int, String> listImg = {
      0: "https://i.imgur.com/qwGiinV.png",
      1: "https://i.imgur.com/cscfIfA.png",
      2: "https://i.imgur.com/EbllzE1.png",
      3: "https://i.imgur.com/grM5d8R.png",
      4: "https://i.imgur.com/Jtd9mtD.png",
      5: "https://i.imgur.com/HkEPqbX.png",
      6: "https://i.imgur.com/Oc59spV.png",
      7: "https://i.imgur.com/r9qVRlY.png",
      8: "https://i.imgur.com/r9qVRlY.png",
      9: "https://i.imgur.com/OoDq2IG.png",
      10: "https://i.imgur.com/taBdcja.png",
      11: "https://i.imgur.com/HH7drxG.png",
      12: "https://i.imgur.com/55ORKD2.png",
    };
    setState(() {
      imgchoose = listImg[index] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFFFFFFFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20.0, top: 20.0),
            color: Colors.transparent,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose Theme",
                  style: TextStyle(color: Colors.black, fontSize: 24.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Pilih tema dari warna gambar sesuai yang \ntersedia dibawah ini!",
                  style: TextStyle(color: Color(0xFF757577), fontSize: 16.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(imgchoose, width: 250.0, height: 250.0),
                  const SizedBox(height: 10.0),
                  Text(
                    "${textTheme.toString()} Theme Image",
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              alignment: WrapAlignment.start,
              children: List.generate(14, (index) {
                Color colorTheme = listColor[index];
                return InkWell(
                  onTap: () {
                    listImage(index);
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: colorTheme,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
