#!/bin/bash
Principal() {
  clear;
  if [ $# != 1 ]; then
    echo "Para utilizar esse software corretamente, deve-se passar também o diretório que deseja analisar!"
    echo "Tente novamente..."; sleep 2; exit
  fi

  if [ -d $1 ]; then
    echo "Analisando o diretório fornecido..."
    contagem=0
    for arq in `ls $1`; do
      contagem=$((contagem+1))
    done
    echo "A pasta fornecida tem $contagem itens!"
    sleep 3; exit

  else
    echo "O parâmetro passado não é um diretório!"
    echo "Tente novamente..."; sleep 2; exit
  fi

}
Principal "$@"
