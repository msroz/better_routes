# 🖌 BetterRoutes

Print rials routes with various formats.  
It is easy way to copy and paste on Spreadsheet, GitHub and so on :)

## 🤲 Usage

```bash
$ rake better_routes
```

## 📐 Formats

### Sample routes file

```ruby
# config/routes.rb
Rails.application.routes.draw do
  resources :entries
end
```

### TSV (Tab Separated Values)

```bash
# (default)
$ FORMAT=tsv rake better_routes

Prefix, Verb, URI Pattern, Controller#Action
entries GET     /entries(.:format)      entries#index
        POST    /entries(.:format)      entries#create
new_entry       GET     /entries/new(.:format)  entries#new
edit_entry      GET     /entries/:id/edit(.:format)     entries#edit
entry   GET     /entries/:id(.:format)  entries#show
        PATCH   /entries/:id(.:format)  entries#update
        PUT     /entries/:id(.:format)  entries#update
        DELETE  /entries/:id(.:format)  entries#destroy
```

### CSV (Comma Separated Values)

```bash
$ FORMAT=csv rake better_routes
Prefix, Verb, URI Pattern, Controller#Action
entries,GET,/entries(.:format),entries#index
,POST,/entries(.:format),entries#create
new_entry,GET,/entries/new(.:format),entries#new
edit_entry,GET,/entries/:id/edit(.:format),entries#edit
entry,GET,/entries/:id(.:format),entries#show
,PATCH,/entries/:id(.:format),entries#update
,PUT,/entries/:id(.:format),entries#update
,DELETE,/entries/:id(.:format),entries#destroy
```

### Markdown Table

```bash
$ FORMAT=markdown rake better_routes
|Prefix|Verb|URI Pattern|Controller#Action|
|------|----|-----------|-----------------|
|entries|GET|/entries(.:format)|entries#index|
||POST|/entries(.:format)|entries#create|
|new_entry|GET|/entries/new(.:format)|entries#new|
|edit_entry|GET|/entries/:id/edit(.:format)|entries#edit|
|entry|GET|/entries/:id(.:format)|entries#show|
||PATCH|/entries/:id(.:format)|entries#update|
||PUT|/entries/:id(.:format)|entries#update|
||DELETE|/entries/:id(.:format)|entries#destroy|
```

## 🤝 Installation

Add this line to your application's Gemfile:

```ruby
gem 'better_routes'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install better_routes
```

## 👍 Contributing

Contribution directions go here.

## 👉 License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
