---
marp: true
title: Indico @ CERN
theme: indico
paginate: false
---

<!-- _backgroundColor: #449288 -->

![bg](assets/splash.png)

---

![bg left](assets/cern/cern-aerial.png)

<!-- _footer: Adrian Mönnich • Indico Workshop 3.5 • March 2023 -->

# Indico @ CERN

- **~10k** people on campus
  - spread over multiple sites
- **~220** meeting rooms
- **~100k** events/year
  - **>1M** events total
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

- Strong growth, big boost thanks to *The Plague*

---

## Philosophy

 - Indico itself is **CERN-agnostic**
 - CERN features through **plugins** 🧩
 - Custom **themes** & templates 🎨

![bg left:40%](assets/cern/cogs.jpg)

---

## Integrations

- Video conferencing (Zoom) 📹
- Webcast/recording service 📡 🎥
- Conference room assistance 🆘
- CERN visitor badges 👮‍♂️
- Room/desk booking 🏢 🪑
- Event payment (PostFinance) 💰
- Automatic conversion to PDF 🖨
- Search (Citadel) 🔎
- Storage (S3) 💾
- URL shortening 🔗

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
- API credentials are of course not public - so no self-made visitor passes for you ;)

![bg left 100%](assets/cern/github-plugins-cern.png)

---

<style scoped>
  section {
    padding-left: 20px;
  }
</style>

## Global Indico

![bg left](assets/cern/global-indico.png)

- Subcategory on indico.cern.ch
- "Fair use" policy
- No CERN Zoom service
- Best-effort support
- Soft quotas (per community)
  - max. 50 events / year
  - max. 200 participants / event

---

![bg 90%](assets/cern/global-indico-stats.png)

---

## Infrastructure

- DNS round-robin for indico.cern.ch
- 2 haproxy loadbalancers (4 cores, 8 GB)
- 4 web workers (16 cores, 32 GB)
- 1 celery worker (likewise)
- 1 redis cache (2 cores, 4 GB)
- 1 Postgres database (IT-managed, ~45GB used)
- S3 storage (Ceph-based, ~17 TB used)

---

<style scoped>
  section {
    padding-left: 20px;
  }
</style>

### Monitoring with Sentry

![bg left 100%](assets/cern/sentry.png)

- No annoying error emails!
- Self-hosted (FOSS), but Cloud is also possible
- Much more insight than just error and traceback:

![height:250px](assets/cern/sentry-details.png)

---

<style scoped>
  section {
    padding-right: 15px;
  }
</style>

![bg right:47% 100%](assets/cern/haproxy-cli.png)

### Zero-downtime upgrades

- Take two workers out of haproxy
- Update + restart them
- Bring them back up
- Take the rest out
- Update + restart those
- Bring them back

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

**So far we never needed to roll back to out backups BTW! :)**

---

<!-- _backgroundColor: #021e2b -->

![bg 25%](assets/indico-logo-mono.png)
