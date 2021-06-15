class ProdutoScreen 
def initialize
   @tituloProd= "//android.widget.TextView[@text='Ração Golden Duo para Cães Adultos Sabor Salmão com Ervas e Cordeiro com Arroz - 15kg']"
   @tituloProds= "br.com.petz:id/tv_prod_name"
   @precoProdVal= 'br.com.petz:id/tv_prod_main_price'
   @precoProdCifr= 'br.com.petz:id/tv_prod_main_price_currency'
   @precoAssina= 'br.com.petz:id/subscriptionPrice'
   @addToCart= "br.com.petz:id/btnAddToCart"

end



    def titulo_Produto
        return find_element(xpath: @tituloProd) 
    end
    def titulo_Produtos
        return find_element(id: @tituloProds)
    end
    def preco_Produto
        return find_element(id: @precoProdVal) 
        return find_element(id: @precoProdCifr)
    end
    def preco_Assinante_Produto
        return find_element(id: @precoAssina) 
        
    end 
 def adicionar_Ao_Carrinho
    find_element(id: @addToCart).click
    
    
 end
end
