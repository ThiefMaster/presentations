---
marp: true
title: Indico - from CERN to the World
description: An overview of the Indico Project as well as its usage at CERN
theme: indico
paginate: true
_paginate: false
footer: CC BY-NC-SA 4.0
---

<!-- _footer: '' -->

<!-- _backgroundColor: #0033A0 -->
![bg width:400px](assets/theme/cern.svg)

---

![width:400px](assets/theme/logo.svg)
*an event management system*
*from* **CERN** *to the* 🌍

### Adrian Mönnich (CERN)

<style scoped>
h3 {
    color: #aaa;
    font-size: 0.8em;
    font-weight: normal;
}

section {
    text-align: center;
}
</style>

<!-- _footer: CC BY-NC-SA 4.0 • Indico and CERN logos: © Copyright CERN • Based on presentation by Pedro Ferreira -->

---

![bg left 90% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/indico_main_page.png)

### ![width:200px](assets/theme/logo.svg)

- **Event Management** System
- **Collaborative effort** - Open Source (MIT license)
- Core Developed at **CERN**
- ~ **75 developers** over the years
- With contributions from the **United Nations**, **Max-Planck Institute for Physics** and many others!

<style scoped>
section {
    text-align: center;
}
</style>

---

![bg 100% left](assets/community_map.png)

