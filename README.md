# karpenter-workshop

## Visão Geral  
**`karpenter-workshop`** é o repositório centralizado para gerenciar e automatizar a infraestrutura, CI/CD e operações da plataforma Homebroker. Este repositório integra ferramentas e práticas modernas para garantir escalabilidade, segurança e excelência operacional.  

### Principais Tecnologias  
- **Kubernetes**: Orquestração de contêineres.  
- **Terraform**: Gerenciamento de infraestrutura como código (IaC).  
- **ArgoCD**: Implantação contínua com GitOps.  
- **Helm**: Gerenciamento de pacotes para Kubernetes.  
- **Ansible**: Automação de configuração e gerenciamento de servidores.  

---

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

---   

## Como Começar  

### Pré-requisitos  
Certifique-se de ter as ferramentas abaixo instaladas:  
- **kubectl**: Para interação com o Kubernetes.  
- **Terraform**: Para provisionamento de infraestrutura.  
- **Helm**: Para gerenciamento de pacotes Kubernetes.  
- **Ansible**: Para automação de configuração.  

### Configuração Inicial  
1. Clone este repositório:  
   ```bash
   git clone git@github.com:mganalistati/karpenter-workshop.git
   cd karpenter-workshop
2. Configure suas credenciais AWS (se aplicável):
   ```bash 
   export AWS_ACCESS_KEY_ID=your-key 
   export AWS_SECRET_ACCESS_KEY=your-secret
3. Acesse os diretórios conforme sua necessidade (ex.: terraform/ para infraestrutura).

---

## Regras de Contribuição

### Como Contribuir
1. Crie uma branch com um nome descritivo:
   ```bash
   git checkout -b feature/minha-feature
2. Faça suas alterações e escreva commits claros:
   ```bash
   git commit -m "feat: adiciona suporte a nova funcionalidade"
3. Envie um pull request para a branch main.

### Padrões de Commits
- **feat**: Para novas funcionalidades.
- **fix**: Para correções de bugs.
- **chore**: Atualizações sem impacto funcional (ex.: configurações).
- **docs**: Alterações na documentação.

### Revisão de Código
- O código deve ser revisado por pelo menos um membro da equipe antes de ser aceito.
- Garanta que todos os testes sejam aprovados antes do merge.

---

## Suporte
Em caso de dúvidas ou problemas, consulte a documentação na pasta docs/ ou entre em contato com a equipe DevOps.

---

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
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | # Define a CIDR block | `string` | n/a | yes |
| <a name="input_created-by"></a> [created-by](#input\_created-by) | # Define a created | `string` | n/a | yes |
| <a name="input_department"></a> [department](#input\_department) | # Define a department | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | # Define a environment | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | # Define a organization | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | # Define a project name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | # Define a region | `string` | n/a | yes |

## Outputs

No outputs.
