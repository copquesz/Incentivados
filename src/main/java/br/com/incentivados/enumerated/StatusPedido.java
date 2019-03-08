package br.com.incentivados.enumerated;

import lombok.Getter;

@Getter
public enum StatusPedido {
	
	PENDENTE(0, "Pendente"),
    RECUSADO(1, "Recusado"),
    APROVADO(2, "Aprovado");

    private int id;
    private String descricao;

    StatusPedido(int id, String descricao){
        this.id = id;
        this.descricao = descricao;
    }

}
