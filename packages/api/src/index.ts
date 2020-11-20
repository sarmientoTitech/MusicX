import express from 'express'
import { ApolloServer, gql } from 'apollo-server-express'

const typeDefs = gql `
  type Query {
    hello: String
  }
`
