# Simpler Sentry Integration Proposed Solution

### Introduction
Sentry integration comprises two major components:
- Sentry Plugin: Collects error logs and sends them to the server.
- Sentry Platform: A comprehensive suite for company management, advanced querying, integrations, and a sophisticated UI for categorization.

While Sentry is open-source and can be self-hosted, its infrastructure is resource-intensive and complex, creating cost and scalability issues that exceed our needs.

**Proposed Middle Path**: Utilize Sentry’s reliable client plugins alongside our custom servers.

### Plan
- [ ] Sanity Test & Data snapshots collections
- [ ] Defining Roadmap
- [ ] Review with projects members
- [ ]  Execution Plan


#### Sanity Test & Data snapshots collections
As a sanity test for this path, the first step would be to check the sent data to Sentry, which would be possible using a mirror API like [﻿webhook.site ](https://webhook.site/) what this site does is it captures the data sent to it, which provides the context, based on the error context format, a web application feasibility review can be done.



#### Defining Roadmap
- [ ] Dividing Features into must-haves and enhancements
- [ ] UI Planning
- [ ] Architectural Decisions: Framework, DB, DB modeling, authentication, ..etc


#### Review with projects members
Discussing the proposed solution across all Sitech projects of at least one member, collecting invaluable feedback, and refining the previous steps, the point of this stage is to come out with principal must-have features that mark V1 a success



V1  Must have features:

1. To be filled
2. ETC


**Execution Plan**

1. A clear Jira board with tasks ready to be executed, and a team resources delivery plan
2. A rollout to projects and this point relies on project maintainers to be available for hotfixes, I nominate Doroob but you can also nominate your project as long you can guarantee maintaining discrepancies that affect your project


PS: all hotfixes should be pushed to main code base to ensure code flexibility 



























