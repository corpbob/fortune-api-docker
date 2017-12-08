#!/bin/bash
export GIT_COMMITTER_NAME=corpbob
export GIT_COMMITTER_EMAIL=bobby@corpus.ph
cd src
git clone https://github.com/corpbob/fortune-api-demo.git
cd fortune-api-demo 
npm install && npm start
