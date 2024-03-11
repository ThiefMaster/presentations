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
   - [indico.gnome.org](https://indico.gnome.org)
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
        margin-top: 3em;
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
        margin-top: 3em;
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
        margin-top: 3em;
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

### Hotdesks

![bg width:60% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/burotel.png)

---
<style scoped>
    section {
        justify-content: start;
    }
</style>

### Themes / Customization

![bg width:55% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/ilcagenda.png)

---
<style scoped>
    section {
        justify-content: start;
    }
</style>

### Themes / Customization

![bg width:50% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/meeting.png)

---
<style scoped>
    section {
        justify-content: start;
    }
</style>

### Themes / Customization

![bg width:50% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/conference.png)

---
<style scoped>
    section {
        justify-content: start;
    }
</style>

### Check-in App (PWA)

![bg width:65% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/checkin_app.png)

---


![bg left 95% drop-shadow:0,5px,10px,rgba(0,0,0,.4)](assets/forum.png)

### Conclusion
 - Extensible event management system
 - Open Source
 - Mature and actively maintained
 - Ecosystem of plugins
    - official + 3rd party
 - Thriving community
 - **Everyone is welcome**!

---

### [getindico.io](https://getindico.io)

![mastodon width:40px](assets/theme/mastodon.svg) [@getindico@fosstodon.org](https://fosstodon.org/@getindico)
![twitter width:40px](assets/theme/twitter.png) [@getindico](https://twitter.com/getindico)
![matrix width:30px](assets/theme/matrix.svg) [@#indico:matrix.org](https://app.element.io/#/room/#indico:matrix.org) / indico@libera.chat

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
