

### Introduction
For any Sentry has two major components:

- Sentry plugin in, which collects error logs and sends them to the server
- Sentry Platform is a complex suite of company management, advanced querying, advanced integrations, and a very advanced UI that categorizes everything 


While everything in Sentry is open source and theoretically a sentry infrastructure can be self-hosted, it's a large infrastructure that requires too many hardware resources to handle multiple projects and its complex server features, but that's far advanced to meet our needs and creates a pricing limitation that we wouldn't be able to push for.



So a middle path toward using Sentry would be to use its reliable client plugins and our custom servers



### Plan
- [ ] Sanity Test & Data snapshots collections
- [ ] Defining Roadmap
- [ ] Review with project members
- [ ]  Execution Plan


#### Sanity Test & Data snapshots collections
As a sanity test for this path, the first step would be to check the sent data to Sentry, which would be possible using a mirror API like [﻿webhook.site ](https://webhook.site/) 

that can be done using 

what this site does is it captures the data sent to it, which provides the context, based on the error context format, a web application feasibility review can be done.



#### Defining Roadmap
- [ ] Dividing Features into must-haves and enhancements
- [ ] UI Planning
- [ ] Architectural Decisions: Framework, DB, DB modeling, authentication, ..etc


#### Review with project members
Discussing the proposed solution, collecting invaluable feedback, and refining the previous steps, the point of this stage is to come out with principal must-have features that mark V1 a success



V1  Must have features:

1. To be filled
2. ETC


**Execution Plan**

1. A clear Jira board with tasks ready to be executed, and a team resources delivery plan
2. A rollout to projects and this point relies on project maintainers to be available for hotfixes, I nominate Doroob but you can also nominate your project as long you can guarantee maintaining discrepancies that affect your project


PS: all hotfixes should be pushed to main code base to ensure code flexibility 



























