# README

En esta app se va a explicar la implementación de la gem RSpec para poder configurar y entender el proceso de testing para poder garantizar el rendimiento y correción de errores de una aplicación en Ruby on Rails.

fuente:  
https://medium.com/@ejoelrojas9/configuraci%C3%B3n-y-pruebas-crud-al-controlador-con-rspec-en-ruby-on-rails-7-ecf72253d231

❯❯❯ ```ruby --version```  
ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x86_64-linux]

❯❯❯ ```rails --version```  
Rails 7.1.3.2

❯❯❯ ```psql --version```  
psql (PostgreSQL) 15.6 (Debian 15.6-0+deb12u1)

❯❯❯ ```rails new testing-crud -d postgresql```

❯❯❯ ```bundle install```

❯❯❯ ```rails db:create```

❯❯❯ ```rails generate model store```

❯❯❯ ```rails db:migrate```

❯❯❯ ```rails generate controller Stores```


❯❯❯ ```rails generate rspec:install```

❯❯❯ ```rails generate rspec:controller stores --controller-specs```

nota:  
Se agrega la gema 'rails-controller-testing' para que puedan correr las pruebas

❯❯❯ ```rspec spec/controllers/stores_controller_spec.rb```

StoresController
  GET #index
    renders the index template
  GET #show
    render the show template
  GET #new
    render the new template
  POST #create
    create the new store and render the show view
  GET #edit
    render the store form
  PUT #update
    update the store and render the template show store
  DELETE #destroy
    render template index

Finished in 0.61129 seconds (files took 2.27 seconds to load)
7 examples, 0 failures

---
.
