# Octopus DevOps

## Where everything is

- Version control: https://github.com/OctopusSamples/devops
- Octopus Deploy: https://tenpillars.octopus.app/app#/Spaces-128
- AWS "product team" #133577413914 (productteamawsaccount@octopus.com)
- AWS staging: http://octopus-devops-staging.s3-website-us-east-1.amazonaws.com/
- AWS production: http://octopus-devops-production.s3-website-us-east-1.amazonaws.com/

The content team can provide access to GitHub and Octopus Deploy.

Use `#secops-requests` to request access to the AWS "product team" account.

### Deployment pipeline

1. Commit to GitHub
2. GitHub action builds Jekyll site and uploads zip file to Octopus
3. Octopus auto-deploys to staging and removes unnecessary files (`LICENSE` and `README.md`)
4. Push-button deployment to production (also removes unnecessary files)

## Analytics

One of our recommendations is that you should use the same artifact for all environments. For this reason, we don't use Jekyll environments to decide whether to add analytics, but have implemented an inline check so they only run on `octopus.com` (analytics does _not_ run on the AWS addresses or on `preprod.octopus.com`).

See `analytics.html`.

## Running Jekyll on Windows

 - Install languages
 - Install Jekyll
 - Run the site

### Install languages

To run Jekyll on Windows, you need to install the following:

 - [Python 2.7](https://www.python.org/downloads/release/python-2718/)
 - [Ruby with DevKit](https://rubyinstaller.org/downloads/)

Note that Python 2 is required because of one of the NPM packages. There is a "Windows x86-64 MSI installer" option.

Note that Ruby should be installed **with DevKit** for Ruby Gems to install. The download is an EXE that installs Ruby.

The Ruby installer should prompt you to run the following command at the end of the installation, but if not, run it manually and select option 3.

    ridk install

### Install Jekyll

Once you have Python and Ruby installed, you can install the Ruby Gems for Jekyll

    gem install jekyll bundler webrick

If you used the wrong Ruby installer, you might not have all the dev tools and gem installation will error, so go back and check your Ruby installer was the DevTools version.

Check everything is up and running using:

    jekyll -v

### Run the site

Make sure all the packages are installed:

    npm install

Then run the site using:

    jekyll serve

The command will output the address of the server, which you can open in your browser:

    Server address: http://127.0.0.1:4000/
    Server running... press ctrl-c to stop.