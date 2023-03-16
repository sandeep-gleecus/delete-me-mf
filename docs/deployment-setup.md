# Deployment Setup



A deployment pipeline has been set up to deploy to a managed Kubernetes Cluster provided by civo.com. The main contact for the civo.com account is Mark Boost (mark@civo.com)

## Infrastructure Deployment

2 clusters have been created, one for staging and one for production. Only a basic cluster has been deployed within Civo and the rest of the requirements are managed through the helm chart in `config/chart`. 



## Registry Access

1. Create a gitlab Deploy Token with `read_registry` token

2. Get the base64 encoded value for token

   ```
   gitlab_user=<Username>
   gitlab_token=<Token>
   gitlab_pull_secret=$(echo -n "{\"auths\":{\"registry.gitlab.com\":{\"auth\":\"`echo -n "$gitlab_user:$gitlab_token"|base64`\"}}}"|base64)
   ```

   

3. Set a CI Variable `DEPLOY_PULL_SECRET` to the value of $gitlab_pull_secret

> Ref: https://www.informaticsmatters.com/blog/2020/07/26/deploying-images-from-a-gitlab-registry.html

## Custom Private Variables 

1. Create a gitlab ci varaible: https://gitlab.com/mrfehr/mother-fit/-/settings/ci_cd
2. Create a value in https://gitlab.com/mrfehr/mother-fit/-/blob/main/config/chart/values.yaml
3. Update the helm templates helper (or other file to use the value): https://gitlab.com/mrfehr/mother-fit/-/blob/main/config/chart/templates/pull-secret.yaml
4. Set the value using the env var in the .gitlabci.yaml: https://gitlab.com/mrfehr/mother-fit/-/blob/main/.gitlab-ci.yml#L61




​	
