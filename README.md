# README

1. This project is a job board that can be used by both employees and employers to post jobs or apply for them. We made this so that anyone can post and apply for jobs that are not their own.

2. We currently have a sign in system with an editable profile. When applying for a job, this profile becomes visible to the owner oof the job, as well as any comments or resume that they put on it. Anyone signed in can also post a job. We were unable to figure out how to do a search bar or filter the jobs due to time constraints.

3. How to install:
   - make sure you have ruby on rails installed and a mysql account
   - git clone the project into your machine
   - cd Job-Board
   - rails db:migrate
   - rails s -b 0.0.0.0
