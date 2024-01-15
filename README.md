## Introduction

Here you will find templates for first steps to deploy [gICS](https://www.ths-greifswald.de/en/researchers-general-public/gics/) on a Kubernetes cluster.  


```
└── kubernetes-templates
    ├── gics-app-image-with-deployments
    ├── gics-app-original-image
    └── gics-mysql
```

Templates for gICS can be found in the directories. With the docker image available for the gICS, deployments are mounted in the container, among others. Templates for mounting (**gics-app-original-image**) or using a custom image (**gics-app-image-with-deployments**), which includes the necessary files and can be created with the Dockerfile, are provided.  

**gics-mysql** contains the database templates.  

The provided script **set_users_with_credentials.sh** can be used to configure or update users and authorizations in the MySQL database via ENV variables. Mounted together with the SQL commands in the sqls directory of the original download in the container on /docker-entrypoint-initdb.d it is executed at the end. 

## Compatibility

![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/gICS-Logo-ohne-Text-160y.png)

v2023.1.3

## Additional information

A short presentation describing scope and usage of the gics kubernetes approach is available [here](https://www.ths-greifswald.de/wp-content/uploads/2023/06/danhauser_gICS_Communitytalk_230601.pdf).

## Contact
Dr. Katharina Danhauser, LMU Klinikum