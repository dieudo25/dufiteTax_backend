'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

const { parseMultipartData, sanitizeEntity } = require('strapi-utils');
const sgMail = require('@sendgrid/mail')

const legalFormSwitch = (legal_form) => {
    switch(legal_form) {
        case "company":
            return "Entreprise"
        case "association":
            return "Association"
        default:
            return "Indépendant"
    }
}

const subjectSwitch = (subject) => {
    switch(subject) {
        case "company":
            return "Nouvelle opportunité pour une entreprise / société / indépendant existant(e) !"
        case "idea":
            return "Nouvelle opportunité d'une entreprise / société / indépendant non existant(e) !"
        default:
            return "Nouvelle deemande de contact !"
    }
}

const messageSwitch = (entity) => {
    switch(entity.subject) {
        case "company":
            return companyEmail(entity)
        case "idea":
            return ideaEmail(entity)
        default:
            return callEmail(entity)
    }
}

const messageHtmlSwitch = (entity) => {
    switch(entity.subject) {
        case "company":
            return companyHtmlEmail(entity)
        case "idea":
            return ideaHtmlEmail(entity)
        default:
            return callHtmlEmail(entity)
    }
}

const companyEmail = (entity) => (
`
Vous avez une nouvelle opportunité !

Pour une entreprise / société / indépendant existant(e).

Dénomination : ${ entity.company_name }

Numéro de l'entreprise : ${ entity.company_num }

Déclaration TVA périodique : ${ entity.decla_tva ? 'Oui' : 'Non' }

Nombre de facture de vente (annuelle) : ${ entity.nb_facture_vente }

Nombre de facture d'achat (annuelle) : ${ entity.nb_facture_achat }

Nombre de mouvement bancaires (annuelle) : ${ entity.nb_transaction }

Email de contact : ${ entity.email }

Numéro de téléphone : ${ entity.phone_num }

Informations supplémentaires : 

${ entity.message }
`
)

const companyHtmlEmail = (entity) => (`
    <h1 style="color:#7C0000">Vous avez une nouvelle opportunité !</h1>
    <h2>Pour une entreprise / société / indépendant existant(e).</h2>
    <div>
        <h3 style="color:#7C0000">Dénomination</h3> 
        <p>${ entity.company_name }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Numéro de l'entreprise</h3> 
        <p>${ entity.company_num }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Déclaration TVA périodique</h3> 
        <p>${ entity.decla_tva ? 'Oui' : 'Non' }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Nombre de facture de vente (annuelle)</h3> 
        <p>${ entity.nb_facture_vente }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Nombre de facture d'achat (annuelle)</h3> 
        <p>${ entity.nb_facture_achat }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Nombre de mouvement bancaires (annuelle)</h3> 
        <p>${ entity.nb_transaction }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Email de contact</h3> 
        <p>${ entity.email }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Numéro de téléphone</h3> 
        <p>${ entity.phone_num }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Informations supplémentaires</h3>
        <p>${ entity.message }</p>
    </div>
`)

const ideaEmail = (entity) => (
`
Vous avez une nouvelle opportunité !

Pour une entreprise / société / indépendant non existant(e).

Nom du projet : ${ entity.company_name }

Forme juridique : ${ legalFormSwitch(entity.legal_form) }

Secteur d'activité : ${ entity.business_sector }

Estimation du nombre de facture de vente (annuelle) : ${ entity.nb_facture_vente }

Estimation du nombre de facture d'achat (annuelle) : ${ entity.nb_facture_achat }

Estimation du nombre du chiffre d'affaire (annuelle) : ${ entity.revenue }

Email de contact : ${ entity.email }

Numéro de téléphone : ${ entity.phone_num }

Informations supplémentaires : 

${ entity.message }
`
)

const ideaHtmlEmail = (entity) => (`
    <h1 style="color:#7C0000">Vous avez une nouvelle opportunité !</h1>
    <h2>Pour une entreprise / société / indépendant non existant(e).</h2>
    <div>
        <h3 style="color:#7C0000">Nom du projet</h3> 
        <p>${ entity.company_name }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Forme juridique</h3> 
        <p>${ legalFormSwitch(entity.legal_form) }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Secteur d'activité</h3> 
        <p>${ entity.business_sector }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Estimation du nombre de facture de vente (annuelle)</h3> 
        <p>${ entity.nb_facture_vente }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Estimation du nombre de facture d'achat (annuelle)</h3> 
        <p>${ entity.nb_facture_achat }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Estimation du nombre du chiffre d'affaire (annuelle)</h3> 
        <p>${ entity.revenue }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Email de contact</h3> 
        <p>${ entity.email }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Numéro de téléphone</h3> 
        <p>${ entity.phone_num }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Informations supplémentaires</h3>
        <p>${ entity.message }</p>
    </div>
`)

const callEmail = (entity) => (
`
Vous avez une nouvelle demande d'appel !

Nom complet : ${ entity.company_name }

Email de contact : ${ entity.email }

Numéro de téléphone : ${ entity.phone_num }

Disponibilités : 

    - ${ entity.availability_1 }
    - ${ entity.availability_2 }
    - ${ entity.availability_3 }

Objet de la demande: ${ entity.nb_facture_vente }

Informations supplémentaires : 
${ entity.message }
`
)

const callHtmlEmail = (entity) => (`
    <h1 style="color:#7C0000">Vous avez une nouvelle opportunité !</h1>
    <h2>Pour une entreprise / société / indépendant non existant(e).</h2>
    <div>
        <h3 style="color:#7C0000">Nom complet</h3> 
        <p>${ entity.company_name }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Email de contact</h3> 
        <p>${ entity.email }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Numéro de téléphone</h3> 
        <p>${ entity.phone_num }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Disponibilité</h3> 
        <ul>
            <li>${ entity.availibility_1 }</li>
            <li>${ entity.availibility_2 }</li>
            <li>${ entity.availibility_3 }</li>
        </ul>
    </div>
    <div>
        <h3 style="color:#7C0000">Objet de la demandee</h3> 
        <p>${ entity.call_subject }</p>
    </div>
    <div>
        <h3 style="color:#7C0000">Informations supplémentaires</h3>
        <p>${ entity.message }</p>
    </div>
`)

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
            to: 'twahirwa25@gmail.com',
            from: 'gilles@dufitetaxadvisors.be',
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
  