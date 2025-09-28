# bandWagon

**Collaborative playlist creation through crowd-sourced voting**

## What It Does

bandWagon lets party hosts create playlists by having their friends vote on songs. The host connects their Spotify account, selects source playlists, and shares a voting link. Friends vote yes/no on songs without needing accounts, and only approved songs make the final playlist.

## The Problem

- Party hosts get constant song requests
- Hard to please everyone's music taste
- Spotify queues get accidentally cleared
- Manual playlist creation takes forever

## Basic Flow

1. **Host**: Sign up, connect Spotify, select playlists to combine
2. **Share**: Send voting link to friends (works on any device)
3. **Vote**: Friends swipe yes/no on songs (no account needed)
4. **Create**: Final playlist appears in host's Spotify

## Tech Stack

- **Rails 8** with PostgreSQL
- **Devise** for authentication
- **OAuth** for Spotify/Google integration
- **Sidekiq** for background jobs
- **Redis** for caching and job queue
- **Shakapacker** for modern JavaScript
- **Mobile-first** responsive design

## Getting Started

This is a fresh project - no implementation yet.

```bash
bundle install
rails db:create db:migrate
rails server
```

## Environment Setup

You'll need API credentials for:
- Spotify Web API
- Google/YouTube Music API (future)

## Goals

- Primary usage on mobile devices
- Voters access via web link (mobile-optimized)
- Scale to handle party-sized groups
- Real-time voting updates