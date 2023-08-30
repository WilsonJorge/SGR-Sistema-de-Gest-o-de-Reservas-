<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <title>Reserva de Sucesso</title>
 <style>
         body {
             font-family: Arial, sans-serif;
         }

         h1 {
             text-align: center;
         }

         ul {
             list-style-type: none;
             padding: 0;
         }

         ul li {
             margin-bottom: 10px;
         }
 </style>

</head>

<body>
<!-- Modal de Reserva -->
<div class="modal fade" id="reservaModal" tabindex="-1" aria-labelledby="reservaModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="reservaModalLabel">Reserva Confirmada</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>
            </div>
            <div class="modal-body">
                <p>Sua reserva foi feita com sucesso!</p>
                <!-- Detalhes da reserva aqui -->
                <p>Detalhes da reserva:</p>
                <ul>
                    <li>Nome:${nomeHospede}</li>
                    <li>Apelido:${apedlidoHospede}</li>
                    <li>Numero dos Acompanhantes:${numeroAcompanhante}</li>
                    <li>Numero de Criancas:${numeroCrianca}</li>
                    <li>Numero de Adultos:${numeroAdultos}</li>
                    <li>Data Entrada: ${dataEntrada}</li>
                    <li>Data Saida: ${dataSaida}</li>
                    <li>Numero do Quarto:${quarto}</li>
                    <li>Valor Total:${valorApagarIVA} Mt</li>

                    <!-- Adicione mais detalhes da reserva aqui, conforme necessário -->
                </ul>
            </div>
            <div class="modal-footer">
                <g:link controller = 'public' action = 'home' class="btn btn-secondary">
                    Fechar
                </g:link>
                <button type="button" class="btn btn-primary" onclick="imprimirRecibo()">Imprimir</button>
            </div>
        </div>
    </div>
</div>

<script>
    function imprimirRecibo() {
        // Abra uma nova janela para a versão imprimível do recibo
        var janelaImpressao = window.open("", "_blank");
        janelaImpressao.document.open();
        janelaImpressao.document.write(`
        <html>
        <head>
          <title>Hotel Rest and Peace</title>
          <style>
                        body{
                                font-family: Arial, sans-serif;
                                background-color: #f2f2f2;
                                margin: 0;
                                padding: 0;
                                }

                                h1 {
                                text-align: center;
                                color: #333;
                                }

                                ul {


                                list-style-type: none;
                                padding: 0;
                                margin: 0;
                                }

                                ul li {
                                margin-bottom: 10px;
                                }
                        }
          </style>
        </head>
        <body>
          <h1>Recibo de Reserva</h1>
          <p>Detalhes da reserva:</p>
          <ul>

                     <li>Nome:${nomeHospede}</li>
                    <li>Apelido:${apedlidoHospede}</li>
                    <li>Numero dos Acompanhantes:${numeroAcompanhante}</li>
                    <li>Numero de Criancas:${numeroCrianca}</li>
                    <li>Numero de Adultos:${numeroAdultos}</li>
                    <li>Data Entrada: ${dataEntrada}</li>
                    <li>Data Saida: ${dataSaida}</li>
                    <li>Numero do Quarto:${quarto}</li>
                    <li>Valor Total:${valorApagarIVA} Mt</li>
            <!-- Adicione mais detalhes da reserva aqui, conforme necessário -->
            </ul>
            <!-- Adicione mais conteúdo do recibo aqui, se necessário -->
            </body>
            </html>
            `);
      janelaImpressao.document.close();
      janelaImpressao.print();
    }
  </script>

<!-- Exibir o modal de reserva após a reserva ser feita -->
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var reservaModal = new bootstrap.Modal(document.getElementById("reservaModal"));
        reservaModal.show();
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>







