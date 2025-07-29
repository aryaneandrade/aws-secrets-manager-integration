# 🔐 Gestão Segura de Credenciais com AWS Secrets Manager

Este repositório apresenta a implementação prática de uma solução avançada para **gestão segura de credenciais** em ambientes de computação em nuvem.

O objetivo principal é demonstrar a utilização do **AWS Secrets Manager** para o gerenciamento centralizado e a rotação automática de credenciais, assegurando a conformidade e mitigando riscos relacionados à exposição de segredos em aplicações distribuídas.

---

## ✅ Objetivo do Projeto

Estabelecer uma arquitetura segura para a gestão de segredos em aplicações cloud-native, eliminando o uso de credenciais estáticas e implementando a automação da rotação de senhas no banco de dados Amazon RDS.

---

## 🧱 Arquitetura da Solução

A solução foi aplicada em três ambientes distintos, representando cenários reais de deployment:

- **Aplicações containerizadas:** utilizando Amazon ECS (Elastic Container Service)  
- **Aplicações gerenciadas:** utilizando AWS Elastic Beanstalk  
- **Ambiente local para desenvolvimento e testes:** utilizando Docker

Diagrama da arquitetura:

![Arquitetura Secrets Manager](./docs/architecture-diagram.png)

---

## 🛠️ Serviços AWS Utilizados

| Serviço               | Descrição                                               |
|-----------------------|---------------------------------------------------------|
| **AWS Secrets Manager**| Serviço de gerenciamento seguro e rotação automatizada de segredos  |
| **Amazon RDS**         | Banco de dados relacional com suporte à rotação automática de credenciais  |
| **Amazon ECS**         | Plataforma para orquestração e gerenciamento de containers Docker  |
| **AWS Elastic Beanstalk** | Plataforma PaaS para deployment e gerenciamento de aplicações web  |
| **Docker**             | Ambiente de containerização local para desenvolvimento e testes  |

---

## 🔎 Cenários Desenvolvidos

### 1️⃣ Integração com Amazon ECS

**Descrição:**  
Desenvolvimento e deployment de aplicação containerizada que consome credenciais de forma dinâmica do AWS Secrets Manager, operando em cluster ECS.

**Fluxo de operação:**  
- Recuperação segura e dinâmica de credenciais via AWS SDK  
- Utilização da rotação automática de senhas no Amazon RDS  
- Deploy contínuo e gerenciamento da aplicação no ECS

### 2️⃣ Deploy com AWS Elastic Beanstalk

**Descrição:**  
Deploy de aplicação web utilizando AWS Elastic Beanstalk, com integração segura para consumo de segredos gerenciados pelo AWS Secrets Manager.

**Fluxo de operação:**  
- Leitura dinâmica dos segredos via AWS Secrets Manager  
- Deploy gerenciado, escalável e seguro com suporte a rotação automática de credenciais

### 3️⃣ Ambiente Local com Docker

**Descrição:**  
Execução da aplicação em ambiente Docker local para fins de desenvolvimento e testes, integrando o consumo seguro de segredos via AWS Secrets Manager.

---

## 🧠 Principais Aprendizados

- Aplicação prática do AWS Secrets Manager para gestão segura de credenciais  
- Implementação de rotação automatizada de senhas no Amazon RDS  
- Integração robusta e segura da aplicação com múltiplos ambientes de deployment  
- Consolidação das melhores práticas e padrões de segurança para aplicações em nuvem  

---

## 📸 Galeria de Capturas

| Configuração do Secrets Manager | Rotação Automática no Amazon RDS | Aplicação em Execução |
|---------------------------------|---------------------------------|----------------------|
| ![Secrets Manager](./docs/secrets-manager-setup.png) | ![RDS Rotation](./docs/rds-rotation.png) | ![Aplicação em Execução](./docs/app-secrets-consumption.png) |

---

## ✅ Considerações Finais

Este projeto proporcionou uma experiência prática essencial para o fortalecimento do conhecimento em gestão segura de credenciais na nuvem, destacando a importância da automação e da adoção de padrões elevados de segurança no desenvolvimento de aplicações distribuídas.

---

📎 **LinkedIn:** https://www.linkedin.com/in/aryane-andrade  
