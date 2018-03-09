Samuel Gosselin:

- moved the navbar to partial and mapped the buttons
    - commit 29febb0e7278a4296e7b369aa227c0ff21d16f95
    - commit 86d5c0dfb10bc2868d2598b9f3fc2a7a6e198ccc
- Added user association to question & asked by on listing
    - commit 794229c60ebf5199ba7ef50ffc9c88683ababf78
- Removed redundant 'ask question' button on question listing
    - commit 5311d650851ee1a019597ddfb180a03b39def053
- Only a user that owns the question can modify or delete it (button visibility only, not url access)
    - commit 5421dcb52483d6663e84b040536c97e8f261bcce
- Fixed the semantic error on user not signed in
    - commit 90db7c8c78ae21fa8e09c252b0ba93e4ae89db77
- Cleaned up question model for user methods using prebuilt rails functions
    - commit 9d99571e5149eba526e1a2dc2a6efe09ce960cfa
- User association with answers
    - commit 37bcc5acc7df872cd20b481c89217f80b64879c3
- Added button visibilities with respect to the user for answers on questions
    - commit 1ff7e61409456e5895312b11e2b94b05b4d9f6c1
- Added the block diagram of the app
    - commit 59cecb2694f3596bec71c66f5f04e9231b0f82d9
- Fixed the bug for TravisCI
    - commit  2c703671f59cba7117eee7286ff9d3a0cac007f2




Jeffrey Tang:
- Voting system
- Added upvote and downvote method in answers controller
- Added thumbs up/down
- Edited user and answer models (added acts_as_votable and acts_as_voter)
- Created new migration for voting system
- Answer sorting by number of votes
- Adjusted and fixed some html design for show question page
- Moved "asked by" to the center of the well in listing all questions
*** I don't know where I can see the numberfor the commit***

Nick Zombolas:

- Added functionality for User Registration

- When New User registers, they will automatically be signed in with and redirected to a welcome message.

- Solves  issue #99 , Pull request #122


Thierry St-Arnaud

- Fixed CSS issues

- Co-designed Acceptance Test checklist

- Worked on the voting system (ordering and rejection)



Sébastien Deslandres:
- Co-designed acceptance test list
- Worked on the answer voting system: ordering of answers, rejection of answers.
- User page and user panel

Avkash Sharma:

- Added pagination capability to "Listing all Questions" Page, "Listing all Users"
Commit: [87d3459](https://github.com/samgo1/Soen341/commit/87d3459f0b91dc708344c2259a0d186a25ed63d3)
- Updated Readme to include details about web framework used and coding style used
Commit: [635d36e](https://github.com/samgo1/Soen341/commit/635d36e8df706ad7d44f508d19b01394d06825d2)
- Added footer to the Web application
Commit: [ea25529](https://github.com/samgo1/Soen341/commit/ea25529305a82453ef66ce9ea35a2f28c8beb08e)
- Front-end Styling of "Users Listing Page"
Commit: [e8acfc5](https://github.com/samgo1/Soen341/commit/e8acfc525e1d5541125c9a29bdba5f130aa04ccf)
- Added Email Support
Commit: [a0bae81](https://github.com/samgo1/Soen341/commit/a0bae817f01c9053ebfd4531a92ac69a4f854dbb)



Khaled Shah:

• Meeting documentation on github wiki
