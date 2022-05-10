module.exports = ({ env }) => ({
    email: {
      provider: 'sendgrid',
      providerOptions: {
        apiKey: process.env('SENDGRID_API_KEY'),
      },
      settings: {
        defaultFrom: 'admin@dufitetaxadvisors.be',
        defaultReplyTo: 'admin@dufitetaxadvisors.be',
        testAddress: 'admin@dufitetaxadvisors.be',
      },
    },
  });