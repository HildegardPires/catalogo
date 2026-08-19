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

        <div class="card">

            <img src="${produto.imagem}">

            <div class="info">

                <h2>${produto.nome}</h2>

                <p>${produto.descricao}</p>

                <div class="preco">${produto.preco}</div>

                <a
                    class="botao"
                    target="_blank"
                    href="https://wa.me/${numero}?text=${mensagem}">
                    Comprar pelo WhatsApp
                </a>

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