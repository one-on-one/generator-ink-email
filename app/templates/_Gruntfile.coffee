'use strict'

emailBuild = (grunt) ->

  grunt.initConfig
    inlinecss:
      main:
        options: {}_email.jade
        files:
          'build/email.html': 'src/email.html'
    jade:
      main:
        options:
          pretty: true
        files:
          'src/_layout.html': 'src/email.jade'
    watch:
      main:
        files: 'src/email.jade',
        tasks: 'build'
        options:
          atBegin: true
          livereload: true

  grunt.loadNpmTasks 'grunt-inline-css'
  grunt.loadNpmTasks 'grunt-jade'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'build', ['jade:main', 'inlinecss:main']
  grunt.registerTask 'default', ['watch:main']

module.exports = emailBuild
