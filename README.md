# Welcome to [Marcus Holtz](https://github.com/MarcusHoltz)' Resume's CI/CD
![workflow](https://github.com/MarcusHoltz/resume-generator/actions/workflows/docker-image.yml/badge.svg)  ![github](https://badgen.net/badge/icon/github?icon=github&label)  ![docker](https://badgen.net/badge/icon/docker?icon=docker&label)
 
 
* * *
## Introduction
This repository keeps my resume **up to date**. Builds are done **daily**.
  
You can find **[the most recent builds](output/)** of my resume.
 
 
* * *
## Usage
### Github Actions
If you want Github Actions to run this docker container and update the repository,
you must first enable: 
  
 `settings > actions > workflow permissions` 
  
Be sure to change information at the bottom of `.github/workflows/docker-image.yml`
  
  
### Docker auto-generate resumes
If you would like to run this locally on your machine (`docker compose up --build -d`), first clone or download the repository.
 
Edit the `compose.yml` to uncomment the `command` **or** `entrypoint`.
With that change, when you run the container it will generate documents in the `output` folder for any markdown files in the `input` folder.
  
Then, edit `dockerfile`. At the bottom of the file, you will see two commented lines:
 
`# RUN useradd --user-group --create-home --shell /bin/false app`
  
`# USER app`
 
Uncomment these lines to have the output files created as a non-root user.
 
 
* * *
## References
[Pandoc](https://github.com/pandoc/dockerfiles)
 
[Inspiration](https://github.com/mszep/pandoc_resume)
 
[LaTeX template](https://github.com/LukeSmithxyz/md-website-cv)
 
 
 
 
## The current date:  
 01/30/2024 
  
  
