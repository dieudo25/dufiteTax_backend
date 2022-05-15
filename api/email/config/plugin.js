module.exports = ({ env }) => ({
    email: {
      provider: 'sendgrid',
      providerOptions: {
        apiKey: process.env('SENDGRID_API_KEY'),
      },
      settings: {
        defaultFrom: 'gilles@dufitetaxadvisors.be',
        defaultReplyTo: 'gilles@dufitetaxadvisors.be',
        testAddress: 'gilles@dufitetaxadvisors.be',
      },
    },
  });