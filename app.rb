require('sinatra')
require('sinatra/reloader')
require('./lib/address')
require('./lib/contact')
also_reload('./lib/**/*.rb')
require('pry')

    get('/') do
        erb(:index)
    end

    get('/contacts') do
        @contacts = Contact.all
        erb(:contacts)
    end

    get('/contacts/new') do 
        erb(:contacts_form)
    end
    
    post('/contacts') do
        first_name = params.fetch("first_name")
        last_name = params.fetch("last_name")
        job_title = params.fetch("job_title")
        company= params.fetch("company")
        contact = Contact.new(first_name, last_name, job_title, company)
        contact.save()
        erb(:success)
    end

    get('/contacts/:id') do
        @contact = Contact.contact_find(params.fetch("id"))
    erb(:contact)
end
