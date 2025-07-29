# Gestão Segura de Credenciais com AWS Secrets Manager

## Arquitetura do Projeto

> *Aqui insira o diagrama de arquitetura ilustrando o fluxo entre a aplicação, AWS Secrets Manager e Amazon RDS.*

![Diagrama de Arquitetura](./docs/architecture-diagram.png)

---

## Visão Geral

Este projeto demonstra a implementação prática de uma estratégia avançada de **gestão segura de credenciais** utilizando o **AWS Secrets Manager** em ambientes de computação em nuvem. A abordagem elimina o uso de senhas em variáveis de ambiente e hardcoded, proporcionando um ciclo de vida automatizado das credenciais com rotação automática integrada, garantindo maior segurança e conformidade.

O caso de uso contempla a migração de uma aplicação para consumir credenciais dinamicamente a partir do AWS Secrets Manager, aplicado em múltiplos ambientes:  
- Amazon Elastic Container Service (ECS)  
- AWS Elastic Beanstalk  
- Ambiente local via Docker  

---

## Conteúdo do Repositório

```plaintext
├── /src
│   ├── Código-fonte da aplicação
│   ├── docker-compose.yml - Configuração para execução local via Docker
│   ├── ecs-config - Arquivos e scripts para deployment no ECS
│   └── beanstalk-config - Configurações para deployment no Elastic Beanstalk
├── /scripts
│   └── scripts auxiliares para integração e automação com Secrets Manager
├── /docs
│   └── Diagramas de arquitetura, capturas de tela e documentação complementar
└── README.md - Documentação do projeto
````

---

## Descrição Técnica

* **AWS Secrets Manager:** Serviço utilizado para armazenamento, gerenciamento e rotação automatizada de segredos, como credenciais de banco de dados.
* **Amazon RDS:** Banco de dados relacional com integração para rotação automática de senhas via Secrets Manager.
* **Migração de arquitetura:**

  * Remoção de senhas armazenadas em variáveis de ambiente.
  * Integração da aplicação para obtenção de segredos diretamente via SDK AWS.
  * Implementação de rotação automática de credenciais, reduzindo riscos de exposição.
* **Ambientes suportados:** Amazon ECS, AWS Elastic Beanstalk e Docker local.

---

## Benefícios e Impactos

* **Segurança aprimorada:** Eliminação de credenciais hardcoded e armazenamento seguro dos segredos.
* **Automação:** Rotação de senhas automática, reduzindo erros humanos e vulnerabilidades.
* **Flexibilidade:** Compatibilidade com múltiplos ambientes de deployment.
* **Conformidade:** Atendimento a melhores práticas e normas de segurança para gestão de segredos.

---

## Instruções para Uso

1. **Configuração do AWS Secrets Manager:**

   * Criação e armazenamento dos segredos necessários.
   * Ativação da rotação automática para o banco Amazon RDS.

2. **Configuração da aplicação:**

   * Ajuste no código para leitura dinâmica dos segredos via AWS SDK.
   * Remoção das variáveis de ambiente contendo credenciais sensíveis.

3. **Deployment:**

   * Executar a aplicação em Docker local, ou
   * Realizar deployment nos serviços gerenciados ECS ou Elastic Beanstalk utilizando as configurações presentes no repositório.

---

## Capturas de Tela

> *Inclua imagens demonstrando a configuração do Secrets Manager, rotação de segredos e execução da aplicação.*

![Configuração AWS Secrets Manager](./docs/secrets-manager-setup.png)
![Rotação automática no RDS](./docs/rds-rotation.png)
![Aplicação consumindo segredos](./docs/app-secrets-consumption.png)

---

## Referências

* [AWS Secrets Manager Documentation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)
* [Amazon RDS Credential Rotation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/integrating_rotations_rds.html)
* [Amazon ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html)
* [AWS Elastic Beanstalk Documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/Welcome.html)

---

## Sobre o Autor

Aryane — [LinkedIn](https://www.linkedin.com/in/aryane-andrade)
