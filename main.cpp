#include <iostream>

#include "position.h"

using namespace std;

int main(int argc,char** argv)
{

	PositionSpace::init();
	
	PositionSpace::Game g;
	
	g.set_from_pgn();
	
	g.list_fens();
	
	return 0;
	
}