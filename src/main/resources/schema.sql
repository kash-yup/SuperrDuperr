DROP TABLE IF EXISTS TBL_TODO_LISTS;

CREATE TABLE TBL_TODO_LISTS (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS TBL_TODO_LIST_ITEM;

CREATE TABLE TBL_TODO_LIST_ITEM (
  item_id INT AUTO_INCREMENT  PRIMARY KEY,
  item_name VARCHAR(250) NOT NULL,
  item_status VARCHAR(250) NOT NULL,
  item_due_date timestamp,
  list_id INT NOT NULL,
  FOREIGN KEY (list_id) REFERENCES TBL_TODO_LISTS(id)
);

DROP TABLE IF EXISTS TBL_TAGS;

CREATE TABLE TBL_TAGS (
  tag_id INT AUTO_INCREMENT  PRIMARY KEY,
  tag_name VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS TBL_TAG_ITEMS;

CREATE TABLE TBL_TAG_ITEMS (
  tag_id INT NOT NULL,
  item_id INT NOT NULL,
  PRIMARY KEY (tag_id, item_id),
  FOREIGN KEY (item_id) REFERENCES TBL_TODO_LIST_ITEM(item_id),
  FOREIGN KEY (tag_id) REFERENCES TBL_TAGS(tag_id)

);
