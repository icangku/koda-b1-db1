```mermaid
erDiagram
KATEGORI ||--O{ BUKU: has-many
RAK-BUKU || --O{ BUKU:has-many
PEMINJAM || --o{ PETUGAS: meminjam-melalui
BUKU {
  string title
  string author_id
  string publisher_id
  string ISBN
  int year_published
  string pages
}
KATEGORI {
  string name
  string parent_category_id
}
RAK-BUKU{
  string name
  string position_id
}
PETUGAS{
  string name
}
PEMINJAM{
  string name
}
```
