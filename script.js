
// =============================================================
// CONFIGURAÇÃO
// =============================================================

const numeroWhatsApp = "5563984896172";


// =============================================================
// VARIÁVEIS
// =============================================================

let produtos = [];

let categoriaSelecionada = "Todos";


// =============================================================
// ELEMENTOS
// =============================================================

const containerProdutos =
    document.getElementById("produtos");

const containerCategorias =
    document.getElementById("categorias");

const containerCategoriasMobile =
    document.getElementById("categoriasMobile");

const pesquisa =
    document.getElementById("pesquisa");

const categoriaAtual =
    document.getElementById("categoriaAtual");

const contadorProdutos =
    document.getElementById("contadorProdutos");

const semProdutos =
    document.getElementById("semProdutos");


// =============================================================
// CARREGAR PRODUTOS
// =============================================================

async function carregarProdutos() {

    try {

        const resposta =
            await fetch("produtos.json");


        if (!resposta.ok) {

            throw new Error(
                `Erro HTTP: ${resposta.status}`
            );

        }


        produtos =
            await resposta.json();


        criarCategorias();

        mostrarProdutos();


    } catch (erro) {

        console.error(
            "Erro ao carregar produtos:",
            erro
        );

        containerProdutos.innerHTML = `

            <div class="col-12">

                <div class="alert alert-danger">

                    Não foi possível carregar
                    os produtos.

                </div>

            </div>

        `;

    }

}


// =============================================================
// CRIAR CATEGORIAS
// =============================================================

function criarCategorias() {


    // Pegar categorias

    const categorias =
        [
            ...new Set(

                produtos
                    .map(produto => produto.categoria)
                    .filter(categoria => categoria)

            )
        ]
        .sort();


    // Limpar menus

    containerCategorias.innerHTML = "";

    containerCategoriasMobile.innerHTML = "";


    // =========================================================
    // TODOS
    // =========================================================

    adicionarCategoria(
        "Todos",
        containerCategorias
    );


    adicionarCategoria(
        "Todos",
        containerCategoriasMobile
    );


    // =========================================================
    // CATEGORIAS
    // =========================================================

    categorias.forEach(
        categoria => {

            adicionarCategoria(
                categoria,
                containerCategorias
            );


            adicionarCategoria(
                categoria,
                containerCategoriasMobile
            );

        }
    );

}


// =============================================================
// ADICIONAR CATEGORIA AO MENU
// =============================================================

function adicionarCategoria(
    categoria,
    container
) {


    const botao =
        document.createElement("button");


    botao.type =
        "button";


    botao.className =
        "list-group-item list-group-item-action";


    if (
        categoria ===
        categoriaSelecionada
    ) {

        botao.classList.add(
            "active"
        );

    }


    botao.innerHTML = `

        ${
            categoria === "Todos"
                ? "🏪"
                : "🏷️"
        }

        <span class="ms-2">

            ${escaparHtml(categoria)}

        </span>

    `;


    botao.addEventListener(
        "click",
        function() {

            selecionarCategoria(
                categoria
            );


            // Fechar menu no celular

            const offcanvasElement =
                document.getElementById(
                    "menuCategorias"
                );


            const offcanvas =
                bootstrap.Offcanvas
                    .getInstance(
                        offcanvasElement
                    );


            if (offcanvas) {

                offcanvas.hide();

            }

        }
    );


    container.appendChild(
        botao
    );

}


// =============================================================
// SELECIONAR CATEGORIA
// =============================================================

function selecionarCategoria(
    categoria
) {


    categoriaSelecionada =
        categoria;


    // Atualizar título

    categoriaAtual.textContent =
        categoria === "Todos"
            ? "Todos os produtos"
            : categoria;


    // Recriar menus para atualizar
    // categoria ativa

    criarCategorias();


    // Mostrar produtos

    mostrarProdutos();

}


// =============================================================
// MOSTRAR PRODUTOS
// =============================================================

function mostrarProdutos() {


    const textoPesquisa =
        pesquisa.value
            .trim()
            .toLowerCase();


    let produtosFiltrados =
        produtos;


    // =========================================================
    // FILTRO POR CATEGORIA
    // =========================================================

    if (
        categoriaSelecionada !==
        "Todos"
    ) {

        produtosFiltrados =
            produtosFiltrados.filter(
                produto =>
                    produto.categoria ===
                    categoriaSelecionada
            );

    }


    // =========================================================
    // PESQUISA
    // =========================================================

    if (textoPesquisa) {

        produtosFiltrados =
            produtosFiltrados.filter(
                produto => {

                    const nome =
                        String(
                            produto.nome || ""
                        ).toLowerCase();


                    const descricao =
                        String(
                            produto.descricao || ""
                        ).toLowerCase();


                    const categoria =
                        String(
                            produto.categoria || ""
                        ).toLowerCase();


                    return (

                        nome.includes(
                            textoPesquisa
                        )

                        ||

                        descricao.includes(
                            textoPesquisa
                        )

                        ||

                        categoria.includes(
                            textoPesquisa
                        )

                    );

                }
            );

    }


    // =========================================================
    // CONTADOR
    // =========================================================

    contadorProdutos.textContent =
        produtosFiltrados.length === 1
            ? "1 produto"
            : `${produtosFiltrados.length} produtos`;


    // =========================================================
    // NENHUM PRODUTO
    // =========================================================

    if (
        produtosFiltrados.length === 0
    ) {

        containerProdutos.innerHTML =
            "";

        semProdutos.classList.remove(
            "d-none"
        );

        return;

    }


    semProdutos.classList.add(
        "d-none"
    );


    // =========================================================
    // RENDERIZAR
    // =========================================================

    containerProdutos.innerHTML =
        "";


    produtosFiltrados.forEach(
        produto => {

            criarCardProduto(
                produto
            );

        }
    );

}


