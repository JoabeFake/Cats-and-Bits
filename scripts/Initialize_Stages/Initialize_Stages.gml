//Enum para bloqueado e desbloqueado
enum status_bloqueio {
	bloqueado, //0
	desbloqueado //1
}


//Fases Bloqueados e Desbloqueados
global.fases = [status_bloqueio.desbloqueado, status_bloqueio.bloqueado, status_bloqueio.bloqueado, status_bloqueio.bloqueado, status_bloqueio.bloqueado];

//global.spr_fases = [spr_fase_icon]; //Lista de Sprites para fases diferentes