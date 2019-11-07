
## terraform-modules -> repo that I can use to see how modules work

This repo has as target to define and show what I have learned about terraform modules

how can I use this repository?
You can use this repo as reference or you can clone the repository to your computer using the follow commands 

```git
git clone git@github.com:Orpere/terraform-modules.git
```

you can also fork this repo using the fork button on top right on github and use it as yours as the follow example:

![fork](fork.png)

like this you can clone and edit the repository and commit your own changes.

you can clone your own repo as:

```git
git clone git@github.com:<YourGitUser>/terraform-modules.git
```

and use the commands add, commit and push to your own changes

for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explination about all git steps

# terraform-modules

The inspiration for this repository come from the Hashicorp [documentation](https://www.terraform.io/docs/modules/index.html)

NOTE: these terraform files are using a null Provider

Null Provider
[The null provider is a rather-unusual provider that has constructs that intentionally do nothing. This may sound strange, and indeed these constructs do not need to be used in most cases, but they can be useful in various situations to help orchestrate tricky behavior or work around limitations.](https://www.terraform.io/docs/providers/null/index.html)

![terraform](terraform.png)

## Modules

Modules are self contain packages in terraform and are used to reuse code.
Modules must be defined on the root main.tf as terraform can't see any of the configurations inside the module with out the right path.
The way how terraform can see meta information from the module is using the module outputs.

example:

main.tf module definition

```terraform
module "module_web" {
  source = "./module_web"
  
}
```

Folder structure

```bash

├── module_web
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   └── variables.tf

```
## The module structure 

Input variables to add values to the module with out change his configuration.

Output values to populate other configurations external to the module, is the way how your configuration can reach the module metadata.

Resources show what infrastructure components your module will manage.

for a better explication please consult hashicorp documentation on [link](https://www.terraform.io/docs/modules/index.html) 