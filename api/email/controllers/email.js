'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

const { parseMultipartData, sanitizeEntity } = require('strapi-utils');
const sgMail = require('@sendgrid/mail')

const { messageHtmlSwitch, messageSwitch, subjectSwitch } = require('./utils');


 module.exports = {
   /**
    * Create a record.
    *
    * @return {Object}
    */
 
    async create(ctx) {
        let entity;

        if (ctx.is('multipart')) {
            const { data, files } = parseMultipartData(ctx);
            entity = await strapi.services.email.create(data, { files });
        } else {
            entity = await strapi.services.email.create(ctx.request.body);
        }

        entity = sanitizeEntity(entity, { model: strapi.models.email });

        // Sending email with sendmamil
        sgMail.setApiKey(process.env.SENDGRID_API_KEY)
        const msg = {
            to: 'gilles@dufitetaxadvisors.be',
            from: 'info@dufitetaxadvisors.be',
            subject: subjectSwitch(entity.subject),
            text: messageSwitch(entity),
            html: messageHtmlSwitch(entity)
        }
        sgMail
            .send(msg)
            .then(() => {
                console.log('Email sent')
        }).catch((error) => {
            console.error(error)
        })

       return entity;
    },
};
  