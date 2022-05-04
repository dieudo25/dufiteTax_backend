module.exports = ({ env }) => ({
    email: {
      config: {
        provider: 'sendgrid',
        providerOptions: {
          apiKey: env('SENDGRID_API_KEY'),
        },
        settings: {
          defaultFrom: 'dufitetax@gmail.com',
          defaultReplyTo: 'dufitetax@gmail.com',
        },
      },
    },
  });
   