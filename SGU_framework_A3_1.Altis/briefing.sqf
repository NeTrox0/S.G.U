//======================================================
// SGU Brief, WEST! 
//======================================================

//Credits - Ditt namn bör ju stå här, inte mitt..
_timeandweather0 = player createDiaryRecord ["Diary", 
["Credits", "Trox, SGU."]];

//Tid och väder
_timeandweather0 = player createDiaryRecord ["Diary", 
["Time and weather", "
Sen kväll,<br /> 
Beneath a steel sky.
"]];

//Själva briefen, vad är vår uppgift, vad är våra order... VAR KORT
_briefing0 = player createDiaryRecord ["Diary", 
["Briefing", "
Vad är uppgiften? <br />
Beslut<br />
Order.
"]];

//Egna resurser
_resurser0 = player createDiaryRecord ["Diary", 
["Egna resurser", "
Vad har vi för resurser? <br />
Vad kan vi jobba med? <br />
Har vi helikoptrar, bilar osv.
"]];

//Intel om fiendens resurser - Notera att du inte måste ha med all information om vi inte vet.
//	Skriv i sånt fall att vi inte vet.
_intel0 = player createDiaryRecord ["Diary", 
["Intelligence report", "
Vad har fienden för resurser? <br />
Har de stridsvagnar/APC/techicals? <br />
Statiska vapen? <br />
AA? <br />
Var rör sig fienden? <br />
IEDer/minor? <br />
Civila?
"]];

//Sitrep - Lägesrapport. Varför är vi här?
_sitrep0 = player createDiaryRecord ["Diary", 
["Sitrep", "
Vad har hänt? <br />
Finns det någon historia bakom händelserna? <br />
Vad är bakgrunden? <br />
Varför ar vi har?
"]];


//-----------------------------------------------------------------------------------
//	Skapar våra radiokanaler som text under egen "flik"
_index = player createDiarySubject ["sgu_radios"," Radiokanaler"];

_index343 = player createDiaryRecord ["sgu_radios", ["Grupper (PRC 343)", "
[ Ledning ]<br />
Kalle Sigurd: CH 1<br /><br />

[ Grupper ]<br />
Adam Kalle: CH 2<br />
Beritl Kalle: CH 3<br />
Cesar Kalle: CH 4<br />

[ Enablers ]<br />
Null <br />
"]];

_index148 = player createDiaryRecord ["sgu_radios", ["Pluton & grupp (PRC 117/148/152)", "
Kalle Sigurd Plutnät: CH 2<br />
Viktor Urban: CH 5 <br />
Rudolf Urban: CH 5 <br />
CASNET: CH 6 <br />

"]];
