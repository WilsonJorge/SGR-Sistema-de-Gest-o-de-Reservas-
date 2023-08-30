<%@ page import="projecto.intellica.hotel.Pagamento; projecto.intellica.hotel.Quarto" %>
<!DOCTYPE html>
<html>
        <head>
            %{--<meta name="layout" content="main" />--}%
            %{--<title>Relatório de Reservas</title>--}%
        </head>
        <body>

        <style>
        /* Estilos para o formulário */
        form {
            display: flex;
            flex-wrap: wrap;
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        label {
            flex: 1;
            margin-right: 10px;
            margin-bottom: 5px;
            text-align: right;
        }

        input[type="date"],
        /*input[type="text"] {*/
            /*flex: 2;*/
            /*padding: 8px;*/
            /*margin-bottom: 10px;*/
            /*border: 1px solid #ccc;*/
            /*border-radius: 3px;*/
        /*}*/
        select {
            flex: 2;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }


        button {
            flex: 1;
            margin-top: 5px;
            margin-bottom: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            /*padding: 5px 10px;*/
            padding-right: 10px;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;

        }

        /* Estilos para a tabela */
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }
        th {
            background-color: #f5f5f5;
            font-weight: bold;
        }

        tbody tr:hover {
            background-color: #f9f9f9;
        }
        .styled-table {
            border-collapse: collapse;
            width: 100%;
        }

        .styled-table th,
        .styled-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .styled-table th {
            background-color: #f2f2f2;
        }

        .styled-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .styled-table tr:hover {
            background-color: red;
        }

        /* Ajuste para melhor leitura em dispositivos pequenos */
        @media screen and (max-width: 600px) {
            .styled-table {
                font-size: 12px;
            }
        }

        /*Esterlizacao do Butao de Impressao */
        .print-button-container {
            text-align: center;
            margin-top: 20px;
        }

        .print-button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        .print-button:hover {
            background-color: #0056b3;
        }
        </style>


        <!-- Dentro da sua view 'report.gsp' -->
        <div class="print-button-container">
            <button class="print-button" onclick="printReport()">Imprimir Relatório</button>
        </div>

        <form action="${createLink(controller: 'report', action: 'generateHospede')}" method="GET">
            <div class="filter-container">
                <label for="startDate">Data de Início:</label>
                <input type="date" name="startDate" id="startDate" value="${new Date().format('yyyy-MM-dd')}">

                <label for="endDate">Data de Término:</label>
                <input type="date" name="endDate" id="endDate" value="${new Date().format('yyyy-MM-dd')}">
            </div>

            <div class="button-container">
                <button type="submit">Buscar</button>
            </div>
        </form>

        <!-- Aqui você pode exibir os resultados da pesquisa -->
        <table class="styled-table">
            <thead>
            <tr>
                <th>Referencia</th>
                <th>Hóspede</th>
                <th>Provincia</th>
                <th>Quarto</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${reservas}" var="reserva">
                <tr>
                    <td>${reserva.hospede.nomeHospede}</td>
                    <td>${reserva.hospede.referencia}</td>
                    <td>${reserva.hospede.nacionalidadeHospede}</td>
                    <td>${reserva.quartos.size()}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <script>
            function printReport() {
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
                                /* Estilos para a tabela */
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }
        th {
            background-color: #f5f5f5;
            font-weight: bold;
        }

        tbody tr:hover {
            background-color: #f9f9f9;
        }
        .styled-table {
            border-collapse: collapse;
            width: 100%;
        }

        .styled-table th,
        .styled-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .styled-table th {
            background-color: #f2f2f2;
        }

        .styled-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .styled-table tr:hover {
            background-color: red;
        }

        /* Ajuste para melhor leitura em dispositivos pequenos */
        @media screen and (max-width: 600px) {
            .styled-table {
                font-size: 12px;
            }
        }



                        }
          </style>
        </head>
        <body>
          <table class="styled-table">
            <thead>
            <tr>
                <th>Referência</th>
                <th>Hóspede</th>
                <th>Quarto</th>
                <th>Valor</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${reservas}" var="reserva">
                <tr>
                    <td>${reserva.hospede.nomeHospede}</td>
                    <td>${reserva.hospede.referencia}</td>
                    <td>${reserva.hospede.nacionalidadeHospede}</td>
                    <td>${reserva.quartos.size()}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
                    <!-- Adicione mais conteúdo do recibo aqui, se necessário -->
                    </body>
                    </html>
                    `);
      janelaImpressao.document.close();
      janelaImpressao.print();
    }
  </script>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                var reservaModal = new bootstrap.Modal(document.getElementById("reservaModal"));
                reservaModal.show();
            });
        </script>
        </body>
</html>