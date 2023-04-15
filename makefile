update:
	git add .
	git commit -m "$(commit)"
	git push -u origin master

build-apk:
	flutter build apk

build-web:
	flutter build web

run-web:
	python3 -m http.server 5050 --directory build/web