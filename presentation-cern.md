---
marp: true
title: Indico @ CERN
theme: indico
paginate: false
---

<!-- _backgroundColor: #161630 -->

![bg](assets/splash.png)

---

![bg left](assets/cern/cern-aerial.png)

<!-- _footer: Adrian Mönnich • Indico Workshop 2025 • May 2025 -->

# Indico @ CERN

- **~10k** people on campus
  - spread over multiple sites
- **~225** meeting rooms
  - in **100** buildings
- **~110k** events/year
  - **~1.25M** events total
- (Distributed) meetings
- Conferences, workshops
- Lectures

---

<style scoped>
  img {
    display: block;
    margin: 0 auto;
  }
</style>

## Adoption

![height:350px](assets/cern/indico-stats.png)

- Big boost thanks to *The Plague*
- Continuing strong even after it ended

---

## Philosophy

 - Indico itself is **CERN-agnostic**
 - CERN features through **plugins** 🧩
 - Custom **themes** & templates 🎨

![bg left:40%](assets/cern/cogs.jpg)

---

## Integrations

- Video conferencing (Zoom) 📹
  - Zoom Rooms integration
- Webcast/recording service 📡 🎥
- Conference room assistance 🆘
- CERN visitor badges 👮‍♂️
- Room/desk/lab booking 🏢 🪑🔬
- Event payment (PostFinance) 💰
- Automatic conversion to PDF 🖨
- Search (Citadel) 🔎
- Storage (S3) 💾
- URL shortening 🔗
- Prometheus metrics 📊📉

---

<style scoped>
  img {
    display: block;
    margin: 0 auto;
  }
</style>

### Custom meeting themes

![height:500px](assets/cern/meeting-theme.png)

---

<style scoped>
  img {
    display: block;
    margin: 0 auto;
  }
</style>

### Hotdesking

![height:400px](assets/cern/burotel.png)

- Separate "Burotel" instance
- Customized Room Booking module via plugin
- Integration with Access Control system to grant access to offices

---

### Hotlabbing (or whatever you want to call it)

![height:400px](assets/cern/labotel.png)

- Separate "Labotel" instance
- Customized Room Booking module via plugin
  - copy of Burotel plugin, with unnecessary functionality removed

---

#### Hot... showering? 🚿

![bg left:57%](assets/cern/showers.png)

- Similar to Burotel
- 750 users signed up within a day!
- First test of new Room Booking module
* April fools 2019 🐟

---

### Best of shower ~~thougths~~ bookings 🚿 🏆

- This is SOOOO great ! With the recurring booking feature, I’ll never forget a monthly shower anymore !
- IR-ECO-CO team building event including foam party etc.
- Test of my new dinghy boat. Catastrophic flooding expected.
- Not allowed to wash walrus in office.
- Hadronic shower collaboration meeting. Bubble chamber section after coffee break. Vidyo not available, bring your own soap
- Rubber duck collaboration meeting 🦆🦆🦆
- Need to test my new armrests in a safe environment
- I'll be using it with a friend <small>(We're pretty sure this would break a few CERN rules)</small>

<!-- _footer: Source: https://indico.cern.ch/news/40-cern-showers & https://indico.cern.ch/news/41-april-fools-day -->

---

## Extended user documentation

![height:500px](assets/cern/user-docs-cern.png)

---

## Fully Open Source

- Useful examples for more complex plugins
- API credentials are of course not public
- CERN people contribute ![w:300px](assets/cern/hire-fix-quit-meme.png)

![bg left 100%](assets/cern/github-plugins-cern.png)

---

## Bleeding-edge

- We build our wheels (using GitHub actions) from `master`
  - or occasionally from a branch like `3.3.x`
- `indico.cern.ch` has the latest and newest features
  - we can quickly react to and fix bugs/errors there
  - all "public releases" battle-tested on `indico.cern.ch`

---

## Infrastructure

- DNS round-robin for indico.cern.ch
- 2 haproxy loadbalancers (4 cores, 8 GB)
- 4 web workers (~~16~~ 8 cores, 32 GB)
  - 32 uWSGI processes each
- 1 celery worker (likewise)
- 1 redis cache (~~2 cores~~ 1 core, 4 GB)
- 1 Postgres database (IT-managed, ~~45~~ 60 GB used)
- S3 storage (Ceph-based, ~~17~~ 24 TB used)

---

<style scoped>
  section {
    padding-left: 20px;
  }
</style>

### Monitoring with Sentry

![bg left 100%](assets/cern/sentry.png)

- No annoying error emails!
- Self-hosted (FOSS), but Cloud is also possible (and easier)
- Much more insight than just error and traceback:

![height:200px](assets/cern/sentry-details.png)

---

### Prometheus metrics - servers + performance

![w:1150px](assets/cern/prometheus-servers.png)

---

### Prometheus metrics - events + users

![w:1150px](assets/cern/prometheus-data-1.png)

---

### Prometheus metrics - files + search

![w:1150px](assets/cern/prometheus-data-2.png)

---

<style scoped>
  section {
    padding-right: 15px;
  }
</style>

![bg right:47% 90%](assets/cern/haproxy-cli.png)

### Zero-downtime upgrades

- Take two workers out of haproxy
- Update + restart them
- Bring them back up
- Take the rest out
- Update + restart those
- Bring them back

---

### Did this last slide look familiar?

* **It is exactly the same as 2 years ago**
* It still works perfectly (for about 8 years now)

* I greatly like the idea of **simple infrastructure and tooling** which can be debugged easily.
  * No k8s or other magic here, but I think there's a talk after mine about this  :)

---

<style scoped>
  ul + p {
    margin-top: 0.5rem;
  }
</style>

### Backups

- **Postgres**
  - Daily backups done by IT DB service
  - `pg_dump` to EOS every 6h 
- **S3**
  - `rclone` sync to backup S3 host every 15min
  - Also syncing to EOS every night
  - ...because we REALLY wouldn't want to lose people's slides etc

**So far we never needed to roll back to our backups BTW! :)**
But they are very useful when ✨ users do user things ✨  🐒

---

<!-- _backgroundColor: #021e2b -->

![bg 25%](assets/indico-logo-mono.png)
