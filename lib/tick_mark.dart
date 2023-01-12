import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HeaderSun extends StatefulWidget {
  const HeaderSun({Key? key}) : super(key: key);

  State<HeaderSun> createState() => _HeaderSunState();
}

class _HeaderSunState extends State<HeaderSun> {
  late VideoPlayerController _controller;
  late VideoPlayer sdo;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://sdo.gsfc.nasa.gov/assets/img/latest/mpeg/latest_1024_0193.mp4');
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.initialize().then((_) {
      _controller.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    sdo = VideoPlayer(_controller);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.black,
        actions: [
          Expanded(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        clipBehavior: Clip.hardEdge,
                        child: IconButton(
                            iconSize: 120,
                            onPressed: () async {
                              await showDialog(
                                  context: context,
                                  builder: (_) {
                                    return Dialog(
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: SizedBox(
                                          height: MediaQuery.of(context).size.width,
                                          width: MediaQuery.of(context).size.width,
                                          child: sdo
                                      ),
                                    );
                                  } //SDOVideo()
                              );
                            },
                            icon: sdo
                        )//),
                    )
                )
              ],
            ),
          )
        ],
      ),
      body: const Text('SDO 193'),
    );
  }
}