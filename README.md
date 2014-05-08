GIT MIGRATION BASH
==================

Bash script to migrate multiple repositories from a server to another.

How to use
----------

Open the repos.txt file and complete with your repos separeting from and to repos with `|`, like:

	from_repo.git|to_repo.git
	from_repo.git|to_repo.git
	from_repo.git|to_repo.git
	<blank_line_on_footer>
	
After just run rr.sh with:

	./rr.sh < repos.txt