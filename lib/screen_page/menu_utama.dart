import 'package:flutter/material.dart';
import 'audio_player_page.dart'; // Import halaman AudioPlayerPage
import 'video_player_page.dart'; // Import halaman VideoPlayerPage

class MenuUtamaPage extends StatelessWidget {
  const MenuUtamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Media Player App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 20,),              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AudioPlayerPage()),
                  );
                },
                child: Text('Audio Player'),
                textColor: Colors.white,
                color: Colors.black26,
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoPlayerPage()),
                  );
                },
                child: Text('Video Player'),
                textColor: Colors.white,
                color: Colors.black26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
