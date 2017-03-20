# WHAT YOU ARE BUILDING - FEATURES

#### => a facebook/twitter like web app

#### => groups of users

#### => users must sign up / sign in to access additional features such as:
-> upload images and videos or link them from other sources <br>
-> create events <br>
-> send and accept friend requests

#### => (maybe) guest users can still make text comments without the need to sign up / sign in


# MODELS REQUIRED
#### User
-> has_many :friendships <br>
-> has_many :friends, :through => :friendships <br>

###### => COLUMNS
-> name: string <br>
-> email: string <br>
-> password_digest: string


#### Friendship
-> belongs_to :user <br>
-> belongs_to :friend, :class_name => "User"

###### => COLUMNS
-> user_id: integer <br>
-> friend_id: integer


#### Post
###### => COLUMNS
-> message: text <br>
-> image: string <br>
-> video: string



# PAGES REQUIRED





## ROUTES REQUIRED
