module.exports = ({ env }) => ({
    email: {
      config: {
        provider: 'sendgrid',
        providerOptions: {
          apiKey: env('SENDGRID_API_KEY'),
        },
        settings: {
          defaultFrom: 'info@dufitetaxadvisors.be',
          defaultReplyTo: 'info@dufitetaxadvisors.be',
        },
      },
    },
  });
   