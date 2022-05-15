module.exports = ({ env }) => ({
    email: {
      provider: 'sendgrid',
      providerOptions: {
        apiKey: process.env('SENDGRID_API_KEY'),
      },
      settings: {
        defaultFrom: 'info@dufitetaxadvisors.be',
        defaultReplyTo: 'info@dufitetaxadvisors.be',
        testAddress: 'info@dufitetaxadvisors.be',
      },
    },
  });