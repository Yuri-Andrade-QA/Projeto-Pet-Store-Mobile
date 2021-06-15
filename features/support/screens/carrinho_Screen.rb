class CarrinhoScreen 
    def initialize
        @txt_preco= 'br.com.petz:id/tv_product_price'
        @txt_titulo= 'br.com.petz:id/tv_product_name'
    end
    def titulo_Produto_Carrinho
        return find_element(id: @txt_titulo)
    end
     def preco_Carrinho
        return find_element(id: @txt_preco)
     end
    end

