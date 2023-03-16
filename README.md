# README

## Project setup
`$ bundle install`
`$ yarn install`

```
bin/rails db:setup ; bin/rails db:seed:users ; bin/rails db:seed:experts ; bin/rails db:seed:shared ; bin/rails db:seed:pregnancy ; bin/rails db:seed:postpartum ; bin/rails db:seed:beyond ; bin/rails db:seed:completed_lessons ; bin/rails db:seed:posts ; bin/rails db:seed:recipes
ccd existing_repo
git remote add origin https://gitlab.com/motherfit/website.git
git branch -M main
git push -uf origin main
```

## If you are having problems with images
`rails active_storage:install`
`brew install imagemagick`

## If you have problem with Stripe webhooks
```
- Login to Stripe account and confirm if the Webhook is enabled in the first place.
- As a next step confirm if the Signing secret is set in the production environment variable.
- Trigger production deployemnt pipeline for the env changes, if any, to be in effect. 
```


## Project development
**IMPORTANT**

`$ rails s` is not used anymore to start up the dev server – instead use bin rails/server

To start the server, run:

`$ bin/dev`
## Expose localhost to web (tunneling) for mobile testing etc.
Run below in separate terminal (port needs to be the same as the localhost is using):
```sh
# run a server (generated url will be random)
$ npx localtunnel --port 3000
# to make life easier, you can use:
$ npx localtunnel --subdomain planetofdreams --port 3000
# which will result in url being: https://planetofdreams.loca.lt
```

## Linting
If code editor is properly set up, linting & formatting of a current file should happen on save.\
If you want to run linter through all files, then use:

`$ yarn lint:fix`

To fully use ESLint & Prettier potential:


---
If using VSCode:
1. Make sure that ESLint extention (by Dirk Baeumer) is installed - thanks to that error details will be visible on hover
2. Open your editor settings by pressing Cmd + Shift + P and choosing "Open Settings (JSON)"
3. Put those settings between `{}`:
```
  "editor.defaultFormatter": "dbaeumer.vscode-eslint",
  "eslint.format.enable": true,
  "eslint.lintTask.enable": true,
  "eslint.alwaysShowStatus": true,
  "eslint.validate": [
    "javascript",
    "html"
  ],
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true,
  },
```
This will make your VSCode Lint, fix & format your files on save.

**Instructions for Sublime to be added...**

## Troubleshooting
If for some reason JS is not loading (500 error in console) and you have some docker containers running, stopping them might help (until we know a better solution)

Testing pipelines by pushing
