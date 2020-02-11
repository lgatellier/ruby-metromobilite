[![Gem Version](https://badge.fury.io/rb/metromobilite.svg)](https://badge.fury.io/rb/metromobilite)
# ruby-metromobilite
Implémentation Ruby de l'API Métromobilite (Transports en commun de Grenoble et d'Isère)

Pour plus d'informations, voir la [Documentation de l'API](http://www.metromobilite.fr/pages/opendata/OpenDataApi.html)

# Installation
En ligne de commande :
```bash
$ gem install metromobilite
```

Gemfile :
```ruby
gem 'metromobilite', '>= 0.2'
```

# Utilisation

```ruby
require 'metromobilite'

Metromobilite::Times.readStop '{SEM,C38}:id'
```
