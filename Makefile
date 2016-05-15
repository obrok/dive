build_dir_name = build

start: compile
	/Applications/love.app/Contents/MacOS/love $(build_dir_name)

compile: copy_lua copy_moon copy_assets

copy_assets:
	cp assets/* $(build_dir_name)/

copy_lua: $(build_dir_name) src/lua/*.lua
	cp src/lua/*.lua $(build_dir_name)/

copy_moon: $(build_dir_name) compile_moon
	mv src/moon/*.lua $(build_dir_name)/

compile_moon: src/moon/*.moon src/moon/**/*.moon
	moonc src/moon/*.moon

$(build_dir_name):
	mkdir $(build_dir_name)

clean:
	rm -rf $(build_dir_name)
