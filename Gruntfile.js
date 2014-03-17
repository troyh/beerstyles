module.exports=function(grunt) {

	grunt.initConfig({
		jade: {
			compile: {
				options: {
					compileDebug: false,
					data: function(dest,src) {
						if (src == "BJCPstyles.jade") {
							return {
								styles: grunt.file.readJSON("./BJCP2008.json")
							}
						}
						else if (src == "styles.jade") {
							return {
								styles: grunt.file.readJSON("./BA2011.json")
							}
						}
						else {
							return {}
						}
					}
				},
				files: {
					"../gh-pages/BJCP.html": "BJCPstyles.jade",
					"../gh-pages/BA.html": "styles.jade",
					"../gh-pages/index.html": "index.jade"
				}
			}
		},
		stylus: {
			compile: {
				files: {
					'../gh-pages/styles.css': 'styles.styl'
				}
			}
		},
		browserify: {
			client: {
				files: {
					'../gh-pages/ui.js': 'ui.coffee'
				}
			},
			options: {
				transform: ['coffeeify']
			}
		},
		watch: {
			jade: {
				files: ['*.jade'],
				tasks: ['jade'],
			},
			stylus: {
				files: ['*.styl'],
				tasks: ['stylus']
			},
			browserify: {
				files: ['*.coffee'],
				tasks: ['browserify'],
			}
		},
	});
	
	grunt.loadNpmTasks('grunt-contrib-jade');
	grunt.loadNpmTasks('grunt-contrib-stylus');
	grunt.loadNpmTasks('grunt-browserify');
	grunt.loadNpmTasks('grunt-contrib-watch');
	
	grunt.registerTask('build',['jade','stylus','browserify'])
}