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
            return "Nouvelle demande de contact !"
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

const getFullDate = (dateTime) => (
    `${ new Date(dateTime).getDate() }/${ new Date(dateTime).getMonth() }/${ new Date(dateTime).getFullYear() } à ${ new Date(dateTime).getHours() }h${ new Date(dateTime).getMinutes() }`
)

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

    - ${ getFullDate(entity.availability_1) }
    - ${ getFullDate(entity.availability_2) }
    - ${ getFullDate(entity.availability_3) }
    - ${ new Date(entity.availability_3).getDate() }/${ new Date(entity.availability_1).getMonth() }/${ new Date(entity.availability_1).getFullYear() } à ${ new Date(entity.availability_3).getHours() }h${ new Date(entity.availability_1).getMinutes() }

Objet de la demande: ${ entity.nb_facture_vente }

Informations supplémentaires : 
${ entity.message }
`
)

const callHtmlEmail = (entity) => (`
    <h1 style="color:#7C0000">Vous avez une nouvelle demande d'appel !</h1>
    <h2>Objet : ${ entity.call_subject }.</h2>
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
            <li>${ getFullDate(entity.availability_1) }</li>
            <li>${ getFullDate(entity.availability_2) }</li>
            <li>${ getFullDate(entity.availability_3) }</li>
        </ul>
    </div>
    <div>
        <h3 style="color:#7C0000">Informations supplémentaires</h3>
        <p>${ entity.message }</p>
    </div>
`)

module.exports = { messageHtmlSwitch, messageSwitch, subjectSwitch }