Samuel Gosselin:

moved the navbar to partial and mapped the buttons
commit 29febb0
commit 86d5c0d
Added user association to question & asked by on listing
commit 794229c
Removed redundant 'ask question' button on question listing
commit 5311d65
Only a user that owns the question can modify or delete it (button visibility only, not url access)
commit 5421dcb
Fixed the semantic error on user not signed in
commit 90db7c8
Cleaned up question model for user methods using prebuilt rails functions
commit 9d99571
User association with answers
commit 37bcc5a
Added button visibilities with respect to the user for answers on questions
commit 1ff7e61
Added the block diagram of the app
commit 59cecb2
Fixed the bug for TravisCI
commit 2c70367


Jeffrey Tang:

Voting system
Added upvote and downvote method in answers controller
Added thumbs up/down
Edited user and answer models (added acts_as_votable and acts_as_voter)
Created new migration for voting system
Answer sorting by number of votes
Adjusted and fixed some html design for show question page
Moved "asked by" to the center of the well in listing all questions
*** I don't know where I can see the numberfor the commit***


Nick Zombolas:

Added functionality for User Registration

When New User registers, they will automatically be signed in with and redirected to a welcome message.

Solves issue #99 , Pull request #122



Thierry St-Arnaud

Fixed CSS issues

Co-designed Acceptance Test checklist

Worked on the voting system (ordering and rejection)


Sébastien Deslandres:

Co-designed acceptance test list
Worked on the answer voting system: ordering of answers, rejection of answers.
User page and user panel

Avkash Sharma:

Added pagination capability to "Listing all Questions" Page, "Listing all Users"
Commit: 87d3459
Updated Readme to include details about web framework used and coding style used
Commit: 635d36e
Added footer to the Web application
Commit: ea25529
Front-end Styling of "Users Listing Page"
Commit: e8acfc5
Added Email Support
Commit: a0bae81

Khaled Shah:

• Meeting documentation on github wiki