// =============================================================
// CRIAR CARD
// =============================================================

function criarCardProduto(
    produto
) {


    const mensagem =
        encodeURIComponent(

            `Olá! Tenho interesse no produto:\n\n` +

            `${produto.nome}\n` +

            `Preço: ${formatarPreco(produto.preco)}`

        );


    const coluna =
        document.createElement("div");


    coluna.className =
        "col-12 col-sm-6 col-xl-4";


    coluna.innerHTML = `

        <div class="card h-100 shadow-sm border-0 produto-card">


            <!-- IMAGEM -->

            <img

				src="${escaparHtml(produto.imagem)}"
				class="card-img-top produto-imagem imagem-produto"
				alt="${escaparHtml(produto.nome)}"

                loading="lazy"

                onerror="
                    this.src='data:image/svg+xml;charset=UTF-8,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 width=%22600%22 height=%22600%22%3E%3Crect width=%22100%25%22 height=%22100%25%22 fill=%22%23eeeeee%22/%3E%3Ctext x=%2250%25%22 y=%2250%25%22 text-anchor=%22middle%22 dy=%22.3em%22 font-size=%2220%22%3Imagem indisponível%3C/text%3E%3C/svg%3E';
                "
				
				onclick="abrirImagem(
						'${escaparHtml(produto.imagem)}',
						'${escaparHtml(produto.nome)}'
				)"				

            >


            <div class="card-body d-flex flex-column">


                <!-- CATEGORIA -->

                <span
                    class="badge text-bg-secondary align-self-start mb-2">

                    ${escaparHtml(
                        produto.categoria
                    )}

                </span>


                <!-- NOME -->

                <h5 class="card-title">

                    ${escaparHtml(
                        produto.nome
                    )}

                </h5>


                <!-- DESCRIÇÃO -->

                <p class="card-text text-muted">

                    ${escaparHtml(
                        produto.descricao
                    )}

                </p>


                <!-- PREÇO -->

                <div class="mt-auto">


                    <div class="preco mb-2">

                        ${formatarPreco(
                            produto.preco
                        )}

                    </div>


                    <!-- ESTOQUE -->

                    ${
                        Number(produto.estoque) > 0

                        ?

                        `<small class="text-success d-block mb-2">
                            ✓ ${produto.estoque} em estoque
                        </small>`

                        :

                        `<small class="text-danger d-block mb-2">
                            ✕ Produto sem estoque
                        </small>`

                    }


                    <!-- WHATSAPP -->

                    ${
                        Number(produto.estoque) > 0

                        ?

                        `<a
                            href="https://wa.me/${numeroWhatsApp}?text=${mensagem}"
                            target="_blank"
                            class="btn btn-success w-100">

                            💬 Comprar pelo WhatsApp

                        </a>`

                        :

                        `<button
                            class="btn btn-secondary w-100"
                            disabled>

                            Produto indisponível

                        </button>`

                    }


                </div>


            </div>

        </div>

    `;


    containerProdutos.appendChild(
        coluna
    );

}


// =============================================================
// PESQUISA
// =============================================================

pesquisa.addEventListener(
    "input",
    function() {

        mostrarProdutos();

    }
);


// =============================================================
// FORMATAR PREÇO
// =============================================================

function formatarPreco(
    valor
) {


    if (
        valor === null ||
        valor === undefined ||
        valor === ""
    ) {

        return "R$ 0,00";

    }


    if (
        typeof valor === "number"
    ) {

        return valor.toLocaleString(
            "pt-BR",
            {
                style: "currency",
                currency: "BRL"
            }
        );

    }


    let texto =
        String(valor)
            .trim()
            .replace(/R\$/gi, "")
            .replace(/\s/g, "");


    if (
        texto.includes(",")
    ) {

        texto =
            texto
                .replace(/\./g, "")
                .replace(",", ".");

    }


    const numero =
        parseFloat(texto);


    if (
        isNaN(numero)
    ) {

        return "R$ 0,00";

    }


    return numero.toLocaleString(
        "pt-BR",
        {
            style: "currency",
            currency: "BRL"
        }
    );

}


// =============================================================
// ESCAPAR HTML
// =============================================================

function escaparHtml(
    texto
) {

    if (
        texto === null ||
        texto === undefined
    ) {

        return "";

    }


    return String(texto)

        .replace(
            /&/g,
            "&amp;"
        )

        .replace(
            /</g,
            "&lt;"
        )

        .replace(
            />/g,
            "&gt;"
        )

        .replace(
            /"/g,
            "&quot;"
        )

        .replace(
            /'/g,
            "&#039;"
        );

}

// ======================================================
// ABRIR IMAGEM
// ======================================================

function abrirImagem(imagem, titulo) {

    document.getElementById("imagemModal").src = imagem;

    document.getElementById("tituloImagem").textContent = titulo;

    const modal = new bootstrap.Modal(
        document.getElementById("modalImagem")
    );

    modal.show();

}

// =============================================================
// INICIALIZAÇÃO
// =============================================================

carregarProdutos();