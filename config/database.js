module.exports = ({ env }) => ({
  defaultConnection: env('DATABASE_CLIENT'),
  connections: {
    postgres: {
      connector: 'bookshelf',
      settings: {
        client: 'postgres',
        host: env('DATABASE_HOST', 'host'),
        port: env.int('DATABASE_PORT', 'port'),
        database: env('DATABASE_NAME', 'database'),
        username: env('DATABASE_USERNAME', 'username'),
        password: env('DATABASE_PASSWORD', 'password'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },

    sqlite: {
      connector: 'bookshelf',
      settings: {
        client: 'sqlite',
        filename: env('DATABASE_FILENAME', '.tmp/data.db'),
      },
      options: {
        useNullAsDefault: true,
      },
    },
  },
});