# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Data Model Explanation

 - **Users**: logins. This table is all about authentication to the web application.
 - **Profiles**: information about a fleet member.
 - **Titles**: fleet member-specific and not tied to a membership.

Divisions:
- A division can be any level in fleet. The "type" defines what kind of division it is.
- The "ancestry" defines the structure of the organization. For example:

Barfleet
├── Command
├── UBS Abandon (Ship)
│   ├── Command (Department)
│   ├── Medical (Department)
│   ├── Engineering (Department)
│   ├── Security (Department)
│   ├── Recreation (Department)

This gives us a lot of flexibility in adding departments and non-ship divisions to our organizational structure.
- Any division can have any number of sub-divisions.
- We can gather all the members of a ship via this tree structure.

Roles:
- Roles can be general to Fleet ("Chief Medical Officer", etc)
- Roles may optionally be division specific (i.e. ship-specific roles, Command roles, etc).

Example
- Assume there is a "MedicalDepartment" division type
- "Chief Medical Officer" role would have these attributes:
  - name: Chief Medical Officer
  - description: Head of Medical Department
  - head: true
  - division_id: null
  - division_type: MedicalDepartment

Memberships:
- A member can belong to multiple divisions. This means they can belong to multiple ships, specific departments on those ships, etc.
- A membership can optionally define a role within that division, whether it be command, ship, department, etc.
- A membership can optionally define a rank.

