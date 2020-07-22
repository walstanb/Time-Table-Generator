package com.timetable;

public class pass
{
	static String dbpass="password";
	public static String get()
	{
		return dbpass;
	}
	public static void set(String pword)
	{
		dbpass=pword;
	}
}