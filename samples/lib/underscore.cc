extern "C" char*  underscore_string(char* input);
extern "C" char* test(char* input);
#include <iostream>
#include <algorithm>
//g++ -shared -fPIC -Wall -o lib_underscore.so underscore.cc
using namespace std;

char* test (char* hello){
	return hello;
}

void replace_chars (char *s) {

	while (*s != 0) {
		// Replace all char - with _
		// and all chars will be lowercase
		if (*s == '-') {
			*s = '_';
	  }
		else if( isupper(*s) ){
			*s = tolower(*s);
		}
		s++;
	}
}

char* underscore_string(char* input){
	replace_chars(input);

	return input;
}
