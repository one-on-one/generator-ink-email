'use strict'

emailBuild = (grunt) ->

  grunt.initConfig
    inlinecss:
      main:
        options: {}
        files:
          'build/email.html': 'src/email.html'
    jade:
      main:
        options:
          pretty: true
        files:
          'src/email.html': 'src/_layout.jade'
    watch:
      main:
        files: 'src/email.jade',
        tasks: 'build'
        options:
          atBegin: true
          livereload: true

  grunt.loadNpmTasks 'grunt-inline-css'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'build', ['jade:main', 'inlinecss:main']
  grunt.registerTask 'watch', ['watch:main']

  grunt.registerTask 'default', ['build']

module.exports = emailBuild
