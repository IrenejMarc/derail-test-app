import std.stdio;

import derail;

class DerailTest : Application
{
}

shared static this()
{
	writeln("Derail-test shared this");

	auto app = new DerailTest();

	with(app.router)
	{
	  get("/", &hello);

		resource!"users";
	}

	writeln("Routes: ");
	foreach (route; app.router.routes)
	{
		write(" * ");
		writeln(route);
	}

	app.run();
}

void hello(Request req, Response res)
{
	res.writeBody("Hello?");
}
