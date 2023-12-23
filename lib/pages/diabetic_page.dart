import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DiabeticPage extends StatefulWidget {
  const DiabeticPage({super.key});

  @override
  State<DiabeticPage> createState() => _DiabeticPageState();
}

class _DiabeticPageState extends State<DiabeticPage> {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'JxMOsMDM1UM',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        isLive: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Diabetic')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubePlayer(
                controller: _controller,
                liveUIColor: Color.fromARGB(255, 49, 159, 52),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Diabetic Levels',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '0 – No DR sağlıklı\n1 – Mild hafif\n2 – Moderate orta\n3 – Severe ciddi\n4 – Proliferative DR Diyabetik retinopati',
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/diabet_info_0.png',
                width: 400,
              ),
              Text(
                'Resim büyütüldüğünde ufak kırmızı noktlalar var bunlar mikroanevrizma denir.\n \nEğer bu baloncuklar patlarsa kanama meydana gelir hemoraj',
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/diabet_info_1.png',
                width: 400,
              ),
              Text(
                'Damar geçirgenliği bozulursa protein sızıntısı başlar sert eksüda.\nGeri emilmesi yıllar sürer Yumuşak eksüda sert eksüda',
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/diabet_info_2.png',
                width: 400,
              ),
              Text(
                'Damarlar yetersiz kalınca göz kendi kendine yeni damarlar üretmeye başlar.\nBuna intraretinal mikrovasküler anormallikler denir',
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/diabet_info_3.png',
                width: 400,
              ),
              Text(
                'Neovaskülerizasyon.\nYeni damar oluşumu büyük damarlar için',
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/diabet_info_4.png',
                width: 400,
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'images/diabet_info_5.png',
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
