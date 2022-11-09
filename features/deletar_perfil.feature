#language: pt

Funcionalidade: Deletar perfil
Eu como usuário
Para poder retirar meu dados da plataforma
Quero poder excluir meu perfil e portanto todos meus post

Cenário: Perfil deletado com sucesso
Dado que eu me cadastrei
E que estou na página meu perfil
Quando clico em "Deletar perfil"
Então o perfil deve ser deletado do banco de dados
E deverei ver a mensagem de sucesso "Sua conta foi deletada com sucesso. Esperamos você de volta em breve."