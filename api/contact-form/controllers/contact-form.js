'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

 const { parseMultipartData, sanitizeEntity } = require('strapi-utils');
 const sgMail = require('@sendgrid/mail')

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
            entity = await strapi.services.contactForm.create(data, { files });
        } else {
            entity = await strapi.services.contactForm.create(ctx.request.body);
        }

        entity = sanitizeEntity(entity, { model: strapi.models.contactForm });

        try {
            await strapi.plugins['email'].services.email.send({
                to: 'twahirwa25@gmail.com',
                from: 'dufitetax@gmail.com',
                subject: 'Test',
                text: `
                    Company name : ${ entity.company_name }
                `,
            });
        } catch(err) {
            console.log(err);
        }

        sgMail.setApiKey(process.env.SENDGRID_API_KEY)
        const msg = {
            to: 'twahirwa25@gmail.com',
            from: 'dufitetax@gmail.com',
            subject: 'Test',
            text: `
                Company name : ${ entity.company_name }
            `,
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
  