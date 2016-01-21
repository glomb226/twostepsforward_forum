1. Users
  
  Devise

  has_many :supplychains
  has_many :links

2. Supplychains

  user_id:integer
  title:string
  complete:boolean

  belongs_to :user
  has_many :links

3. Links
  
  user_id:integer
  supplychain_id:integer
  title:string
  body:text
  attachment:string
  eta:date
  complete:boolean
  

  belongs_to :user
  belongs_to :supplychain