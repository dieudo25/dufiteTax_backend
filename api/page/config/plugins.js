module.exports = ({ env }) => ({
    email: {
      config: {
        provider: 'sendgrid',
        providerOptions: {
          apiKey: env('SENDGRID_API_KEY'),
        },
        settings: {
          defaultFrom: 'admin@dufitetaxadvisors.be',
          defaultReplyTo: 'admin@dufitetaxadvisors.be',
        },
      },
    },
  });
   