default:
	mkdir -p bin
	$(CXX) -std=c++11 -march=native -O2 -pthread -o bin/GA3C -l tensorflow_cc \
	-I include -I third-party -I third-party/gym-uds-api/binding-cpp/include -I third-party/third_party \
	third-party/gym-uds-api/binding-cpp/src/gym-uds.cc third-party/gym-uds-api/binding-cpp/src/gym-uds.pb.cc src/*.cc

clean:
	rm -rf bin/GA3C
