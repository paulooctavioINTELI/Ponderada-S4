// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Declaração do contrato
contract DocumentosEmbarque {
    // Variável de estado para armazenar a idade do passageiro
    // Por padrão, a idade é definida como 18 anos
    uint public idade = 18;

    // Variável para armazenar o endereço do dono do contrato
    address private owner;

    // Construtor: chamado no momento da implantação do contrato
    // Define o dono do contrato como o endereço que implantou o contrato
    constructor() {
        owner = msg.sender; // 'msg.sender' é quem está criando o contrato
    }

    // Função para definir a idade do passageiro
    // Somente o dono do contrato pode alterar a idade
    function setIdade(uint _idade) public {
        // Verifica se o chamador da função é o dono do contrato
        require(msg.sender == owner, "Somente o dono pode definir a idade");
        idade = _idade; // Atribui o valor recebido à variável de estado 'idade'
    }

    // Função para obter a idade do passageiro
    // Essa função é 'view' porque não modifica o estado do contrato
    function getIdade() public view returns (uint) {
        return idade; // Retorna o valor da variável de estado 'idade'
    }
}