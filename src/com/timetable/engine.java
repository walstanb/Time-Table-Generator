package com.timetable;
import java.sql.*;
import java.util.*;

public class engine
{
	public static int[][] varand=new int[3][9]; 
	public static int index=0,flag=0,repeat_i=0,random,nlab1;
	public static int time_i=0,caught=0,faculty_index,special_case;
	public static int day_repeat[]=new int[6];
	public static String day_i[] = {"mon", "tue", "wed", "thu", "fri", "sat"};
	public static String[] faculty = new String[70];
	public static int[] load=new int[70];
	public static int[] fid=new int[70];

	public static void resetdatabase(Statement stmt) throws Exception
	{
		String[] sb = new String[100];
		int i=1;
		ResultSet rs=stmt.executeQuery("select * from faculty_details");
		while(rs.next())
		{
			sb[i]=rs.getString("fabbr");
			i++;
		}
		int cn=i;
		i=1;
		while(i<cn)
		{
			stmt.executeUpdate("DROP TABLE IF EXISTS "+sb[i]);
			stmt.executeUpdate("CREATE TABLE "+sb[i]+" (slot varchar(5) NOT NULL,mon varchar(5) DEFAULT NULL,tue varchar(5) DEFAULT NULL,wed varchar(5) DEFAULT NULL,thu varchar(5) DEFAULT NULL,fri varchar(5) DEFAULT NULL,sat varchar(5) DEFAULT NULL)");
			stmt.executeUpdate("INSERT INTO "+sb[i]+" VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');");
			i++;
		}
		for(i=1;i<=4;i++)
			for(int j=1;j<4;j++)
			{
				if(j==1)
				{
					stmt.executeUpdate("DROP TABLE IF EXISTS yr"+i+"dv"+j);
					stmt.executeUpdate("CREATE TABLE yr"+i+"dv"+j+" (slot varchar(5) NOT NULL,mon varchar(5) DEFAULT NULL,tue varchar(5) DEFAULT NULL,wed varchar(5) DEFAULT NULL,thu varchar(5) DEFAULT NULL,fri varchar(5) DEFAULT NULL,sat varchar(5) DEFAULT NULL)");
					stmt.executeUpdate("INSERT INTO yr"+i+"dv"+j+" VALUES ('1FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('AFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('ALAB','FREE','FREE','FREE','FREE','FREE','FREE'),('BFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('BLAB','FREE','FREE','FREE','FREE','FREE','FREE'),('CFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('CLAB','FREE','FREE','FREE','FREE','FREE','FREE'),('DFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('DLAB','FREE','FREE','FREE','FREE','FREE','FREE');");
				}
				else if(j==2)
				{
					stmt.executeUpdate("DROP TABLE IF EXISTS yr"+i+"dv"+j);
					stmt.executeUpdate("CREATE TABLE yr"+i+"dv"+j+" (slot varchar(5) NOT NULL,mon varchar(5) DEFAULT NULL,tue varchar(5) DEFAULT NULL,wed varchar(5) DEFAULT NULL,thu varchar(5) DEFAULT NULL,fri varchar(5) DEFAULT NULL,sat varchar(5) DEFAULT NULL)");
					stmt.executeUpdate("INSERT INTO yr"+i+"dv"+j+" VALUES ('1FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('AFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('ALAB','FREE','FREE','FREE','FREE','FREE','FREE'),('BFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('BLAB','FREE','FREE','FREE','FREE','FREE','FREE'),('CFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('CLAB','FREE','FREE','FREE','FREE','FREE','FREE'),('DFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('DLAB','FREE','FREE','FREE','FREE','FREE','FREE');");
				}
				else if(j==3)
				{
					stmt.executeUpdate("DROP TABLE IF EXISTS yr"+i+"dv"+j);
					stmt.executeUpdate("CREATE TABLE yr"+i+"dv"+j+" (slot varchar(5) NOT NULL,mon varchar(5) DEFAULT NULL,tue varchar(5) DEFAULT NULL,wed varchar(5) DEFAULT NULL,thu varchar(5) DEFAULT NULL,fri varchar(5) DEFAULT NULL,sat varchar(5) DEFAULT NULL)");
					stmt.executeUpdate("INSERT INTO yr"+i+"dv"+j+" VALUES ('3FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('AFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('ALAB','FREE','FREE','FREE','FREE','FREE','FREE'),('BFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('BLAB','FREE','FREE','FREE','FREE','FREE','FREE'),('CFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('CLAB','FREE','FREE','FREE','FREE','FREE','FREE'),('DFAC','FREE','FREE','FREE','FREE','FREE','FREE'),('DLAB','FREE','FREE','FREE','FREE','FREE','FREE');");
				}
			}
		System.out.println("Database reset");
	}
	public static String[] importsemsub(int sem,Statement stmt) throws Exception
	{
		String[] subarr = new String[10];
		int i=0;
		ResultSet rs=stmt.executeQuery("SELECT * FROM sub_details where sem="+sem+";");
		while(rs.next())
		{
			subarr[i]=rs.getString("sbabbr");
			i++;
		}
		return subarr;
	}
	
