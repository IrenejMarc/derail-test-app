module controllers.users;

import std.string : format;

import controllers.application;

class UsersController : ApplicationController
{
	void index()
	{
		response.writeBody("Helloworld");
	}

	void build()
	{
	}

	void show()
	{
		struct User
		{
			int id = 1;
			string username = "user1";
		}

		auto user = User();

		format!"text/html"(() => render!"show");
		format!"application/json"(() => renderJson(user));
	}

	void create()
	{
	}

	void update()
	{
	}

	void destroy()
	{
	}
}

