FactoryBot.define do
  factory :post do
    titulo {'titulo'}
    descricao {'descricao'}
    tipo {'pet perdido'}
    local {'local'}
    encontrado {false}
    perfil {''}
  end
end