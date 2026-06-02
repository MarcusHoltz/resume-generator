# Welcome to [Marcus Holtz](https://github.com/MarcusHoltz)' Resume's CI/CD

* * *

![Daily resume generator with LaTeX and Pandoc](https://raw.githubusercontent.com/MarcusHoltz/marcusholtz.github.io/refs/heads/main/assets/img/header/header--devops--resume-generator.jpg "Generate a resume, daily, forever!")

* * *

## Introduction
![workflow](https://github.com/MarcusHoltz/resume-generator/actions/workflows/docker-image.yml/badge.svg)  ![github](https://badgen.net/badge/icon/github?icon=github&label)  ![gitlab](https://badgen.net/badge/icon/gitlab?icon=gitlab&label)  ![docker](https://badgen.net/badge/icon/docker?icon=docker&label)
 
This repository keeps my resume **up to date**. Builds are done **daily**.
  
You can find **[the most recent builds](output/)** of my resume.
 

* * *

## Usage


* * *

### Github Actions
If you want Github Actions to run this docker container and update the repository,
you must first enable: 
  
 `settings > actions > workflow permissions` 
  
Be sure to change information at the bottom of `.github/workflows/docker-image.yml`


* * *

### Docker auto-generate resumes
If you would like to run this locally on your machine (`docker compose up --build -d`), first clone or download the repository.
 
Edit the `compose.yml` to uncomment the `command` **or** `entrypoint`.
With that change, when you run the container it will generate documents in the `output` folder for any markdown files in the `input` folder.
  
Then, edit `dockerfile`. At the bottom of the file, you will see two commented lines:
 
`# RUN useradd --user-group --create-home --shell /bin/false app`
  
`# USER app`
 
Uncomment these lines to have the output files created as a non-root user.


* * *

### GitLab Setup
> **This pipeline will fail to push without a Project Access Token.**
> GitLab CI job tokens are required. Two steps below are required.

#### Step 1 — Create a Project Access Token
1. Go to **Settings > Access Tokens**
2. Fill in the form:
   - Name: `gitlab-ci-push`
   - Role: **Maintainer**
   - Scopes: **write_repository**
3. Click **Create project access token** and copy the value immediately — it is shown only once.

#### Step 2 — Store the token as a masked CI/CD variable
1. Go to **Settings > CI/CD > Variables**
2. Click **Add variable** and fill in:
   - Key: `PROJECT_ACCESS_TOKEN`
   - Value: *(paste the token from Step 1)*
   - **Mask variable: on** — keeps the value out of job logs
   - Expand variable reference: off
3. Save.

The pipeline's commit job reads `$PROJECT_ACCESS_TOKEN` at runtime to authenticate the `git push`.
Without it, the push step exits with a 403 and the job fails.


 
* * *

## References
[Pandoc](https://github.com/pandoc/dockerfiles)
 
[Inspiration](https://github.com/mszep/pandoc_resume)
 
[LaTeX template](https://github.com/LukeSmithxyz/md-website-cv)
 
 
 
 
## The current date:  
 05/31/2026 
  
  
