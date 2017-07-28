default:
	mkdir -p bin
	$(CXX) -std=c++11 -O2 -pthread -o bin/GAC3 -l tensorflow_cc \
	-I include -I gym-uds-api/binding-cpp/include -I include/third_party \
	gym-uds-api/binding-cpp/src/gym-uds.cc gym-uds-api/binding-cpp/src/gym-uds.pb.cc src/*.cc
