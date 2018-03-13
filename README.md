# Linguistic Analysis // API

## MODELS

### User
**Structure**
username:string
email:string
password_digest:string

**Relationships**
has_many :projects


### Project
**Structure**
name:string
description:string

**Relationships**
belongs_to :user
has_many :lexemes
has_many :texts

### Lexeme
**Structure**
name:string

**Relationships**
belongs_to :project


### Text
**Structure**
title:string

**Relationships**
belongs_to :project
