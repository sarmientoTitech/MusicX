import { Resolvers } from '../generated/graphql'

import { Query } from './Query'

export const resolvers: Resolvers = {
  Query: {
    ...Query,
  },
}
