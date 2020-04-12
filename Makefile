build=build
build_type=Release
compiler=clang

export CC=${compiler}
export CXX=${compiler}++

setup:
	conan install cpp/conanfile.txt --install-folder ${build}
	cmake -B ${build} -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=${build_type} .

.PHONY build:
build: setup
	cmake --build ${build}

.PHONY run:
run:
	cd ${build} && cpp/bin/birthday-greeting-cpp

clean:
	rm -rf ${build}