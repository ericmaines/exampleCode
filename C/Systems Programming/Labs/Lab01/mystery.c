long main()
{
	long a = 100;
	long b = 200;
	long c = 300;

	if ( a >= b )
	{
		if (c <=b)
		{
			a = a*b+c;
			return a;
		}
		else 
		{
			c = c*a +b;
			return c;
		}
	}
	a = a+(b*c);
	return a;	
}
