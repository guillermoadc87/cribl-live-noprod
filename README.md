# Non production infrastructure for Cribl

Module variables can be defined on different levels:

terragrunt.hcl - variables effective for all modules
<app>/<stage>/terragrunt.hcl - variables effective for that specific module

# How to create a new app

If you need to create the infrastructure for a new app here are the steps:

1. Depending on the app features select the root-modules that you need (ex. network, ec2)
2. Create a folder with the name of the app, inside another one using the stage name (ex. dev, sand or prod)
3. In the **terragrunt.hcl** inside the stage folder spefify in input variables required
4. Apply all the modules following the dependency