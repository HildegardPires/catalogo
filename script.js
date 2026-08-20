const numero = "5563999999999";

let lista = [];

async function carregarProdutos(){

    const resposta = await fetch("produtos.json");

    lista = await resposta.json();

    mostrarProdutos(lista);

}

function mostrarProdutos(produtos){

    const container = document.getElementById("produtos");

    container.innerHTML="";

    produtos.forEach(produto=>{

        const mensagem = encodeURIComponent(
            `Olá! Tenho interesse no produto:\n\n${produto.nome}\n${produto.preco}`
        );

container.innerHTML += `

<div class="col-sm-6 col-md-4 col-lg-3">

    <div class="card h-100 shadow-sm">

        <img
            src="${produto.imagem}"
            class="card-img-top"
            alt="${produto.nome}">

        <div class="card-body d-flex flex-column">

            <h5 class="card-title">
                ${produto.nome}
            </h5>

            <p class="card-text">
                ${produto.descricao}
            </p>

            <div class="preco mb-3">
                ${produto.preco}
            </div>

            <a
                href="https://wa.me/${numero}?text=${mensagem}"
                target="_blank"
                class="btn btn-success mt-auto">

                Comprar pelo WhatsApp

            </a>

        </div>

    </div>

</div>

`;

    });

}

document
.getElementById("pesquisa")
.addEventListener("keyup",function(){

    const texto=this.value.toLowerCase();

    const filtro=lista.filter(produto=>

        produto.nome.toLowerCase().includes(texto) ||

        produto.descricao.toLowerCase().includes(texto) ||

        produto.categoria.toLowerCase().includes(texto)

    );

    mostrarProdutos(filtro);

});

carregarProdutos();
