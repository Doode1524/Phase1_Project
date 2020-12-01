require 'pry'
require 'bundler'
require 'json'
require 'rest-client'
require 'open-uri'

Bundler.require

require_relative "./Champs/Champions"
require_relative "./config/api"
require_relative "./config/cli"