	public static String[] importsemfaculty(String sub,int sem,Statement stmt) throws Exception
	{
		int i=0;
		int j=1;
		ResultSet rs=stmt.executeQuery("select * from faculty_details where sub"+sem+"='"+sub+"' order by FID");
		while(rs.next())
		{
			faculty[i]=rs.getString("fabbr");
			fid[j]=rs.getInt("fid");
			j++;
			i++;
		}
		if(i==1)
		{
			faculty[i]=faculty[i-1];
			i++;
			faculty[i]=faculty[i-1];
			i++;
		}
		rs=stmt.executeQuery("select * from faculty_details order by FID");
		while(rs.next())
		{
			faculty[i]=rs.getString("fabbr");
			fid[j]=rs.getInt("fid");
			j++;
			i++;
		}
		return faculty;
	}
	
	public static int randg(int p,int a) throws Exception
	{
		int f=0,res;
		int n=String.valueOf(a).length();
		if(varand[p][n-1]!=-1 || varand[p][0]==0)
			for(int j=0;j<n+2;j++)
					varand[p][j]=-1;
		outer:
		for(int i=0;i<n;i++)
		{
			int l=a%10;
			for(int j=0;j<n;j++)
				if(varand[p][j]==l)
				{
					a=(int)(a/10);
					continue outer;
				}
			if(f==0)
				f=l;
			else
				f=(f*10)+(l);
			a=(int)(a/10);	
		}
		
		int[] rn = new int[String.valueOf(f).length()];
		for(int i=0;i<rn.length;i++)
		{ 
			rn[i]=f%10;
			f=(int)(f/10);
		}
		Random r = new Random((System.nanoTime()%100000));
		int nextRandomNumberIndex = r.nextInt(rn.length);
		res=rn[nextRandomNumberIndex];

		for(int i=0;i<n;i++)
			if(varand[p][i]==-1)
			{
				varand[p][i]=res;
				break;
			}
		return res;
	}
	
