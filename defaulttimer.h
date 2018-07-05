#ifndef DEFAULTTIMER_
#define DEFAULTTIMER_
//------------------------------------------------------------------------------
#include "windowstimer.h"
//#include "cputimer.h"
//------------------------------------------------------------------------------
class DefaultTimer
{		
	public:
		
		static Timer *getDefault()
		{
			return new WindowsTimer();
			//return new CPUTimer();
		}
};
//------------------------------------------------------------------------------  

#endif

