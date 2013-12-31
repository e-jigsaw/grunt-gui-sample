module.exports = (grunt)->
  grunt.initConfig
    pkg: "<json:package.json>"
    coffee:
      index:
        files:
          "build/index.js": "index.coffee"
        options:
          bare: true

  grunt.loadNpmTasks "grunt-peon-gui"
  grunt.loadNpmTasks "grunt-contrib-coffee"

  grunt.registerTask "default", ["coffee"]
