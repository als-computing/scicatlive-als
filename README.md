# SciCatLive (Basic ALS Development edition)

Get set up with an instance of SciCat to explore the metadata catalog. SciCatlive provides a flexible
and easy way to learn about SciCat and its features for people who are looking to integrate SciCat into their environment. For a user guide please see [original documentation](https://scicatproject.github.io/documentation/).

This project requires docker and docker compose. The docker version must be later than 2.29.0 to support this project. 

# How to use this ALS Development edition

Check out local copies of the SciCat front end, and the SciCat back end.  For example [our fork of the front end](https://github.com/als-computing/scicat-frontend-als) and [our fork of the back end](https://github.com/als-computing/scicat-backend-next-als).  Build both at least once.

Edit the `.env` file at the base of this repository to point to them:

```bash
## Customize with the locations of your front and back end repositories
SCICAT_BACKEND_ALS_LOCATION=/Users/gwbirkel/Documents/scicat-backend-next-als
SCICAT_FRONTEND_ALS_LOCATION=/Users/gwbirkel/Documents/scicat-frontend-als
```

Then run `docker compose up` and BAM!  You're cookin' with SciCat.   You'll get MongoDB, Elastic Search, and a Traefik proxy to tie them together and provide access, just like regular SciCatLive.

Go to localhost in Chrome (not Safari) to see it cookin'.

The front end and back end are running using folder mappings from the build products in your local repositories.  So, any time you want to test new code, hit rebuild in that repo.

## Why does this exist?

SciCatLive is very useful, but at the expense of simplicity.  This fork is meant to provide just enough of the SciCat services to let a developer test the front-end and back-end together, even when both are under heavy local development.  All the other flexibility has been stripped out.

You may ask:  Why not just create a single consolidated docker compose file of all these components, rather than slimming down the official SciCatLive?

Good question.  The idea is, this is a fork with a branch (to mix some metaphors) so when SciCatLive is updated by other developers to fix breaking changes in the front or back end, or the other components, we can just pull down master and merge what we need onto the branch here.

## Note: This repo has a default branch of "ALS-Customizations", not the usual default of "master".

If you wish to contribute code back to the main SciCatLive project, avoid this branch.  Merge your work to master and make the pull request from there.

Also, avoid merging "ALS-Customizations" into master.

## General use of SciCat

To use SciCat, please refer to the [original documentation](https://scicatproject.github.io/documentation/).
