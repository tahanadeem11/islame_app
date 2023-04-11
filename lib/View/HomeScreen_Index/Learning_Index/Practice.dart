
import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islame_app_new_design/Utils/widget/app_Paddings/app_Paddings.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../../../Utils/Theme/app_color.dart';
import '../../../Utils/constants/assets_paths.dart';
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
  late Timer _timer;
  int _count = 80;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_count == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _count --;
          });
        }
      },
    );
  }
  int iconIndex =0;
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
              Padding(
                padding: AppPaddings.defaultPaddingLR20,
                child: Container(
                  height: 300,
                  width: Get.width,
                  decoration:  BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [

                          AppColors.Light_Cyan,
                          AppColors.Lignt_Green,
                        ]),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 40,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(

                            width: 270,
                            color: Color(0xff02825B),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,//Normal textInputField will be displayed
                              maxLines: 5,
                              decoration: InputDecoration(
                                fillColor: AppColors.Field_and_Button_Color,
                                labelStyle: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color:  AppColors.WHITE_COLOR.withOpacity(0.5)
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                    color: Colors.cyan,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Color(0xff02825B),
                                    width: 2.0,
                                  ),
                                ),
                              ),// when user presses enter it will adapt to it
                            ),
                          ),
                          iconIndex==0?
                          IconButton(
                              onPressed: () async {
                            setState(() {
                              iconIndex=0;
                            });
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
                              icon: Icon(Icons.play_arrow,
                          color: Colors.white,
                          )):
                          iconIndex==1?
                          IconButton(
                              onPressed: () async {
                                setState(() {
                                  iconIndex=1;
                                });
                                int result = await player.stop();

                                // You can pasue the player
                                // int result = await player.pause();

                                if(result == 1){ //stop success
                                  print("Sound playing stopped successfully.");
                                }else{
                                  print("Error on while stopping sound.");
                                }
                              },
                              icon: Icon(Icons.pause),
                          ):SizedBox(),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(

                            width: 270,
                            color: Color(0xff02825B),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              minLines: 1,//Normal textInputField will be displayed
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: _speechToText.isListening
                                    ? '$_lastWords'
                                    : _speechEnabled
                                    ? 'Tap the microphone to start listening...'
                                    : 'Speech not available',
                                hintStyle: TextStyle(
                                  color: AppColors.WHITE_COLOR,
                                  fontSize: 15,
                                ),
                                fillColor: AppColors.Field_and_Button_Color,
                                labelStyle: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color:  AppColors.WHITE_COLOR.withOpacity(0.5)
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                    color: Colors.cyan,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Color(0xff02825B),
                                    width: 2.0,
                                  ),
                                ),
                              ),// when user presses enter it will adapt to it
                            ),
                          ),
                          IconButton(onPressed: _speechToText.isNotListening ? _startListening : _stopListening,
                            tooltip: 'Listen',
                              icon: Icon(Icons.mic,
                            color: Colors.white,
                          ))
                        ],
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
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100)
                ),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2000,
                  percent: (_count.toDouble())/100,
                  center: Text("80%"),
                  linearStrokeCap: LinearStrokeCap.butt,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,

                      colors: [

                        Colors.red,
                        Colors.yellow,
                        Color(0xff26D922),
                        Color(0xff26D922),
                      ]),
                  clipLinearGradient: true,
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
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 40,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(
                          height: 20,
                        ),
                        Text("Hint",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                        ),
                        Text('آپ کی بنیادی "a" آواز۔ سیب میں "a" کی طرح۔ یہ ان حروف میں سے ایک ہے جو کافی مختلف ہو سکتے ہیں، ایک مختصر "a"، لمبی "a"، یا یہاں تک کہ "ee" آواز کے ساتھ۔ تاہم، اس کا تلفظ کرنا کافی آسان ہے۔',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
//play Button
/*
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
 */

//MicButton
/*
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
    title:
    color: AppColors.WHITE_COLOR,
    size: 15,
    ),
    ],
    ),
 */
