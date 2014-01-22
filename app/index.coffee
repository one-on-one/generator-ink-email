'use strict'

util   = require 'util'
path   = require 'path'
yeoman = require 'yeoman-generator'

InkEmailGenerator = module.exports = (args, options, config) ->
  yeoman.generators.Base.apply this, arguments
  
  this.on 'end', ->
    this.installDependencies
      skipInstall: options['skip-install']
  
util.inherits InkEmailGenerator, yeoman.generators.Base

InkEmailGenerator.prototype.askFor = ->
  cb      = this.async()
  prompts = []
  
  prompts.push
    type: 'confirm'
    name: 'someOption'
    message: 'Would you like to?'
    default: true
  
  this.prompt prompts, ((props) ->
    for key, val of props
      this[key] = val
    
    cb()
  ).bind(this)
  
InkEmailGenerator.prototype.files = ->
  this.copy '_package.json', 'package.json'
  this.copy '_bower.json', 'bower.json'
  this.copy '_Gruntfile.coffee', 'Gruntfile.coffee'
  
  this.mkdir 'src'
  this.mkdir 'build'
  
  this.copy '_email.jade', 'src/email.jade'
