Basic Messenger
This front-end app works with a Rails API to enable basic message sending between users. It requires a simple login (unauthenticated) in order to post a message. User1 can post a message and see their message added to the chat box. User2, in another browser window, can also see the message that User1 has posted within one second of posting. Both users are able to enjoy two-way messaging with a minimal delay.

Getting Started:
Clone the frontend and backend repos (frontend at https://github.com/BlythePollard/messenger-frontend). Navigate to the backend in the terminal. Ensure that dependencies are installed by running 'bundle install', ensure that migrations are completed by running 'rails db:migrate', and seed the two users, user1 and user2, by running 'rails db:seed'.

In one terminal tab, launch the backend using 'rails s'.

In a second tab, launch the frontend using 'npm start'- allow server to start on http://localhost:3001.

Navigate to http://localhost:3001 to launch the app.


Usage:
Once the application is launched, user will be prompted to sign in. User can sign in with either of the seeded usernames, 'user1' or 'user2'. Once signed in, the user can leave a new message on the chat board.

To view the capability of 2-way chat between users, launch the app again in an incognito browser and sign in as the second user. From here, user1 and user2 can send each other messages that are updated in both windows within 1 second of submission.


Reflections & Next Steps:
This app was created using the frameworks that I have learned from my Flatiron bootcamp and am most comfortable with- Ruby on Rails and React.js. The biggest challenge I encoungered in building the app was finding a way for the chat component to update with messages for both users in different browsers without a page refresh. I solved this issue by setting a timed fetch request in my ChatBox component, which re-fetches the message data from the API each second, causing the component to re-render and display new messages from any user. The drawback of this solution is the need to constantly re-fetch data, causing potentially unnecessary traffic between my frontend and backend.

The timed fetch solution works for my simple app, but if I were to develop the app further or work toward deployment, I would likely take another route that I found while researching my data refreshing issue: a WebSocket API such as Socket.IO. I researched Socket.IO as a potential solution to my issue, but in my research I found that it works specifically with Node.js, an environment that I am not very familiar with. 

The discovery of potentially better ways to create a chat app led me to a couple of reflections and questions. I settled on building my project with Rails and React because I was comfortable with them, not because they are necessarily the best frameworks for a live chat app. Had I done a bit more research before embarking on the process, could I have found a simpler and more appropriate way to create the app, such as Socket.IO and Node.js? I found that attempting to add websockets into my nearly fully-functional app required a lot of backtracking and was quite confusing, leading me to stick with what I knew. If I had a better knowledge of websockets from the beginning, would I have been able to design my app more effectively to fit the functionality I was aiming for? And what is the process by which a software engineer goes about deciding what tools to use for a specific project or design? In my journey as a software engineer, I imagine that I will continue to run into similar questions and conundrums, and I look forward to both learning best practices from others and learning through trial and error, as I did in this project.

This simple project brought out all of the things I enjoy about coding: the freedom to create, the joy of problem-solving and finding solutions I never would have expected, the mix of frustration and exhilaration that come with ongoing learning, and the satisfaction at having worked through challenges and come out on the other side with something I'm proud of. 