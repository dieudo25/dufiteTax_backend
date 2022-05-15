module.exports = ({ env }) => ({
    email: {
      config: {
        provider: 'sendgrid',
        providerOptions: {
          apiKey: env('SENDGRID_API_KEY'),
        },
        settings: {
          defaultFrom: 'gilles@dufitetaxadvisors.be',
          defaultReplyTo: 'gilles@dufitetaxadvisors.be',
        },
      },
    },
  });
   