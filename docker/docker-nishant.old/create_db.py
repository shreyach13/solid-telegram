#!/usr/bin/python

from sqlalchemy import create_engine

engine = create_engine("mysql://root:root007@localhost")
conn = engine.connect()

conn.execute("create database test123")

conn.close()