var ativa = false;

switch (string_upper(tipo_logica)){
	
	case "TOGGLE":
		if (array_length(entradas) > 0) {
			var botao = entradas[0];
			if (instance_exists(botao)) {
				var estado_atual = botao.ligado;

				// Detecção de borda: se antes estava desligado e agora está ligado
				if (!entrada_anterior && estado_atual) {
					ligado = !ligado; // alterna o estado
				}

				entrada_anterior = estado_atual; // atualiza para próxima verificação
			}
		}
	break;
	
	case "AND":
		ativa = true;
		for (var i = 0; i < array_length(entradas); i++){
			var botao = entradas[i];
			if (instance_exists(botao) && !botao.ligado){
				ativa = false;
				break;
			}
		}
		
		ligado = ativa;
		
	break;
	
	case "OR":
		for (var i = 0; i < array_length(entradas); i++) {
			var b = entradas[i];
			if (instance_exists(b) && b.ligado) {
				ativa = true;
			}
		}
		
		ligado = ativa;
		
	break;

	case "NOT":
		// NOT só usa a primeira entrada
		if (array_length(entradas) > 0) {
			var b = entradas[0];
			if (instance_exists(b)) {
				ativa = !b.ligado;
			}
		}
		
		ligado = ativa;
		
	break;
}

sprite_luz();