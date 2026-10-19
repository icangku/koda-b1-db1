```mermaid
erDiagram
USERS ||--||WALLET: owns
TRANSACTION_CATEGORY ||--o{TRANSACTION:classifies
MERCHANT |o--o{ TRANSACTION : "is paid in"
USERS |o--o{TRANSACTION:"receives"
USERS ||--o{TRANSACTION:"sends"
WALLET {
  string id PK
  string user_id FK "unique"
  decimal balance
  datetime updated_at
}
USERS {
  string id PK
  string name
  datetime verified_at
}
TRANSACTION{
  string id PK
  string sender_user_id FK
  string receiver_user_id FK
  string merchant_id FK
  string category_transaction_id FK
  decimal amount
  datetime created_at
  string status
}
TRANSACTION_CATEGORY{
  string id PK
  string name
}
MERCHANT{
  string id PK
  string name
}

```
