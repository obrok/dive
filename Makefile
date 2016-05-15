start: build
	/Applications/love.app/Contents/MacOS/love build

build: clean copy_lua copy_moon copy_assets

copy_assets:
	cp assets/* build/

copy_lua: build_dir src/lua/*.lua
	cp src/lua/*.lua build/

copy_moon: build_dir compile_moon
	mv src/moon/*.lua build/

compile_moon: src/moon/*.moon src/moon/**/*.moon
	moonc src/moon/*.moon

build_dir:
	mkdir build

clean:
	rm -rf build
