# Geo-Secours

* Ruby version : 2.3.0

* Rails version : 4.2.6

* System dependencies
    - PostgreSQL 9.4.6
          -> configuration of user to create in config/database.yml

* Configuration
      - bundle install

* Database creation
      -rake db:create
      -rake db:migrate

* Deploy
  -it's suitable to configure thin and nginx on the server
    simple tutorial here : http://blog.mohitkanwal.com/blog/2013/04/10/deploying-rails-on-nginx-and-thin/

  but you can disable thin for development purpose on the Gemfile to use webrick.

# Licence

Copyright (C) 2016 Flavien SICARD, Romaric FAVE, Nicolas LAPORTE, Robin MARONIER, Alexandre HERMITANT

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.