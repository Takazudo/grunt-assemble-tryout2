module.exports = (grunt) ->
  
  grunt.task.loadNpmTasks 'assemble'

  grunt.initConfig

    assemble:

      options:
        partials: 'partials/*.hbs'

      pages:
        options:
          data: [ 'config.yml' ]

        files: [
          {
            src: 'pagesrc/template1.hbs'
            dest: 'result/result1.html'
          }
        ]

  grunt.registerTask 'default', [
    'assemble'
  ]

