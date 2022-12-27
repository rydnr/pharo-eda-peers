# PharoEDA Peers

This project discovers and provides peers within the context of PharoEDA applications.

## Motivation

PharoEDA applications are meant to focus exclusively on their domain. However, their domain should only include conversations, entities talking to other entities, in the same abstraction level.

A Peer is similar to a Port, but it's not a technological abstraction: it represents an entity able to perform certain task.
Such task might be automated or not.

## Design

## Usage

First, load it with Metacello:

```smalltalk
Metacello new repository: 'github://rydnr/pharo-eda-peers:main'; baseline: #PharoEDAPeers; load
```

## Work in progress

- Initial design

## Credits

- Background of the Pharo image by <a href="https://pixabay.com/users/pexels-2286921/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1283313">Pexels</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1283313">Pixabay</a>.
