mv ./Gemfile ./gemtemp/Gemfile
mv ./config/database.yml ./config/dbtemp/database.yml

mv ./gem/Gemfile ./Gemfile
mv ./config/db/database.yml ./config/database.yml 

bundle install
rake db:migrate

git add .
git commit -m "my commit"
git push heroku master

mv ./Gemfile ./gem/Gemfile
mv ./config/database.yml ./config/db/database.yml

mv ./gemtemp/Gemfile ./Gemfile
mv ./config/dbtemp/database.yml ./config/database.yml

bundle install
