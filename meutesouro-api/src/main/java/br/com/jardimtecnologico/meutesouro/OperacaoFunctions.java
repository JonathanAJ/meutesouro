package br.com.jardimtecnologico.meutesouro;

import br.com.jardimtecnologico.meutesouro.model.Entrada;

import javax.ws.rs.POST;
import javax.ws.rs.Path;

@Path("/operacao")
public class OperacaoFunctions {

	@POST
	@Path("/criarNovaEntrada")
	public Entrada criarNovaEntrada(Entrada entrada) {
		return entrada;
	}
}
