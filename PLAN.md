# WHAT YOU ARE BUILDING - FEATURES

#### => a facebook/twitter like web app

#### => groups of users

#### => users must sign up / sign in to access additional features such as:
-> upload images and videos <br>
-> create events <br>
-> send and accept friend requests

#### => (maybe) guest users can still make text comments without the need to sign up / sign in


# MODELS REQUIRED
#### => User
-> has_many :friendships <br>
-> has_many :friends, :through => :friendships <br>

-> name: string <br>
-> email: string <br>
-> password_digest: string


#### => Friendship
-> belongs_to :user <br>
-> belongs_to :friend, :class_name => "User"

-> user_id: integer <br>
-> friend_id: integer


#### => Post
-> message: text <br>
-> image: string <br>
-> video: string


#### => ShareItem


## COLUMNS REQUIRED





# PAGES REQUIRED





## ROUTES REQUIRED
