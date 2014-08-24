module.exports = (grunt) ->
    
    grunt.loadNpmTasks 'grunt-ng-classify'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.initConfig
        ngClassify:
            app:
                files: [
                    cwd: 'src'
                    src: '**/*.coffee'
                    dest: '.tmp'
                    expand: true
                ]
                options:
                    appName: 'app'
        coffee:
            glob_to_multiple: 
                expand: true
                cwd: '.tmp'
                src: ['**/*.coffee']
                dest: 'dist'
                ext: '.js'
        copy:
            main:
                expand: true
                cwd: 'src'
                src: '**/*.html'
                dest: 'dist/'
        clean: [
            '.tmp'
            'dist'
        ]
        watch: 
            scripts: 
                files: ['**/*.coffee', '**/*.html']
                tasks: ['default']
                options:
                   spawn: false

    grunt.registerTask 'default', ['ngClassify', 'coffee', 'copy']
    