	public static void assignload(String[] faculty,int index,int time,int year,String subject,int div,int faculty_index,Statement stmt) throws Exception
	{
		int a=faculty_index;
		ResultSet rs1=stmt.executeQuery("select "+day_i[index]+" from yr"+year+"dv"+div+" where slot ='"+time+"FAC'");
		rs1.next();
		String class_load=rs1.getString(day_i[index]);
		if(class_load.equals("FREE"))
		{
			ResultSet rs2=stmt.executeQuery("select "+day_i[index]+" from "+faculty[a]+" where slot = '"+time+"CL'");
			rs2.next();
			String faculty_load = rs2.getString(day_i[index]);
			int checkpoint=fid[faculty_index+1];
			if(faculty_load.equals("FREE") && load[checkpoint]>1)
			{
				for(int i1=0;i1<6;i1++)
				{
					if(day_repeat[i1]==index)
						flag++;
				}
				if(flag>0)
				{
					flag=0;
					index=engine.randg(1,123045);
					time_i=engine.randg(1,random);
					engine.assignload(faculty,index,time_i,year,subject,div,a,stmt);
				}
				else
				{	
					flag=0;
					day_repeat[repeat_i]=index;
					repeat_i+=1;
					load[checkpoint]-=1;
					stmt.executeUpdate("update yr"+year+"dv"+div+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+time+"SUB')");
					stmt.executeUpdate("update yr"+year+"dv"+div+" set "+day_i[index]+" = '"+faculty[a]+"' where (`slot` ='"+time+"FAC')");
					stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+time+"SUB')");
					stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = 'y"+year+"d"+div+"' where (`slot` ='"+time+"CL')");
				}
			}
			else
			{
				index=engine.randg(1,123045);
				time_i=engine.randg(1,random);
				engine.assignload(faculty,index,time_i,year,subject,div,a,stmt);
			}
		}
		else
		{
			index=engine.randg(1,123045);
			time_i=engine.randg(1,random);
			engine.assignload(faculty,index,time_i,year,subject,div,a,stmt);
		}
	}
	
	public static void assignsub(String subject,int sem,int year,int random,int div,int faculty_index,int nlec,Statement stmt) throws Exception
	{	
		String[] faculty = new String[10];
		faculty=engine.importsemfaculty(subject,sem,stmt);
		index=engine.randg(1,123045);
		time_i=engine.randg(1,random);
		engine.assignload(faculty,index,time_i,year,subject,div,faculty_index,stmt);
	}
	public static void assignloadlab(String[] faculty,int index,int time,int year,String subject,int div,char batch,int faculty_index,Statement stmt) throws Exception
	{
		try
		{
			Random rand = new Random();
			int a=faculty_index;
			ResultSet rs1=stmt.executeQuery("select "+day_i[index]+" from yr"+year+"dv"+div+" where slot ='"+batch+"FAC'");
			rs1.next();
			String class_load=rs1.getString(day_i[index]);
			if(class_load.equals("FREE"))
			{
				ResultSet rs2=stmt.executeQuery("select "+day_i[index]+" from "+faculty[a]+" where slot = '"+time+"CL'");
				rs2.next();
				String faculty_load = rs2.getString(day_i[index]);
				
				ResultSet rs21=stmt.executeQuery("select "+day_i[index]+" from "+faculty[a]+" where slot = '"+(time+1)+"CL'");
				rs21.next();
				String faculty_load1 = rs21.getString(day_i[index]);
				int checkpoint=fid[faculty_index+1];
				if(faculty_load.equals("FREE") && faculty_load1.equals("FREE") && load[checkpoint]>1)
				{
					load[checkpoint]-=2;
					stmt.executeUpdate("update yr"+year+"dv"+div+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+batch+"LAB')");
					stmt.executeUpdate("update yr"+year+"dv"+div+" set "+day_i[index]+" = '"+faculty[a]+"' where (`slot` ='"+batch+"FAC')");
					stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+time+"SUB')");
					stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = 'y"+year+"d"+div+"L' where (`slot` ='"+time+"CL')");
					stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+(time+1)+"SUB')");
					stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = 'y"+year+"d"+div+"L' where (`slot` ='"+(time+1)+"CL')");
				}
				else
				{	
					special_case++;
					index=engine.randg(1,123045);
					if(nlab1==4)
						faculty_index=engine.randg(1,12034);
					else
						faculty_index=engine.randg(1,123);
					if(special_case>20)
						faculty_index = rand.nextInt(30);
					engine.assignloadlab(faculty,index,time,year,subject,div,batch,faculty_index,stmt);
				}
			}
			else
			{
				special_case++;
				index=engine.randg(1,123045);
				if(nlab1==4)
					faculty_index=engine.randg(1,12034);
				else
					faculty_index=engine.randg(1,123);
				if(special_case>20)
					faculty_index = rand.nextInt(30);			
				engine.assignloadlab(faculty,index,time,year,subject,div,batch,faculty_index,stmt);
			}
		}
		catch(Exception e)
		{
			caught++;
			System.out.println("LAB error");
		}
	}

	public static void assigndesignload(int year,String subject,Statement stmt) throws Exception
	{
		char batch=65;
		int div=1,classassign=0,timede=5,a;
		while(div<4)
		{
			batch=65;
			if(div==1)
				timede=5;
			if(div==2)
				timede=3;
			if(div==3)
				timede=1;
			while(batch<69)
			{
				classassign=0;
				while(classassign==0)
				{
					int assignflag=0;
					index=engine.randg(1,123045);
					ResultSet rsde=stmt.executeQuery("select "+day_i[index]+" from yr"+year+"dv"+div+" where slot ='"+batch+"FAC'");
					rsde.next();
					String class_load=rsde.getString(day_i[index]);
					if(class_load.equals("FREE"))
					{
						classassign=1;
						int designfaculty=0;
						while(assignflag==0)
						{
							designfaculty++;
							if(designfaculty>30)
								designfaculty=0;
							faculty_index = designfaculty;
							a=faculty_index;
							int checkpoint=fid[faculty_index+1];
							if(load[checkpoint]>0)
							{
								ResultSet rs2de=stmt.executeQuery("select "+day_i[index]+" from "+faculty[a]+" where slot = '"+timede+"CL'");
								rs2de.next();
								String faculty_load = rs2de.getString(day_i[index]);
								ResultSet rs21de=stmt.executeQuery("select "+day_i[index]+" from "+faculty[a]+" where slot = '"+(timede+1)+"CL'");
								rs21de.next();
								String faculty_load1 = rs21de.getString(day_i[index]);
								if(faculty_load.equals("FREE") && faculty_load1.equals("FREE"))
								{
									assignflag=1;	
									load[checkpoint]-=2;
									stmt.executeUpdate("update yr"+year+"dv"+div+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+batch+"LAB')");
									stmt.executeUpdate("update yr"+year+"dv"+div+" set "+day_i[index]+" = '"+faculty[a]+"' where (`slot` ='"+batch+"FAC')");
									stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+timede+"SUB')");
									stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = 'y"+year+"d"+div+"L' where (`slot` ='"+timede+"CL')");
									stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = '"+subject+"' where (`slot` ='"+(timede+1)+"SUB')");
									stmt.executeUpdate("update "+faculty[a]+" set "+day_i[index]+" = 'y"+year+"d"+div+"L' where (`slot` ='"+(timede+1)+"CL')");										
								}
							}
						}					
					}
				}
				batch++;
			}
			div++;
		}	
	}

	public static void assignsublab(String subject,int sem,int year,int random,int div,char batch,int faculty_index,Statement stmt) throws Exception
	{
		String[] faculty = new String[10];
		faculty=engine.importsemfaculty(subject,sem,stmt);
		index=engine.randg(1,123045);
		engine.assignloadlab(faculty,index,random,year,subject,div,batch,faculty_index,stmt);
		
	}
	public static boolean eng(String term) throws Exception 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root","krut@21041999");
		Statement stmt=conn.createStatement();
		ResultSet rsload=stmt.executeQuery("select * from faculty_details");
		rsload.next();
		int k1=1;
		while(rsload.next())
		{
			load[k1]=rsload.getInt("load");
			k1++;
		}
		System.out.println("Reset database in progress !!!");
		engine.resetdatabase(stmt);
		int sem,year,div;
		//Scanner sc=new Scanner(System.in);
		String[] subarr = new String[10];
		//System.out.println("Enter the odd/even : ");
		//String term=sc.nextLine();
		//String term ="even";
		year=4;
		div=1;
		if(term.equals("odd"))
			sem=7;
		else
			sem=8;
		while(sem>0)
		{
			while(div<4)
			{
				if(div==1)
					random=1234;
				if(div==2)
					random=1256;
				if(div==3)
					random=3456;
				subarr=engine.importsemsub(sem,stmt);
				int i=0;
				System.out.println("Starting "+sem+" division "+div);
				while(subarr[i]!=null)
				{
					ResultSet rs5=stmt.executeQuery("SELECT * FROM sub_details where sbabbr='"+subarr[i]+"'");
					rs5.next();
					//int nlab=rs5.getInt("nlab");
					int nlec=rs5.getInt("nlec");
					//if(nlab==0 && nlec<4)
					//	faculty_index=0;
					//else
						faculty_index=div-1;
					for(int j=0;j<nlec;j++)
					engine.assignsub(subarr[i],sem,year,random,div,faculty_index,nlec,stmt);
					i++;
					for(int i1=0;i1<6;i1++)
					{
						day_repeat[i1]=-1;
						faculty[i1]="NULL";
					}
					repeat_i=0;
				}
				div+=1;
			}
			div=1;
			sem=sem-2;
			year=year-1;
		}
		System.out.println("Lecture Time table Generated");

		year=4;
		div=1;
		sem+=8;
		while(sem>0)
		{
			while(div<4)
			{
				char batch=65;
				if(div==1)
					random=5;
				if(div==2)
					random=3;
				if(div==3)
					random=1;
				subarr=engine.importsemsub(sem,stmt);
				int i=0;
				System.out.println("Starting "+sem+" division "+div);
				while(subarr[i]!=null)
				{
					//System.out.println(subarr[i]);
					ResultSet rs5=stmt.executeQuery("SELECT * FROM sub_details where sbabbr='"+subarr[i]+"'");
					rs5.next();
					nlab1=rs5.getInt("nlab");
					//nlec1=rs5.getInt("nlec");
					if(nlab1==4)
						faculty_index=engine.randg(1,12034);
					else
						faculty_index=div-1;
					for(int j=0;j<(nlab1*2);j++)
					{	
						special_case=0;
						engine.assignsublab(subarr[i],sem,year,random,div,batch,faculty_index,stmt);
						batch++;
						if(batch>68)
							batch=65;
					}
					i++;
				}
				div+=1;
			}
			div=1;
			sem-=2;
			year-=1;
		}
		//conn.close();
		System.out.println("LAB Time table Generated");
		String sub = "null";
		if(term.equals("odd"))
		{
			//ResultSet rsproj=stmt.executeQuery("select sbabbr from sub_details where sem='17'");
			//rsproj.next();
			//sub=rsproj.getString("sbabbr");
			//engine.assigndesignload(2,sub,stmt);
			ResultSet rsdes=stmt.executeQuery("select sbabbr from sub_details where sem='13'");
			rsdes.next();
			sub=rsdes.getString("sbabbr");
			engine.assigndesignload(2,sub,stmt);
			ResultSet rsdes1=stmt.executeQuery("select sbabbr from sub_details where sem='15'");
			rsdes1.next();
			sub=rsdes1.getString("sbabbr");
			engine.assigndesignload(3,sub,stmt);
		}
		else
		{
			ResultSet rsdes2=stmt.executeQuery("select sbabbr from sub_details where sem='14'");
			rsdes2.next();
			sub=rsdes2.getString("sbabbr");
			engine.assigndesignload(2,sub,stmt);
			ResultSet rsdes3=stmt.executeQuery("select sbabbr from sub_details where sem='16'");
			rsdes3.next();
			sub=rsdes3.getString("sbabbr");
			engine.assigndesignload(3,sub,stmt);
		}
		System.out.println("DESIGN LAB ASSIGNED");
		conn.close();
		return true;
	}
}