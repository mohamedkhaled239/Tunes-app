import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class item extends StatelessWidget {
  final  Color color;
  final String link;
  const item({ 
    required this.color,
    required this.link,
  }) ;
    soundplay(String link){
    AssetsAudioPlayer.newPlayer().open(
    Audio(link),
 
);
  }
  @override
  Widget build(BuildContext context) {
    return   Expanded(
               
                child: GestureDetector(
                  onTap: (){
                    AssetsAudioPlayer.newPlayer().open(
                       Audio(link),);
                  },
                  child: Container(
                    
                    width: double.infinity,
                    color: color,
                    
                               
                ),
                ),
                );
                
              
            
  }
}
