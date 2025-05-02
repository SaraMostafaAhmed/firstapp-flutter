#Sara Mostafa Ahmed 
#ID:230476662

# 🌳 Tree App- Flutter Application

## Overview
The Tree App is a Flutter application that allows users to create and view tree-related posts with images, titles, and descriptions. It features a clean UI with image selection capabilities, a profile section, and interactive elements like favoriting posts.

## Features

- **Post Creation**
  - Add multiple images from gallery
  - Write titles and descriptions
  - Preview selected images
- **Profile Management**
  - Upload profile pictures (camera/gallery)
  - View user information
- **Interactive Elements**
  - Favorite posts with ♥
  - Share functionality (UI ready)
- **Beautiful UI**
  - Clean Material Design
  - Responsive layout
  - Seasonal tree displays

## Key Components

- **1. First Screen (firstscreen.dart)**
  - Allows users to:
    - Select multiple images from gallery
    - Enter a title and description
    - Save the post
   
- **2. Home Page (home_page.dart)**
  - Displays:
    - The created post with title and description
    - Selected images in a grid
    - Default content if no post is created
    - Navigation to profile page

- **3. Profile Page (profile_page.dart)**
  - Features:
    - Profile picture upload (camera or gallery)
    - Profile picture deletion
    - User information display
   
- **4. Widgets**
  - FavoriteWidget: Toggleable favorite button
  - MySeason: Displays seasonal tree images with labels
