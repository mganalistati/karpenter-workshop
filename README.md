# karpenter-workshop

## Índice  

1. [Visão Geral](#visão-geral) 
2. [Principais Tecnologias](#principais-tecnologias) 
3. [Estrutura do Repositório](#estrutura-do-repositório)  
4. [Como Começar](#como-começar)  
    - [Pré-requisitos](#pré-requisitos)  
    - [Configuração Inicial](#configuração-inicial)  
5. [Regras de Contribuição](#regras-de-contribuição)  
    - [Como Contribuir](#como-contribuir)  
    - [Outras Maneiras de Passar Inputs ao Terraform](#outras-maneiras-de-passar-inputs-ao-terraform) 
    - [Padrões de Commits](#padrões-de-commits) 
    - [Revisão de Código](#revisão-de-código)
6. [Configuração do Pre-Commit Hook](#configuração-do-pre-commit-hook) 
    - [Passos para Configuração](#passos-para-configuração) 
    - [Referências](#referências) 
7. [Requirements](#requirements)  
8. [Modules](#modules)
9. [Inputs](#inputs)
10. [Outputs](#outputs)

## Visão Geral
**`karpenter-workshop`** é o repositório centralizado para gerenciar e automatizar a infraestrutura, CI/CD e operações da plataforma karpenter-workshp. Este repositório integra ferramentas e práticas modernas para garantir escalabilidade, segurança e excelência operacional.  

### Principais Tecnologias 
- **Kubernetes**: Orquestração de contêineres.  
- **Terraform**: Gerenciamento de infraestrutura como código (IaC).  
- **ArgoCD**: Implantação contínua com GitOps.  
- **Helm**: Gerenciamento de pacotes para Kubernetes.  
- **Ansible**: Automação de configuração e gerenciamento de servidores.  

## Estrutura do Repositório  
O repositório está organizado da seguinte forma:  

```plaintext
hb-platform-ops/
└── modules/                          # Diretório principal para módulos Terraform
    ├── eks_cluster/                  # Módulo para provisionamento do cluster EKS
    ├── eks_load_balancer_controller/ # Módulo para configuração do Load Balancer Controller
    ├── eks_network/                  # Módulo para configuração de rede do EKS
    └── eks_node_group/               # Módulo para criação e gerenciamento de Node Groups
```

## Como Começar

### Pré-requisitos  

Certifique-se de ter as ferramentas abaixo instaladas:  
- **kubectl**: Para interação com o Kubernetes.  
- **Terraform**: Para provisionamento de infraestrutura.  
- **Helm**: Para gerenciamento de pacotes Kubernetes.  
- **Ansible**: Para automação de configuração.  
- Credenciais AWS configuradas (IAM com permissões adequadas para S3, EC2, etc.).

### Configuração Inicial  

1. Crie um diretório karpenter-workshop:
   
   &nbsp;
   ```bash
   mkdir karpenter-workshop
   cd karpenter-workshop
   ```

2. Configure suas credenciais AWS (se aplicável):

   &nbsp; 
   ```bash 
   export AWS_ACCESS_KEY_ID=your-key 
   export AWS_SECRET_ACCESS_KEY=your-secret
   ```

3. Crie os Arquivos Necessários

   &nbsp;
   Para utilizar este repositório como domódulo Terraform, crie os seguintes arquivos no seu projeto e ajuste as configurações para seu cenário:

   &nbsp;
- **`terrafile.tf`**

   &nbsp;
   ```bash
   module "karpenter-workshop" {
     source = "git@github.com:mganalistati/karpenter-workshop.git?ref=main"
     cidr_block = "10.0.0.0/16"
     region = "us-east-1"
     project_name = "karpenter-workshop"
   
     tags = local.common_tags
   }
   ```
- **`provider.tf`**

   &nbsp;
   ```bash
   terraform {
     backend "s3" {
       bucket         = "karpenter-workshops"
       key            = "dev/terraform.tfstate"
       region         = "us-east-1"
     }
   }
   ```
- **`locals.tf`**  

   &nbsp;
   ```bash
   locals {
     common_tags = {
       Application  = "Karpenter"
       Team         = "Platform"
       Organization = "my-organization",
       Department   = "tecnologia",
       Environment  = "develop",
       Created-by   = "terraform",
     }
   }
   ```
   
   &nbsp;
4. Inicialize o Terraform

   &nbsp;
   Execute os comandos abaixo para inicializar o Terraform e validar os arquivos:

   &nbsp;
   ```bash
   terraform init -upgrade
   terraform plan -out tfplan
   ```
   
5. Aplique as Configurações

   &nbsp;
   Após validar as configurações, execute:

   &nbsp;
   ```bash
   terraform apply tfplan
   ```

Sua ```infraestrutura/plataforma``` será provisionada de acordo com as definições fornecidas, agora é só assistir a automação trabalhar por você! 🪄😎

## Regras de Contribuição

### Como Contribuir

1. Clone o Repositório
   
   &nbsp;
   ```bash
   git clone git@github.com:mganalistati/karpenter-workshop.git
   cd karpenter-workshop
   ```

2. Crie uma branch com um nome descritivo:

   &nbsp;
   ```bash
   git checkout -b feature/minha-feature
   ```

3. Faça suas alterações e escreva commits claros:

   &nbsp;
   ```bash
   git commit -m "feat: adiciona suporte a nova funcionalidade"
   ```

4. Execute o projeto local para validar as alterações.
   
   &nbsp;
   Certifique-se de que as credenciais da AWS estão configuradas corretamente. Você pode fazer isso exportando as variáveis de ambiente:

   &nbsp;
   ```bash
   export AWS_ACCESS_KEY_ID=your-access-key
   export AWS_SECRET_ACCESS_KEY=your-secret-key
   ```

   Renomeie o arquivo de exemplo para terraform.tfvars, que será usado para passar os inputs necessários ao projeto:

   &nbsp;
   ```bash
   mv terraform.tfvars.example terraform.tfvars
   ```

   O arquivo ```terraform.tfvars``` deve conter os seguintes inputs:

   &nbsp;
   ```bash
   cidr_block    = "10.0.0.0/16"
   region        = "us-east-1"
   project_name  = "karpenter-workshop"
   eks_version   = "1.31"

   tags = {
     Environment = "Development"
     Owner       = "DevOps"
   }
   ```

   Editar o Arquivo terrafile.tf para configurar o backend remoto no AWS S3.

   &nbsp;
   ```bash
   terraform {
     backend "s3" {
       bucket         = "terraform-remote-state-karpenter"
       key            = "dev/terraform.tfstate"
       region         = "us-east-1"
     }
   }
   ```

   Execute o comando abaixo para inicializar o Terraform, configurar o backend no S3 e baixar todos os submódulos:

   &nbsp;
   ```bash
   terraform init
   ```

   Valide as alterações antes de aplicar:

   &nbsp;
   ```bash
   terraform plan
   terraform apply
   ```
5. Envie um pull request para a branch main.

### Outras Maneiras de Passar Inputs ao Terraform

Além do uso do arquivo terraform.tfvars, o Terraform suporta outras formas de passar variáveis:

1. Variáveis de Ambiente:

   &nbsp;
   Você pode definir variáveis de ambiente prefixadas com ```TF_VAR_``` para cada input. Por exemplo:

   &nbsp;
   ```bash
   export TF_VAR_region="us-east-1"
   export TF_VAR_project_name="karpenter-workshop"
   ```

2. Linha de Comando:

   &nbsp;
   Passe as variáveis diretamente ao rodar os comandos terraform plan ou terraform apply:

   &nbsp;
   ```bash
   terraform apply -var "region=us-east-1" -var "project_name=karpenter-workshop"
   ```
3. Arquivos Adicionais:

   &nbsp;
   Use arquivos ```.tfvars``` adicionais com a flag ```-var-file```:

   &nbsp;
   ```bash
   terraform apply -var-file="custom.tfvars"
   ```

*Para mais informações, consulte a __[documentação oficial do Terraform sobre variáveis](https://developer.hashicorp.com/terraform/language/values/variables)__.*

### Padrões de Commits

- **feat**: Para novas funcionalidades.
- **fix**: Para correções de bugs.
- **chore**: Atualizações sem impacto funcional (ex.: configurações).
- **docs**: Alterações na documentação.
- **refactor**: Refatorações sem mudanças funcionais
- **style** Ajustes de formatação, sem impacto funcional
- **test** Adição ou atualização de testes
- **perf** Melhorias de desempenho

### Revisão de Código

- O código deve ser revisado por pelo menos um membro da equipe antes de ser aceito.
- Garanta que todos os testes sejam aprovados antes do merge.

## Configuração do Pre-Commit Hook

Este repositório utiliza o pre-commit para validar o código antes dos commits, garantindo a qualidade e conformidade com as práticas recomendadas.

O arquivo ```.pre-commit-config.yaml``` já está configurado para realizar as seguintes validações:

- ```terraform validate```: Verifica se os arquivos Terraform estão válidos.
- ```terraform fmt```: Aplica formatação consistente aos arquivos Terraform.
- ```trivy```: Analisa vulnerabilidades em dependências e configurações.
- Outras verificações customizadas.

### Passos para Configuração

1. Instalar o Pre-Commit

   &nbsp;
   Certifique-se de que o ```pre-commit``` está instalado no seu ambiente. Você pode instalar via ```pip```:

   &nbsp;
   ```bash
   pip install pre-commit
   ```

2. Instalar os Hooks Definidos

   &nbsp;
   Execute o seguinte comando na raiz do repositório para instalar os hooks definidos no arquivo ```.pre-commit-config.yaml```:

   &nbsp;
   ```bash
   pre-commit install
   ```

3. Executar Validações Manuais (Opcional)

   &nbsp;
   Antes de realizar um commit, você pode executar as validações manualmente em todos os arquivos:

   &nbsp;
   ```bash
   pre-commit run --all-files
   ```

### Referências

- *Para mais informações sobre o pre-commit, acesse o __[site oficial](https://pre-commit.com/)__.*
- *Consulte o __[repositório de hooks Terraform](https://github.com/antonbabenko/pre-commit-terraform)__ criado por *Anton Babenko* para exemplos adicionais e configuração avançada.*


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | v1.9.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.74.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.16.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.34.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_load_balancer_controller"></a> [eks\_load\_balancer\_controller](#module\_eks\_load\_balancer\_controller) | ./modules/load_balancer_controller | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |
| <a name="module_eks_node_group"></a> [eks\_node\_group](#module\_eks\_node\_group) | ./modules/node_group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | # Define a CIDR block of the VPC | `string` | n/a | yes |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | # Define a version of the eks cluster | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | # Define a project name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | # Define a region of the cluster | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | # Define a list of tags for the resources | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_cluster_account"></a> [aws\_cluster\_account](#output\_aws\_cluster\_account) | AWS Account of the cluster. |
| <a name="output_aws_cluster_region"></a> [aws\_cluster\_region](#output\_aws\_cluster\_region) | AWS Region of the cluster. |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | Endpoint for your Kubernetes API server. |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | Name of the cluster. |
| <a name="output_eks_cluster_version"></a> [eks\_cluster\_version](#output\_eks\_cluster\_version) | # Define a version of the EKS cluster. |
