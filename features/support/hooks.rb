
Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10
  
  find_element(id: "br.com.petz:id/tv_start_without_login").click
  #find_element(id: "com.android.packageinstaller:id/permission_deny_button").click
  @home = HomeScreen.new
  @produto= ProdutoScreen.new
  @carrinho=CarrinhoScreen.new
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64)
  date=DateTime.now.to_s
  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver
end
