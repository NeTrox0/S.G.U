/*
Sets the time to a specified hour of day. currently accepts 
Morning = 07:00
Midday = 12:00
Evening = 16:00


*/


_timeToSkipTo = _select 0





switch _timeToSkipTo do
{
	case 7 :
	case 12:
	case 16:
	case 24:


}


 
 
skipTime (_timeToSkipTo - daytime + 24 ) % 24;