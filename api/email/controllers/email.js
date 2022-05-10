'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

 const { parseMultipartData, sanitizeEntity } = require('strapi-utils');
 const sgMail = require('@sendgrid/mail')

 const subjectSwitch = ( subject ) => {
    switch(subject) {
        case "company":
            return "Nouvelle opportunité pour une entreprise / société / indépendant existant"
        case "idea":
            return "Nouvelle opportunité d'une entreprise / société / indépendant non existante"
        case "call":
            return "Demande de contact"
    }
 }

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

        let subject;

        switch(entity.subject) {
            case "company":
                subject = `
                    Vous avez une nouvelle opportunité !

                    Dénomination : ${ entity.company_name }

                    Numéro de l'entreprise : ${ entity.company_num }

                    Déclaration TVA périodique : ${ entity.decla_tva }

                    Nombre de facture de vente (annuelle) : ${ entity.nb_facture_vente }

                    Nombre de facture d'achat (annuelle) : ${ entity.nb_facture_achat }

                    Nombre de mouvement bancaires (annuelle) : ${ entity.nb_transaction }

                    Email de contact : ${ entity.email }

                    Numéro de téléphone : ${ entity.phone_num }

                    Informations supplémentaires : 
                    ${ entity.message }
                `
                break
            case "idea":
                subject = `
                    Vous avez une nouvelle opportunité !

                    Nom du projet : ${ entity.company_name }

                    Forme juridique : ${ entity.legal_form }

                    Secteur d'activité : ${ entity.business_sector }

                    Estimation de facture de vente (annuelle) : ${ entity.nb_facture_vente }

                    Estimation de facture d'achat (annuelle) : ${ entity.nb_facture_achat }

                    Estimation du chiffre d'affaire (annuelle) : ${ entity.revenue }

                    Email de contact : ${ entity.email }

                    Numéro de téléphone : ${ entity.phone_num }

                    Informations supplémentaires : 
                    ${ entity.message }
                `
                break
        }

        // Sending email with sendmamil
        sgMail.setApiKey(process.env.SENDGRID_API_KEY)
        const msg = {
            to: 'twahirwa25@gmail.com',
            from: 'admin@dufitetaxadvisors.be',
            subject: subjectSwitch(entity.subject),
            text: subject,
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
  