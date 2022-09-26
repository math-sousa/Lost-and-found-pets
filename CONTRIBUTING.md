## Como contribuir e boas práticas do ciclo DevOps

1. **TODA** alteração a ser feita deve ser feita em uma branch separada da última versão da branch `main`, seguindo este padrão:
  - Se você está implementando uma nova funcionalidade, nomeie a branch dessa forma: `feature/descricao-da-funcionalidade-separada-por-hifen`
  - Se você está implementando alguma correção, refatoração ou otimização de código: `fix/descricao-da-correcao-separada-por-hifen`
 
2. Preferencialmente, ao abrir uma PR, avise no grupo do trabalho e peça para que alguém a revise. Após o merge e a confirmação do GitHub, é importante você deletar aquela feature branch, que não será mais utilizada.

3. Sempre que julgar necessário, adicione sessões de documentação técnica ou de negócios a Wiki do repositório.

4. É interessante adicionar um membro da equipe como pre-approver do disparo da pipeline de CD do repositório, isto é, é interessante ter alguém que controle quando uma nova release para Prod deve ser feita.
