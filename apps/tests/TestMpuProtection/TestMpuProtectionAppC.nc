/**
 * Basic application to test thread isolation.
 *
 * @author wanja@cs.fau.de
 **/

configuration TestMpuProtectionAppC
{
}
implementation
{
	components MainC, TestMpuProtectionC, LedsC;
	components new ThreadC(200) as Thread1;
	components new ThreadC(200) as Thread2;

	TestMpuProtectionC -> MainC.Boot;
	TestMpuProtectionC.Leds -> LedsC;
	TestMpuProtectionC.Thread1 -> Thread1;
	TestMpuProtectionC.Thread2 -> Thread2;
}