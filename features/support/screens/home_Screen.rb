require "appium_lib"
class HomeScreen

def initialize
    @btn_Pesquisa= 'br.com.petz:id/imageView7'
    @txt_Pesquisa= 'br.com.petz:id/searchBox'
    @produto_Racao= "//android.widget.TextView[@text='Ração Golden Duo para Cães Adultos Sabor Salmão com Ervas e Cordeiro com Arroz - 15kg']"
    

end
def consultar_Produto
    sleep 1
    find_element(id: @btn_Pesquisa).click 
    find_element(id: @txt_Pesquisa).send_keys("Ração")
    find_element(xpath: @produto_Racao).click
    
    
    


    #sleep 2
    #session_Racao=find("#navbar-collapse-grid")
    #session_Racao.find('a', text:'Ração').click
end
def pesquisar_Produtos(nome)
    find_element(id: @btn_Pesquisa).click 
    find_element(id: @txt_Pesquisa).send_keys(nome)
    find_element(xpath: "//android.widget.TextView[@text='#{nome}']").click 
    sleep 7
    #find_element(xpath: @produto_Racao).click
end
end


