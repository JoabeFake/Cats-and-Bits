target = room;

if(!audio_is_playing(musica)){
	audio_play_sound(musica, 0, true); 
}

if(audio_is_playing(musica2)){
	audio_stop_sound(musica2)
}