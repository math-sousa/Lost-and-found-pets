FactoryBot.define do
  factory :perfil do
    name {'Default'}
    email {'default@example.com'}
    phone {'11123456789'}
    password {'password_default'}
    encrypted_password {Perfil.new.send(:password_digest, 'password_default')}

    trait :maria do
      name {'Mario Silva'}
      email {'maria.silva@gmail.com'}
      phone {'11888888888'}
      password {'senhadomario'}
      encrypted_password {Perfil.new.send(:password_digest, 'senhadomario')}
    end

    trait :mario do
      name {'Mario Silva'}
      email {'mario.silva@gmail.com'}
      phone {'11888888888'}
      password {'senhadomario'}
      encrypted_password {Perfil.new.send(:password_digest, 'senhadomario')}
    end
  end


end