mv ./Gemfile ./gemtemp/Gemfile
mv ./config/database.yml ./config/dbtemp/database.yml

echo "moved sqlite3 files to temporary location"

mv ./gem/Gemfile ./Gemfile
mv ./config/db/database.yml ./config/database.yml 

echo "moved PG files to location"

bundle install
rake db:migrate

echo "Installed PG"

git add .
git commit -m "my commit"
git push heroku master

echo "Pushed to Heroku"

mv ./Gemfile ./gem/Gemfile
mv ./config/database.yml ./config/db/database.yml

echo "moved PG files back"

mv ./gemtemp/Gemfile ./Gemfile
mv ./config/dbtemp/database.yml ./config/database.yml

echo "moved sqlite3 to original location"

bundle install

echo "Installed Sqlite3"

echo "Mission Acomplished"

echo "Have a good day!"
