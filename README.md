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

***********************************************************************************************************
## Terraform Commands usage
```
terrform init                    - This will initialize aws backend plugins and API's to communicate with terrform 
terrform plan -out plan.out      - This command will execute your terraform files and output your infrastructure plan in a file
terraform apply -auto-approve    - This command will execute and apply the infrastructure with auto approval
terraform destroy -auto-approve  - This command will destroy the infrastructure with auto approval

During the infrastruture provsioning, what we can achieve:
 creation of `VPC`
 creation of `subnet`
 creation of `security group`
 passing SSH Public key from local
```
***********************************************************************************************************

## once the infra is provisioned we need to deploy `docker`  using ansible
                                       ## Ansible
For now i have created some playbooks
```
`playbook.yml`  - which it will execute the role to install docker 
`roles`
  *install_docker/tasks/main.yml*
 ``` 
 commands usage
 `ansible-playbook -i all  playbook.yml`  - it will install docker 
    -for now i am limiting the commands and there is possibility to implement with more args
  ***********************************************************************************************************
  
                                        ## DOCKER
 To achieve the task
I have used following commands 
```
`FROM`  - it will refer which base OS image it has to be installed
`RUN`   - it will excute the commands to intall `Go` and `CPP`
`ENV`   - it will excute and create the ENV variables
`COPY`  - it will copy the scripts from local 
`CHMOD` - it is used to change the file permissions
`ENTRYPOINT` `CMD` - which  it will excute the commands and scripts
```
commands Usage
`docker build -t <name>` Dockerfile - it will build an image with the sepcified tag name
`docker run -it -v /<my folder path>:<containerpath>` -d <image> <Arg> /bin/bash 
******************************************************************************************************************
