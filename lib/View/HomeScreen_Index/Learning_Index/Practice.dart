import 'dart:convert';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/widget/app_Paddings/app_Paddings.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
import '../../../Utils/widget/AppText/App Text.dart';
class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  String statusText = "";
  bool isComplete = false;
  AudioPlayer player = AudioPlayer();
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xff0D6E5D),
                    border: Border.all(color: Colors.white,width: 1)
                ),
                child:  Center(
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
                      },
                    child: Text("ب",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: AppPaddings.defaultPaddingLR20,
                child: Container(
                  width: Get.width,
                  decoration:  BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [

                          AppColors.Light_Cyan,
                          AppColors.Lignt_Green,
                        ]),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 40,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                  Container(
                    height: 54,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration:   BoxDecoration(
                      gradient:  LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.Light_Cyan,
                            AppColors.Lignt_Green,
                          ]),),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () async {
                                String audioasset = "assets/audio/alphabet_ur.mp3";
                                ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
                                Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                                int result = await player.playBytes(soundbytes);
                                if(result == 1){ //play success
                                  print("Sound playing successful.");
                                }else{
                                  print("Error while playing sound.");
                                }
                              },
                              icon: Icon(Icons.play_arrow),
                              label:Text("Play")
                          ),


                          ElevatedButton.icon(
                              onPressed: () async {
                                int result = await player.stop();

                                // You can pasue the player
                                // int result = await player.pause();

                                if(result == 1){ //stop success
                                  print("Sound playing stopped successfully.");
                                }else{
                                  print("Error on while stopping sound.");
                                }
                              },
                              icon: Icon(Icons.stop),
                              label:Text("Stop")
                          ),
                        ],

                      )
                  ),

                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: AppPaddings.defaultPaddingLR20,
                            child: Container(
                              height: 54,
                              width: Get.width/1.1,
                              decoration:   BoxDecoration(
                                gradient:  LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [

                                      AppColors.Light_Cyan,
                                      AppColors.Lignt_Green,
                                    ]),),
                              child: Padding(
                                padding: AppPaddings.defaultPaddingLR20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:29,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: AppColors.WHITE_COLOR
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed:
                                        // If not yet listening for speech start, otherwise stop
                                        _speechToText.isNotListening ? _startListening : _stopListening,
                                        tooltip: 'Listen',
                                        icon: Icon(_speechToText.isNotListening ? Icons.mic : Icons.mic_off,color: AppColors.Primary_Color,),
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          AppText(
                            title: _speechToText.isListening
                                ? '$_lastWords'
                                : _speechEnabled
                                ? 'Tap the microphone to start listening...'
                                : 'Speech not available',
                            color: AppColors.WHITE_COLOR,
                            size: 15,
                          ),
                        ],
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
                         // Get.toNamed('/OTP');
                        }, child:
                        Text("Start ",
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
              SizedBox(
                height: 20,
              ),
              CircularPercentIndicator(
                radius: 80.0,

                progressColor:Color(0xff04F5AC),
                lineWidth: 20.0,
                animationDuration: 1200,
                animation: true,
                percent: 0.7,
                center:  Text(
                  "70.0%",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),),
              SizedBox(
                height: 20,
              ),
              Container(
                height:   48,
                width: 153,
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [

                        AppColors.Light_Cyan,
                        AppColors.Lignt_Green,
                      ]),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 40,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: TextButton(onPressed: () {
                  Get.toNamed('/QuizScreen');
                }, child:
                Text("Test/Quiz",
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
    ])
    );
  }


}
/*


 */


/*


 */