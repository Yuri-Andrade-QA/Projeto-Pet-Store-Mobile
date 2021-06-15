
Dado('que eu esteja na tela inicial do aplicativo') do
    end
  
  
Quando('faço uma consulta por ração e seleciono o terceiro produto da lista') do
    @home.consultar_Produto
  end
  
  Então('deve ser exibido o titulo {string}') do |titulo|
    expect(@produto.titulo_Produto.text).to eql titulo
  end
  
  
  Então('o preço normal {string}') do |normal|
   expect(@produto.preco_Produto.text).to eql normal
  end
  
  Então('o preço para assinantes {string}') do |assinantes|
    expect(@produto.preco_Assinante_Produto.text).to include assinantes
  end

  Entao('as caracteristicas devem continuar as mesmas') do
    expect(@carrinho.titulo_Produto_Carrinho.text).to include "Ração Golden Duo para Cães Adultos Sabor Salmão com Ervas e Cordeiro com Arroz - 15kg"  
    expect(@carrinho.titulo_Produto_Carrinho.text).to include  "Golden"
    expect(@carrinho.preco_Carrinho.text).to eql "154,90"
  end







  Dado('que {string} é um novo produto') do |produto_code|                                 
    file= YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/produtos.yaml"))
    @produtomassa = file[produto_code]    
  end                                                                                
                                                                                     
  Quando('faço consultas por produto') do                                            
    @home.pesquisar_Produtos(@produtomassa['nome'])
    sleep 2
  end                                                                                
                                                                                     
  Então('devo ver as caracteristicas do produto') do                                 
    expect(@produto.titulo_Produtos.text).to eql(@produtomassa['nome'])  
    expect(@produto.titulo_Produtos.text).to include(@produtomassa['fornecedor'])
    expect(@produto.preco_Produto.text).to eql(@produtomassa['preço normal'])
    expect(@produto.preco_Assinante_Produto.text).to include(@produtomassa['preço assinante'])
  end        
  
  Quando('adiciono ao carrinho') do
    @produto.adicionar_Ao_Carrinho
  end
  
  Então('as caracteristicas devem continuar identicas') do
    expect(@carrinho.titulo_Produto_Carrinho.text).to include(@produtomassa['nome'])  
    expect(@carrinho.titulo_Produto_Carrinho.text).to include(@produtomassa['fornecedor'])
    expect(@carrinho.preco_Carrinho.text).to eql(@produtomassa['preço normal'])
    
  end
                                                                                   

  