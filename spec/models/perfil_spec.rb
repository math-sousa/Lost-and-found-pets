require 'spec_helper'

RSpec.describe Perfil, type: :model do
  it 'Invalido sem nome' do
    perfil = Perfil.new
    perfil.email = "maria.silva@gmail.com"
    perfil.telefone = "11999999999"
    perfil.senha = "senhadamaria"
    expect(perfil).not_to be_valid
  end
  
  it 'Invalido sem email' do
    perfil = Perfil.new
    perfil.nome = "Maria Silva"
    perfil.telefone = "11999999999"
    perfil.senha = "senhadamaria"
    expect(perfil).not_to be_valid
  end

  it 'Invalido sem senha' do
    perfil = Perfil.new
    perfil.email = "maria.silva@gmail.com"
    perfil.nome = "Maria Silva"
    perfil.telefone = "11999999999"
    expect(perfil).not_to be_valid
  end

  it 'Invalido com email com formato invalido' do
    perfil = Perfil.new
    perfil.nome = "Maria Silva"
    perfil.email = "1234%$$.com@"
    perfil.telefone = "11999999999"
    perfil.senha = "senhadamaria"
    expect(perfil).not_to be_valid
  end

  it 'Invalido com telefone com formato invalido' do
    perfil = Perfil.new
    perfil.nome = "Maria Silva"
    perfil.email = "maria.silva@gmail.com"
    perfil.telefone = "ABCDE"
    perfil.senha = "senhadamaria"
    expect(perfil).not_to be_valid
  end
end