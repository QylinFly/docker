Docker: automation for the rest of us
1. 1 / 61
2. Docker: automation for the rest of us 2 / 61
3. Outline Who I am What I do How Docker is helping 3 / 61
4. Who am I? (And why am I here?) 4 / 61
5. Jérôme Petazzoni @jpetazzo Tamer of Unicorns and Tinkerer Extraordinaire* Grumpy French DevOps Dislikes: repetitive tasks Likes: shell scripts "Go Away Or I Will Replace You Wiz Le Very Small Shell Script!" * At least one of those is actually on my business card 5 / 61
6. What do I do? 6 / 61
7. I am tech support 7 / 61
8. I am tech support 8 / 61
9. I am tech support ... for a PaaS! Every day a new kind of fun! Monday: Node.js Tuesday: Python Wednesday: Ruby Thursday: Java Friday: PHP 9 / 61
10. Lessons learned Lots of support requests are: "How do I do X with your product?" Good documentation → fewer tech support requests "Give a man a fish and you feed him for a day; teach a man to fish and you feed him for a lifetime." "Give someone good support and you help them today; write some docs and you help everybody forever." Unless your business model relies on a product that you can't install unless you have a PhD or a support contract 10 / 61
11. I am a technical writer Wrote 60-80% of dotCloud documentation Wrote 30-40% of Docker training materials I ♥ to explain things 11 / 61
12. I am a technical writer Wrote 60-80% of dotCloud documentation Wrote 30-40% of Docker training materials I ♥ to explain things Documentation is part of your product It's NOT the least important part We're talking about technical products here. Don't brag because you were able to place a phone call without reading the user manual. 12 / 61
13. I am a developer 13 / 61
14. I am a developer 14 / 61
15. @iamdevloper 15 / 61
16. I am a sysadmin 16 / 61
17. I am a sysadmin ops Server whisperer Fixes other people's ʇᴉɥs On-call 17 / 61
18. Public Service Advisory Never, ever be proud of being on-call Never, ever be on-call for free 18 / 61
19. Public Service Advisory Never, ever be proud of being on-call Never, ever be on-call for free You're harming yourself 19 / 61
20. Public Service Advisory Never, ever be proud of being on-call Never, ever be on-call for free You're harming yourself You're harming all of us 20 / 61
21. Public Service Advisory Never, ever be proud of being on-call Never, ever be on-call for free You're harming yourself You're harming all of us Make sure people are aware of the issues 21 / 61
22. I am an Impostor Impostor syndrome, anyone? Am I really qualified to do this? What the F am I doing here? Affects women more than men This can lead to burn-out and sleep deprivation This is more important than you think 22 / 61
23. What's Docker? 23 / 61
24. an open platform to build, ship, and run any app, anywhere 24 / 61
25. What can Docker do for me? 25 / 61
26. Some challenges with tech support "Works For Me" "Can't reproduce" "I would appreciate if you could test between 3 and 4am" "So to trigger the bug you have to install X and Y then configure A, B, and C, then download the extra file, put it in this directory (which doesn't exists?!?) and then if you restart three times in approximatively 5 minutes but sometimes it takes longer you will see that the images are shifted by a few pixels but if it doesn't work try to upgrade Y to version Z and try all over again..." 26 / 61
27. Docker for tech support Get a well-defined, reproducible environment Define this environment in a Dockerfile Build this Dockerfileinto a container image Run this container image anywhere Same behavior, guaranteed (or your Open Source money back) 27 / 61
28. Dockerfile FROMubuntu:14.04 RUNapt-getupdate RUNapt-getinstall-ylibxlibygitwget RUNgitclonegit://github.com/a/b/c RUNmkdir-p/extra/dir RUNwget-O/extra/dirhttp://extra/file CMDstart-service&sleep60; stop-service;start-service;sleep60; stop-service;start-service;sleep60; start-service $dockerbuild-tpixelbug. ... $dockerrunpixelbug ... Automate those repetitive, unreliable tasks yourself 28 / 61
29. Some challenges for tech writers We use sphinx, showoff, LaTeX... "To see what the final documentation will look like, you need Ruby, 45 libraries, a custom fork of this project, and a philosopher's stone." Insert scary anecdote about API documentations Result: tech writers can't see what they're doing other team members won't/can't contribute to the docs 29 / 61
30. Docker for tech writers FROMubuntu:14.04 MAINTAINEREducationTeamatDocker<education@docker.com> RUNapt-getupdate RUNapt-getinstall-ycurlwgetgitrubyruby-devlibxml2-devlibxslt-dev build-essentialzlib1g-dev RUNgitclonehttps://github.com/puppetlabs/showoff.git WORKDIR/showoff RUNgembuildshowoff.gemspec RUNgeminstall--no-rdoc--no-ri./showoff-*.gem #Let'sinstallprince.Thefirstdpkgwillfailbecauseofmissingdependencies, #sowe'llinstallthedependencieswith"install-f"thentryagain. WORKDIR/usr/src RUNwgethttp://www.princexml.com/download/prince_9.0-5_ubuntu14.04_amd64.deb RUNdpkg-iprince_9.0-5_ubuntu14.04_amd64.deb||true RUNapt-getinstall-fy RUNdpkg-iprince_9.0-5_ubuntu14.04_amd64.deb COPY/slides//slides/ WORKDIR/slides CMD["showoff","serve"] EXPOSE9090 30 / 61
31. Docker for tech writers With this Dockerfile, anyone can run our "doc pipelines" Results are consistent, no more: "you forgot to install 字形 so the output is different!" Less wasted time for onboarding, upgrades, reinstalls... Automate those repetitive, difficult tasks yourself 31 / 61
32. Some challenges for developers Set up this Ruby + Postgres + Mongo + Cassandra stack Make sure that all team members have the same env Have consistent library versions between dev and prod Basically, the same challenges as before, but worse 32 / 61
33. Docker for developers Write Dockerfiles for each component Put components together with Fig/Compose Profit! 33 / 61
34. Describing a complex stack web: build:src/front links: -redis -postgres:db -api -zookeeper:zk redis: image:redis postgres: image:postgres api: build:src/backend links: -redis -postgres:db -cassandra -zookeeper:zk zookeeper: image:jplock/zookeeper cassandra: image:spotify/cassandra 34 / 61
35. Onboarding Hire developer* Give them a computer Install Docker gitclone... docker-composeup... Your stack is up and running *Actually the most difficult part. 35 / 61
36. Cold, hard data How long does it take for a developer to join a new project? Before Docker: 2 days After Docker: 2 hours (Source: Worldline) 36 / 61
37. Docker vs Configuration Management Quick poll: 37 / 61
38. Docker vs Configuration Management Quick poll: who is a dev? 38 / 61
39. Docker vs Configuration Management Quick poll: who is a dev? who uses Chef/Puppet/Salt/Ansible/...? 39 / 61
40. Docker vs Configuration Management Quick poll: who is a dev? who uses Chef/Puppet/Salt/Ansible/...? who is happy with it and found it easy to learn? 40 / 61
41. Docker vs Configuration Management Quick poll: who is a dev? who uses Chef/Puppet/Salt/Ansible/...? who is happy with it and found it easy to learn? CM is good, but learning curve is steep Docker lets you automate deployment yourself 41 / 61
42. Production People keep asking all the time: Is Docker ready for production? Can I run Docker in production? Who runs Docker in production? 42 / 61
43. Production People keep asking all the time: Is Docker ready for production? Can I run Docker in production? Who runs Docker in production? Why don't you ask the same questions for: Eclipse SublimeText Vagrant 43 / 61
44. Repeat after me: It is OK to use Docker in dev, even without going to prod. 44 / 61
45. — But can I... — No! Later.   Thanks. 45 / 61
46. Some challenges for ops How do I reduce the pain of deployment? How do I scale up and down? How do I move apps from colo to cloud and vice versa? How do I use my resources efficiently? (i.e. without wasting CPU, RAM, disk) 46 / 61
47. Deployment pain Developers send a tarball* Friday evening Deployment deadline is Monday morning Installation instructions are not up to date Dependencies are incompletely specified External services are hard-coded all over the place They use Debian, we use CentOS * Or a git hash, in more sophisticated places. 47 / 61
48. Deployment with Docker Developers ship a container image (or a repo with a Dockerfile) Configuration is done through environment variables* External dependencies are expressed with ambassadors (e.g. the redis server address is redis, and Docker takes care of setting up a proper DNS entry in the container) The dev-to-prod pipeline was already tested by the devs, when they did the dev-to-test deployment * See also: twelve-factor app principles. 48 / 61
49. Scaling up www7needs to be exactly like www[1-6] Possible solutions: Configuration Management (steep learning curve, not a silver bullet) Golden Images (AMI...) (slow, especially for small changes) Server Cloning (can affect existing server; requires manual touch-ups) Docker 49 / 61
50. Scaling up with Docker Create new Docker host (with e.g. docker-machine) Deploy application (SSH + dockerrun, or with remote API) Done! (You still need to update load balancers etc., but you have to do that even without Docker anyway.) 50 / 61
51. From colo to cloud to colo Must make sure that servers are absolutely identical Possible solutions: Configuration Management Tedious, manual work It would be nice if we had a self-contained meta-package holding our application and all its dependencies, all the way down to the OS! 51 / 61
52. From colo to cloud to colo Must make sure that servers are absolutely identical Possible solutions: Configuration Management Tedious, manual work It would be nice if we had a self-contained meta-package holding our application and all its dependencies, all the way down to the OS! Guess what, that's exactly what Docker does. Cool! (You can see Docker images as "super-debs" or "super-rpms".) 52 / 61
53. Optimize resource usage (problem 1) You have: 5 hypervisors (physical machines) Each server has: 16 GB RAM, 8 cores, 1 TB disk Each week, your team asks: one VM with X RAM, Y CPU, Z disk Difficulty: easy 53 / 61
54. Optimize resource usage (problem 2) You have: 1000+ hypervisors (and counting!) Each server has different resources: 8-500 GB of RAM, 4-64 cores, 1-100 TB disk Multiple times a day, a different team asks for: up to 50 VMs with different characteristics Difficulty: ??? 54 / 61
55. Mesos Generic solution to resource usage problem Open Source project (Apache Foundation) In production use at Twitter, AirBNB, eBay, ... Runs your code but doesn't deploy or distribute it How can we distribute our code on our nodes? 55 / 61
56. Mesos + Docker Prepare your workload in a container image Test it locally or on a smaller cluster Submit it to Mesos Mesos picks the right nodes to run your workload Docker downloads the container images and runs them 56 / 61
57. Mesos + Docker + Swarm Mesos is complicated-ish to deploy Mesos is complicated-ish to manage Mesos is complicated-ish to use Docker Swarm can expose a cluster* with the Docker API Swarm lets you use a cluster without learning a new tool (Deployment and management are still a challenge) (Damn! Where is my free lunch!) * Currently a vanilla Docker cluster, soon a Mesos cluster 57 / 61
58. Summary I am a tech support engineer: Docker helps me to reproduce issues I am a technical writer: Docker helps me to render my docs I am a developer: Docker helps me to abstract environments, express dependencies, be operational faster I am a sysadmin: Docker helps me to deploy, scale, orchestrate 58 / 61
59. How much does it cost? 59 / 61
60. How much does it cost? The Docker Engine is Open Source The Docker Registry is Open Source I'm not here to sell anything (But if you insist, we have commercial products, support, and all that stuff!) 60 / 61
61. Questions? @jpetazzo 61 / 61