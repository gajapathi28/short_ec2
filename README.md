# Assignment to provision infrastructure using terraform
# Tools Used
```
Terrform
docker
ansible
git
bash
go
cpp
```
.
├── infra                   # infra 
|   ├── *.tf*               # terraform sourcefiles 
├── deploy                  # Source files 
|    ├── code 
|          ├── GO           # GO excutables
|          ├── CPP          # CPP excutables
├── roles                   
├── Dockerfile 
├── playbook.yml 
├── invnetory.yml
├── results                  
└── README.md
## Terraform Commands usage

`terrform init`  - This will initialize aws backend plugins and API's to communicate with terrform 
`terrform plan -out plan.out` This command will execute your terraform files and output your infrastructure plan in a file
`terraform apply -auto-approve` This command will execute and apply the infrastructure with auto approval
`terraform destroy -auto-approve`  This command will destroy the infrastructure with auto approval


```Ansible
```


```Docker
```
