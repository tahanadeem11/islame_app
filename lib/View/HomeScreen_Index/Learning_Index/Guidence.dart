import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/widget/app_Paddings/app_Paddings.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
import '../../../Utils/widget/AppText/App Text.dart';


class Guidence extends StatefulWidget {
  const Guidence({Key? key}) : super(key: key);

  @override
  State<Guidence> createState() => _GuidenceState();
}

class _GuidenceState extends State<Guidence> {
  SpeechToText _speechToText = SpeechToText();

  bool _speechEnabled = false;
  AudioPlayer player = AudioPlayer();
  String _lastWords = '';

  // final List_of_wordscontroller = Get.find<List_of_wordsController>();
  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  /// This has to happen only once per app
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }
  List<String> litems = ["01","02","03","04",
    "05","06","07","08",
    "09","10","11","12",
    "13","14","15","16"
  ];

  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: <Color>[
                  AppColors.Light_Cyan,
                  AppColors.Lignt_Green,]),
          ),
        ),
        elevation: 0,
        centerTitle: true,


        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body:  Stack(
        children: [
        Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          AppImages.backGropund,
          fit: BoxFit.fill,
        ),
      ),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: AppPaddings.defaultPaddingLR20,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Text("Baa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff0D6E5D),
                            border: Border.all(color: Colors.white,width: 1)
                          ),
                          child: Center(
                            child: TextButton(

                                onPressed: () async {
                                String audioasset = "assets/audio/Baa Sound.mp4";
                                ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                                Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                                int result = await player.playBytes(soundbytes);
                                if(result == 1){ //play success
                                  print("Sound playing successful.");
                                }else{
                                  print("Error while playing sound.");
                                }
                              }, child: Text("ب",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            ),
                          ),
                        ),
                        Text("با",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 200,
                      width: Get.width,
                      child: Image.asset("assets/images/video.png",
                      fit: BoxFit.fill,
                      ),
                    ),

                    Container(
                      child: Image.asset("assets/images/Star.png"),
                    ),

                    Text('آپ کی بنیادی "a" آواز۔ سیب میں "a" کی طرح۔ یہ ان حروف میں سے ایک ہے جو کافی مختلف ہو سکتے ہیں، ایک مختصر "a"، لمبی "a"، یا یہاں تک کہ "ee" آواز کے ساتھ۔ تاہم، اس کا تلفظ کرنا کافی آسان ہے۔',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height:   48,
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                          color: AppColors.Field_and_Button_Color,
                          border: Border.all(color: AppColors.WHITE_COLOR,
                              width: 1
                          )
                      ),
                      child: TextButton(onPressed: () {
                       Get.toNamed('/Practice');
                      }, child:
                      Text("Practice  ",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),


                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
      ]),

    );
  }
}
