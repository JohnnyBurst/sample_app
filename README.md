# MSI Directory Sample Application

A web-based U.S. map directory that identifies all Minority Serving Institutions (MSI) and USCIS offices.

The federal government recognizes Minority Serving Institutions (MSIs) as valuable resources to the nation. Through Presidential Executive orders and special legislation enacted over the past 20 years, MSIs access federal funds and leverage other resources on behalf of their students and communities. MSIs are: Historically Black Colleges and Universities (HBCUs), Hispanic Serving Institutions (HSIs), Tribal Colleges and Universities (TCUs), Asian Americans and Native American Pacific Islander Serving Institutions (AANAPISIs) and Predominantly Black Institutions (PBIs). In FY 2013, USCIS provided $419,904 to MSIs in the form of grants, services, and equipment donations.

## Prerequisites

1. Windows 7 (64 bit)
1. [Rails Installer](https://s3.amazonaws.com/railsinstaller/Windows/railsinstaller-3.1.0.exe)
    1. Download the executable file
    1. Run the executable file

    1. Follow the suggested defaults
    1. Once Rails Installer is installed, it may open a Rails Installer Ruby and
       Rails command prompt window, asking for the
       user name and email. Users may encouter an error at this ponit. If not
       configured, users may encounter this error whenever opening a Rails
       Installer Ruby and Rails command prompt window. Configuring user.name and
       user.email is not required, but may be done by entering the following at
       the CLI prompt:

```
git config --global user.name "Your name"
git config --global user.email "you@yourcompany.com"
```


This application is tested on Ruby 2.1.5 and Rails 4.2.1 using Windows 7 (64 bit).
Other OS, Ruby, and Rails versions may be compatible but are not supported

## Installation

First, open a command prompt by clicking on the Start Menu, choosing **All Programs**,
expanding the **RailsInstaller** folder, and left-clicking on the icon labeled
**Command Prompt with Ruby and Rails**.

Next, you should clone your repository, setup the database, and start the web server.

From the command prompt:

```
# Clone the repository
git clone https://github.com/USCIS/sample_app.git && cd sample_app
bundle install

# Initialize the database (will also reset if needed)
rake db:drop && rake db:create && rake db:migrate && rake db:seed

# Start the web server. Webrick by default, by any other server could be configured
bundle exec rails s -b 0.0.0.0 -p 3000
```

1. Open a web browser and navigate to http://127.0.0.1:3000/
1. Click the Menu>Sign In menu item
1. Sign in with the username `user<id>` (replace `<id>` with an integer from 1-10) and password `password`

## Usage

Click states on map to view all institutions within that state. Use the filter drop-down fields across the top to further filter institutions by Grouping and Region, and to lookup an institution directly.

Sign in via the top-right menu using the above initial development Admin account to access the administration section and to manage users and lookup tables.
