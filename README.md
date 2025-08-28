# 🛫 Sistema de Pedidos de Passagens Aéreas em Dart

🌎 English version available below.

Este projeto é um exemplo de aplicação em Dart que simula o processamento de um pedido de passagem aérea, incluindo informações do passageiro, voo de ida e volta, taxa de pagamento e pontos acumulados. É ideal para praticar classes, objetos e orientação a objetos no Dart.

## ⚙️ Funcionalidades

- Criação de classes para Pedido, Passageiro, PassagemAerea, Voo e Taxa.
- Registro de informações detalhadas de voos de ida e volta.
- Cálculo e exibição de pontos acumulados e taxas.
- Impressão de um resumo completo do pedido no console.

## 📝 Estrutura do Código

- Pedido → contém o passageiro, a passagem, pontos e taxa.
- Passageiro → nome, sobrenome, data de nascimento e sexo.
- PassagemAerea → referência aos voos de ida e volta.
- Voo → número, tipo (classe), companhia, horários, locais, bagagem permitida e se é reembolsável.
- Taxa → valor e forma de pagamento.

O programa cria um pedido de exemplo e imprime no console todas as informações de forma organizada.

## ▶️ Como Rodar

**Opção Recomendada: DartPad**

- É mais simples e rápido rodar o código no DartPad
- Basta copiar e colar o código no editor e clicar em Run.

**Opção Local (se tiver Dart instalado)**

1. Salve o código em um arquivo main.dart.
2. Abra o terminal na pasta do arquivo.
3. Execute:

```dart run main.dart
```

O programa exibirá no console o resumo completo do pedido de passagem.

## 💡 Observações

- Este projeto é educacional, focado em praticar conceitos de Dart e OOP.
- Pode ser facilmente expandido para incluir mais voos, passageiros ou funcionalidades.