# Requirements

## Personas

### Owner

This is me. The owner is the person who owns the portfolio. This person who will have
access to all of the administrative functions of the site.

### Employer

This is a potential employer who has been sent to a specific landing page

### Anonymous Visitor

This is anyone who wanders onto the site

### Commenter

This is a blog reader who makes a comment on a blog post

## Use Cases

## Signing Up

Required to sign up
* Owner
* Commenter

Not Required to sign up
* Employer
* Anonymous Visitor

Incentive to sign up
* If you sign up, I promise I won't send any inapropriate emails (it would completely
destroy my reputation if I did) and you may completely opt out of any emails at any time.
* You get to play the Gale Force

# NOTES

## Akismet/comments

Add fields to comments:

class AddRequestColumnsToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :user_ip, :string
    add_column :comments, :user_agent, :string
    add_column :comments, :referrer, :string
    add_column :comments, :approved, :boolean, :default => false, :null => false
    Comment.update_all("approved=1")
  end

  def self.down
    remove_column :comments, :user_ip
    remove_column :comments, :user_agent
    remove_column :comments, :referrer
    remove_column :comments, :approved
  end
end


