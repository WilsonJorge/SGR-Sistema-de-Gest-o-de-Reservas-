<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Adicione as folhas de estilo do Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Adicione o JavaScript do Bootstrap 5 (já inclui o jQuery) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
<!-- Modal de Reserva -->
<!-- Modal de confirmação -->
<div class="image-container set-full-height" style="background-image: url('${resource(dir: 'images', file: 'wizard.jpg')}')">
    <div class="modal fade show" id="confirmacaoModal" tabindex="-1" aria-labelledby="confirmacaoModalLabel" aria-modal="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmacaoModalLabel">Confirmação de Cadastro</h5>
                    %{--<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>--}%
                    <g:link  type="button" controller="public" action="home" class="btn-close" aria-label="Fechar">
                    </g:link>
                </div>
                <div class="modal-body">
                    <p>Seu cadastro foi realizado com sucesso!</p>
                    <p>Bem-vindo(a) ao nosso site!</p>
                </div>
                <div class="modal-footer">
                    %{--<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>--}%
                    <g:link controller="public" action="home" class="btn btn-secondary">
                        Fechar
                    </g:link>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Estilos CSS -->
<style>
/* Estilo personalizado para o modal */
.modal-content {
    border-radius: 0;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
}

.modal-header {
    background-color: #007bff;
    color: #fff;
    border-bottom: none;
}

.modal-title {
    font-weight: bold;
}

.modal-body {
    padding: 20px;
}

.modal-footer {
    border-top: none;
}

/* Personalize as cores de fundo do botão primário e secundário */
.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
}

.btn-secondary {
    background-color: #6c757d;
    border-color: #6c757d;
}

/* Estilo para a imagem de fundo do modal */
.image-container {
    background-size: cover;
    background-position: center;
}

.set-full-height {
    height: 100vh;
}
</style>

<script>
    // Usando jQuery para disparar o modal quando a página for carregada
    $(document).ready(function () {
        $('#confirmacaoModal').modal('show');
    });
</script>
</body>

</html>






