#put in .bashrc
#alias nodebin='export PATH=$(npm bin):$PATH'
#	nodejs ./node_modules/browser-sync/bin/browser-sync.js \

clean:
	rm -rf node_modules

download:



	
	@test -s js/jquery.min.js && echo "have jquery.min.js" \
		|| { mkdir -p css; \
			curl https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js \
			-o js/jquery.min.js; }



	
	@test -s css/bootstrap.min.css && echo "have bootstrap.min.css" \
		|| { mkdir -p css; \
			curl https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css \
			-o css/bootstrap.min.css; }

	@test -s js/bootstrap.min.js && echo "have bootstrap.min.js" \
		|| { mkdir -p js; \
			curl https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js \
			-o js/bootstrap.min.js; }



	@test -s css/font-awesome.min.css && echo "have font-awesome.min.css" \
		|| { mkdir -p css; \
			curl https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css \
			-o css/font-awesome.min.css; }


	@test -s font-awesome-4.7.0.zip && echo "have font-awesome" \
		|| { wget http://fontawesome.io/assets/font-awesome-4.7.0.zip \
			unzip font-awesome-4.7.0.zip \
			mkdir -p fonts \
			mv font-awesome-4.7.0/fonts/* ./fonts \
			mkdir -p css \
			mv font-awesome.min.css ./css; }


	@test -s js/jquery.waypoints.min.js && echo "have jquery.waypoints.min.js" \
		|| { mkdir -p js; \
			curl https://lib.arvancloud.com/ar/waypoints/4.0.1/jquery.waypoints.min.js \
			-o js/jquery.waypoints.min.js; }


setup:
#	npm init
	npm install browser-sync
#	npm install gulp

runit: 
	./node_modules/.bin/browser-sync \
	start \
	--server \
	--files "*.html, css/*.css, js/*.js" \

