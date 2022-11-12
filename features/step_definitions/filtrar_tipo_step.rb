  Dado('que existe um post de animal achado') do
    steps %Q{
        Dado que estou na página de cadastro de post
        Quando preencho o campo "Titulo" com "Gato encontrado na Barra Funda."
        Quando preencho o campo "Descricao" com "Gato possui a coleira com o nome de Belinha, por favor me contatar."
        Quando clico na opção Encontrado
        E clico em criar
    }
    
  end
  
  Dado('que existe um post de animal perdido') do
    steps %Q{
        Dado que estou na página de cadastro de post
        Quando preencho o campo "Titulo" com "Cachorro YorkShire perdido em 10/08"
        Quando preencho o campo "Descricao" com "Cachorro atende pelo nome de 'Lulu'. Desapareceu no bairro dos laranjais, próximo a Rua Vale do Rio Doce."
        E clico em criar
    }
  end
  
  Quando('selecionar a opção {string}') do |string|
    select(string)
  end
  
  Então('os mural deve ser filtrado com o tipo {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('o mural deve ser atualizado') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado('que filtrei o mural por tipo na opção {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('os mural não deve ser filtrado por tipo') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  