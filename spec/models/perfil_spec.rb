require 'spec_helper'

RSpec.describe Perfil, type: :model do
  it 'Invalido sem nome' do
    perfil = Perfil.new
    perfil.name = "maria.silva@gmail.com"
    perfil.phone = "11999999999"
    perfil.password = "senhadamaria"
    expect(perfil).not_to be_valid
  end
  
  it 'Invalido sem email' do
    perfil = Perfil.new
    perfil.name = "Maria Silva"
    perfil.phone = "11999999999"
    perfil.password = "senhadamaria"
    expect(perfil).not_to be_valid
  end

  it 'Invalido sem senha' do
    perfil = Perfil.new
    perfil.email = "maria.silva@gmail.com"
    perfil.name = "Maria Silva"
    perfil.phone = "11999999999"
    expect(perfil).not_to be_valid
  end

  it 'Invalido sem telefone' do
    perfil = Perfil.new
    perfil.email = "maria.silva@gmail.com"
    perfil.name = "Maria Silva"
    perfil.password = "senhadamaria"
    expect(perfil).not_to be_valid
  end

  it 'Invalido com email com formato invalido' do
    perfil = Perfil.new
    perfil.name = "Maria Silva"
    perfil.email = "1234%$$.com@"
    perfil.phone = "11999999999"
    perfil.password = "senhadamaria"
    expect(perfil).not_to be_valid
  end

  it 'Invalido com telefone com formato invalido' do
    perfil = Perfil.new
    perfil.name = "Maria Silva"
    perfil.email = "maria.silva@gmail.com"
    perfil.phone = "ABCDE"
    perfil.password = "senhadamaria"
    expect(perfil).not_to be_valid
  end
end