*The most popular event management system you never heard about*

 - **300+ servers**
 - **> 350K users**
 - Initial growth in research, but growing beyond it
   - [indico.un.org](https://indico.un.org)
   - [events.canonical.org](https://events.canonical.com/)
   - [events.gnome.org](https://events.gnome.org)
   - [lpc.events](https://lpc.events)

---

![bg left 50%](assets/vase.svg)

### History

 - **1999** - **CDS Agenda**
 - **2002** - **EU Project**
 - **2004** - Indico in **Production**
 - **2007** - **Room Booking**
 - **2008** - **Interface overhaul**
 - **2013** - First **Workshop**
 - **2015** - The **UN** starts using it
 - **2017** - Indico 2.0 (**rewrite, SQL**)
 - **2021** - Indico 3.0 (**Python 3** 🐍)
 - **2023** - **1 Million Events** surpassed at CERN 🎉
 - **2024** - **20 years!** 🎂

<style scoped>
section {
    font-size: 1.7em;
}
</style>

---

### Open Source

- Free **redistribution**
- Distributed **peer review**
- **Transparency**
- **Community** with common goals

![bg left 80%](assets/opensource.svg)

---

### Open Source

- Powering most of the internet
  - MongoDB, ElasticSearch, MySQL, PostgreSQL, Apache, **Linux**...
- **CERN** was a pioneer
  - World Wide Web
  - Indico, Invenio, ROOT...

![bg left 80%](assets/opensource_news.png)

---

![bg](assets/next_1.jpg)
![bg](assets/cc_2.jpg)

<!-- _footer: © Copyright CERN --->

---

### CERN

- **~10.000** people on campus
- **~225** meeting rooms
- **>100.000** events/year
  - up from 80k pre-COVID
  - **1.130.000** events total
- (Distributed) Meetings
- Conferences, workshops
- Lecture series

![bg left](assets/cern_science_gateway_above.png)

---

### Adoption at CERN


![height:400px](assets/event_stats_cern.png)


---

![](assets/event_types.svg)

---

![bg width:800px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/indico_rb.png)

---

### Philosophy

 - "Agnostic" **core** ("CERN-free")
 - Extension through **plugins** 🧩
 - **Themes** 🎨 (customization)

![bg left:48%](assets/cogs.jpg)

---

![bg right](assets/hood.jpg)

### Under the Hood

 - Python 3 🐍
 - PostgreSQL 🐘
 - Flask
 - SQLAlchemy
 - Celery
 - React
 - Semantic UI React
 - *and many more!*

---

### Extensions

 - Video conferencing 📹
 - Payment Systems 💰
 - Automatic conversion to PDF 🖨
 - Search 🔎
 - Storage 💾
 - OwnCloud integration 📁 (material upload)
 - URL Shortening 👉
 - Internal Workflows (e.g. recording, visitors)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 3em;
    }
</style>

### Zoom

![bg width:800px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/indico_meeting_header.png)

---
<style scoped>
    section {
        justify-content: end;
        padding-bottom: 2em;
    }
</style>

![bg width:600px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/indico_zoom_manage.png)

https://github.com/indico/indico-plugins/tree/master/vc_zoom

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Electronic Payment

![bg width:600px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/indico_meeting_payments.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Workflows

![bg width:40% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/logistics.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Access Registration

![bg width:600px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/visitors.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Webcast / Recording

![bg height:60% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/webcast.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### ownCloud integration

![bg height:60% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/indico-owncloud.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Hotdesks

![bg width:60% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/burotel.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Themes / Customization

![bg width:55% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/ilcagenda.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Themes / Customization

![bg width:50% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/meeting.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Themes / Customization

![bg width:50% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/conference.png)

---
<style scoped>
    section {
        justify-content: start;
    }
    h3 {
        margin-top: 1em;
    }
</style>

### Check-in App (PWA)

![bg width:65% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/checkin_app.png)

---


![bg left 95% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/forum.png)

### To summarize
 - Extensible event management system
 - Open Source
 - Mature and actively maintained
 - Ecosystem of plugins
    - official + 3rd party
 - Thriving community
 - **Everyone is welcome**!

---

### Governance Model 🆕

<style scoped>
    table {
        font-size: 0.9em;
    }

    section {
        padding-right: 30px;
    }
</style>

<table>
    <tr>
        <th></th>
        <th>Contribution</th>
        <th>Influence</th>
    </tr>
    <tr style="background-color: #f7f7f7;">
        <td>Indico Community</td>
        <td>Voluntary</td>
        <td>Ideas and suggestions</td>
    </tr>
    <tr style="background-color: #e8f0f9;">
        <td>Participating Organizations</td>
        <td>Significant (code, translations, outreach, etc.)</td>
        <td>Attend community meetings, a say in community resource allocation</td>
    </tr>
    <tr style="background-color: #e1dbeb">
        <td>Consultative Board</td>
        <td>Particularly relevant</td>
        <td>Approve roadmap and steer general Project development</td>
    </tr>
</table>

![bg right:35% 100%](assets/indico-covernance-tiers.png)

---

### Get involved!

- Do you run an Indico instance and want to support the project?
- Maybe **your** organization would like to become a **Participating Organization**?
- Reach out to us if you're interested!
  ✉ indico-team@cern.ch
- Detailed governance policy:
  https://github.com/indico/governance

![bg left:40%](assets/wewantyou.jpg)

---

<style scoped>
  section {
    padding-right: 20px;
  }
</style>

# Glimpse into the future

![bg right:35%](assets/crystal-ball.jpg)

<!-- _footer: '
  Picture: ["Crystal Ball" by Jeffrey](https://www.flickr.com/photos/jb912/25501052393/) (CC BY-ND)
' -->

---

## v3.3 - coming very soon

- **Privacy features**
  - Yep, we still *love* GDPR
  - User-accessible dump of everything they are linked to
  - Accept privacy notice during registration / signup
  - Admin tool to anonymize an account
- Receipt/certificate generation
  - Fully customizable templates for PDF generation
- And many more smaller improvements

![bg right:25% 100%](assets/receipt-example.png)

---

## v3.4 - later this year

- **Rewrite of the conference timetable** & timetable management in React
  - Rare cases will take the most time... e.g. heavily parallel conferences
- Remove most (all?) ultra-legacy JS (from before jQuery)
  - Opens the door for improving our build pipeline

---

### Find us online

![mastodon width:40px](assets/theme/mastodon.svg) [@getindico@fosstodon.org](https://fosstodon.org/@getindico)
![twitter width:40px](assets/theme/twitter.png) [@getindico](https://twitter.com/getindico)
![matrix width:30px](assets/theme/matrix.svg) [#indico:matrix.org](https://app.element.io/#/room/#indico:matrix.org)
#️⃣ #indico on libera.chat IRC

🌐 [getindico.io](https://getindico.io)
🌐 [github.com/indico/indico](https://github.com/indico/indico)
🌐 [github.com/indico/governance](https://github.com/indico/governance)
✉ indico-team@cern.ch

![bg right:40% width:60%](assets/hexsticker.svg)

<style scoped>
img {
    vertical-align: middle;
}
</style>

---

<!-- _footer: '' -->
<!-- _paginate: false -->

<!-- _backgroundColor: #002939 -->
![bg 30%](assets/theme/logo_inverted.svg)
