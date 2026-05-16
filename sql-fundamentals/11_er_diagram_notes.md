# ER Diagram Basics

## What is an ER Diagram?

An Entity Relationship (ER) Diagram is a visual representation of a database structure.

It uses symbols, shapes, and relationships to model how data entities connect with each other in a database schema.

---

## Key Concepts

### Entity
An object that stores information.

**Example:** Student

---

### Attributes
Properties or information related to an entity.

**Example:**
- student_name
- GPA
- student_id

---

### Primary Key
A unique attribute used to identify an entity.

**Example:**
- student_id

In ER diagrams, primary keys are typically underlined.

---

### Composite Attribute
An attribute that can be broken into smaller attributes.

**Example:**

Name:
- first_name
- last_name

---

### Multivalued Attribute
An attribute that can contain multiple values.

**Example:**
- clubs

A student can belong to multiple clubs.

Represented using a double oval.

---

### Derived Attribute
An attribute calculated from another attribute.

**Example:**
- honors (derived from GPA)

Represented using a dashed oval.

---

## Relationships Between Entities

Multiple entities can exist in an ER diagram.

**Example:**
- STUDENT
- CLASS

Relationship:

> Student takes Class

---

### Relationship Attribute
Information associated with the relationship.

**Example:**
- grade

(Student takes class → receives grade)

---

## Participation Types

### Total Participation
Every entity must participate in the relationship.

**Example:**
Every class must have students.

---

### Partial Participation
Participation is optional.

**Example:**
Not every student takes every class.

---

## Relationship Cardinality

Cardinality defines how entities relate to one another.

Questions to ask:

- Can one student take many classes?
- Can one class have many students?

Common relationship types:

### One-to-One (1:1)
One entity relates to one entity.

### One-to-Many (1:M)
One entity relates to multiple entities.

### Many-to-Many (M:M)
Multiple entities relate to multiple entities.

---

## Weak Entity

A weak entity cannot be uniquely identified by its own attributes.

It depends on another entity.

**Example:**
Exam

---

### Identifying Relationship

A relationship that uniquely identifies a weak entity.

**Example:**
Exam happens in Class

Weak entities are shown using double rectangles and identifying relationships use double diamonds.

---

## Key Learning

ER diagrams help understand:

- Database structure
- Table relationships
- Primary and foreign key logic
- How JOINs are formed between tables
