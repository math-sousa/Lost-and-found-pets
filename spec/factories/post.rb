FactoryBot.define do
  factory :post do
    titulo {'titulo'}
    descricao {'descricao'}
    tipo {'pet perdido'}
    local {'local'}
    perfil {''}
    curtidas {10}
  end
end