        <%@ page import="projecto.intellica.hotel.Quarto" %>
<!DOCTYPE html>
<html>
        <head>
            <meta name="layout" content="main" />
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
        <!-- Aqui você pode exibir os resultados da pesquisa -->
        <div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Hospede</h4>
                        <table class="table">
                            <thead>
                            <tr>

                                <th>Nome</th>
                                <th>Apelido</th>
                                <th>Email</th>
                                <th>Bilhete de Identidade</th>
                                <th>Pais</th>
                                <th>Telefone</th>
                                <th>Idade</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${dados}" var="dado">
                                    <tr>
                                            <td>${dado?.nomeHospede}</td>
                                            <td>${dado?.apedlidoHospede}</td>
                                            <td>${dado?.emailHospede}</td>
                                            <td>${dado?.biHospede}</td>
                                            <td>${dado?.nacionalidadeHospede}</td>
                                            <td>${dado?.telefoneHospede}</td>
                                            <td>${dado?.idadeHospede}</td>
                                    </tr>
                             </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#myTable').DataTable();

        });
    </script>
        </body>
</html>