DROP DATABASE IF EXISTS bdd_chatbot;
--
-- Base de données : `bdd_chatbot`
--
CREATE DATABASE IF NOT EXISTS bdd_chatbot DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE bdd_chatbot;
-- --------------------------------------------------------
--
-- Structure de la table `c_faq`
--
CREATE TABLE `c_faq` (
  `f_id` int(11) NOT NULL,
  `f_question` text NOT NULL,
  `f_reponse` longtext NOT NULL
)
ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;

--
-- Déchargement des données de la table `c_faq`
--
INSERT INTO `c_faq` (`f_id`, `f_question`, `f_reponse`)
VALUES (
    1,
    'Quelle est la définition d\'un stage ?',
    'Un stage doit vous permettre d\'acquérir des compétences professionnelles en lien avec votre formation. C\'est une mise en situation temporaire en milieu professionnel au cours de laquelle on doit vous confier des missions conformes au projet pédagogique établi avec votre établissement d\'enseignement. Vous êtes accueilli et accompagné par un tuteur tout au long du stage. Il est garant du respect des objectifs pédagogiques fixés dans la convention de stage.'
  ),
  (
    2,
    'Qu\'est-ce qui ne peut pas être considéré comme un stage ?',
    'Un stage ne doit pas être proposé à un étudiant pour...\r\n\r\n    remplacer un salarié en cas d\'absence, de suspension de son contrat de travail ou de licenciement\r\n    exécuter une tâche régulière correspondant à un poste de travail permanent\r\n    faire face à un accroissement temporaire d\'activité\r\n    occuper un emploi saisonnier\r\n\r\nPourquoi ?\r\n\r\nParce que votre stage n\'est pas un contrat de travail. Il doit correspondre à un projet pédagogique précis, débouchant sur l\'acquisition de compétences ciblées. C\'est pour cela que les stages « hors cursus pédagogique » sont interdits.\r\n'
  ),
  (
    3,
    'Comment et où trouver un stage ?',
    'Pendant la crise sanitaire, des offres sur le site 1jeune1solution.gouv.fr\r\n    Le Centre d\'Information et de Documentation Jeunesse (CIDJ) propose offres et conseils\r\n    Certaines régions proposent également des offres sur leur site\r\n    Votre établissement, via son service d\'aide à l\'insertion professionnelle, vous accompagnera dans votre recherche\r\n    Le site EURES, portail européen sur la mobilité de l\'emploi, peut aussi être une source d\'offres de stages\r\n    Utilisez les réseaux sociaux à votre avantage pour trouver un stage ! Lire notre article sur le sujet\r\n\r\n'
  ),
  (
    4,
    'Puis je faire plusieurs stages dans l\'année ?',
    'La durée légale totale autorisée pour un stage est de 6 mois, soit 924h dans un même organisme d\'accueil. Il est possible d\'effectuer une durée supérieure à 6 mois et 924h de stage à condition de ne pas excéder cette durée dans un même organisme d\'accueil, et d\'obtenir au préalable l\'accord de l\'organisme de formation. Il est donc possible d\'effectuer plusieurs stages dans l\'année universitaire à condition de ne pas dépasser la durée définie ci-dessus.'
  ),
  (
    5,
    'Quel cursus dois-je effectuer pour faire un stage ?',
    'Vous pouvez effectuer un stage optionnel ou un stage obligatoire au cours de votre cursus, mais l\'accord de votre établissement est obligatoire. L\'année universitaire au cours de laquelle vous effectuez votre stage doit comporter au minimum 200h de cours et au moins 50h en présence des étudiants.'
  ),
  (
    6,
    'Quelles sont les règles pour une césure sous forme d’un stage ?',
    'Le décret 2021-1154 du 3 septembre 2021 rend possible la césure sous forme de stage. Un stage réalisé dans le cadre d’une césure n’est pas rattaché à un cursus.\r\n\r\nLa césure sous forme de stage déroge aux règles générales applicables aux stages, conformément à l’article 1 du décret 2021-1154 :\r\n\r\n    Pas de rattachement à un cursus intégrant un volume pédagogique minimal de 200 heures d’enseignement (car ils dérogent à l’article D124-2)\r\n    Pas d’obligation de restitution de la part du stagiaire donnant lieu à évaluation du stage de la part de l’établissement (car ils dérogent à l’article D124-1)\r\n    Pas d\'insertion dans la convention de stage de l’item “intitulé complet du cursus ou de la formation du stagiaire et son volume horaire par année d\'enseignement ou par semestre d\'enseignement, selon les cas” (car ils dérogent au 1° de l’article D124-4)\r\n\r\nLa convention de stage reste obligatoire. Celle-ci est ajustée, pour tenir compte du non rattachement au cursus et doit être signée par l’établissement d’enseignement supérieur, l’organisme d’accueil et le stagiaire.\r\n'
  ),
  (
    7,
    'Puis-je faire une césure pendant 12 mois sous la forme d’un stage unique ?',
    'La règle relative à la durée maximum du stage est conservée. La durée maximum d’un stage est de 6 mois, soit 924h par an par organisme. Toutefois, il est possible de fractionner ce nombre d’heures de façon à ce que le stage s’étire sur 12 mois, sans toutefois qu’il puisse dépasser 924 heures.\r\n'
  ),
  (
    8,
    'Puis-je réaliser une césure dans un autre domaine de formation et faire un stage d’un semestre pendant cette césure ?',
    'Oui, la césure peut consister en un semestre ou une année universitaire effectués dans le but de recevoir une formation dans un domaine autre que celui de la scolarité principale. Elle peut également permettre de réaliser un ou plusieurs stages.\r\n'
  ),
  (
    9,
    'Un stage est-il rémunéré, et comment ?',
    'Techniquement, le stagiaire n\'étant pas considéré comme un salarié, on ne parle pas de salaire, ou d\'indemnité ou même de rémunération, mais de gratification.\r\n\r\nLa gratification est obligatoire à partir de la 309e heure de votre stage, soit deux mois, calculés de la façon suivante...\r\n\r\n    7h de présence, consécutives ou non = 1 jour\r\n    22 jours de présence, consécutifs ou non = 1 mois\r\n\r\nAfin de calculer le montant de votre gratification, l\'organisme qui vous accueille doit décompter le nombre d\'heures de présence effective. Une gratification minimale est garantie (voir question suivante).\r\n\r\nDans certaines branches professionnelles, le montant de la gratification est fixé par convention de branche ou accord professionnel étendu et peut être supérieur au montant minimum légal. L\'employeur doit le vérifier dans la convention collective.\r\n'
  ),
  (
    10,
    'Quel est le montant minimum de la gratification ?',
    'Elle est calculée de la façon suivante...\r\n\r\n    En fonction du décompte du nombre d\'heures de stage\r\n    Le taux horaire de la gratification est égal à 3,90€ par heure de stage\r\n    Cela correspond à 15% du plafond de la Sécurité sociale\r\n    Soit 26€ x 0,15 = 3,90€\r\n\r\n'
  ),
  (
    11,
    'Comment la gratification est-elle versée ?',
    '    La gratification est mensuelle : elle doit être versée à la fin de chaque mois et non pas en fin de stage\r\n    Rappel : elle est calculée dès le premier jour de stage et non pas à partir du seuil des 2 mois de stage\r\n\r\n'
  ),
  (
    12,
    'La convention de stage est-elle obligatoire ?',
    'Oui. Elle doit être signée par...\r\n\r\n    vous, stagiaire\r\n    l\'organisme d\'accueil\r\n    le tuteur de stage au sein de l\'organisme d\'accueil\r\n    l\'établissement d\'enseignement ou de formation\r\n    l\'enseignant référent au sein de l\'établissement d\'enseignement\r\n\r\n'
  ),
  (
    13,
    'Que doit obligatoirement mentionner la convention de stage ?',
    '    l\'intitulé complet de votre cursus ou de votre formation, et son volume horaire par année ou semestre d\'enseignement\r\n    les activités qui vous seront confiées\r\n    les noms de votre enseignant référent et de votre tuteur\r\n    les dates de début et de fin du stage et la durée hebdomadaire maximale de votre présence\r\n    les modalités d\'autorisation d\'absence\r\n    le taux horaire de la gratification\r\n    les avantages éventuels dont vous pouvez bénéficier (restauration, hébergement ou remboursement de frais)\r\n    le régime de protection sociale dont vous bénéficiez\r\n\r\nSi le stage a lieu à l\'étranger, doit être annexée à la convention de stage une fiche d\'information présentant la réglementation du pays d\'accueil sur les droits et devoirs du stagiaire.\r\n'
  ),
  (
    14,
    'Dois je effectuer une période d\'essai si je suis embauché à l\'issu de mon stage ?',
    'Si l\'embauche a lieu dans les 3 mois qui suivent la fin du stage s\'étant déroulé en France métropolitaine dans une entreprise du secteur privé, alors la durée de la période d\'essai peut être abrogée au moins de moitié. Si l\'emploi est en correspondance avec les activités effectuée en tant que stagiaire alors la durée de stage est déduite intégralement de la période d\'essai. Une durée de stage supérieure à deux mois est prise en compte dans le calcul des droits à l\'ancienneté.\r\n'
  ),
  (
    15,
    'Que se passe-t-il à la fin de mon stage ?',
    '    Une attestation de stage vous est remise par l\'organisme d\'accueil\r\n    Elle récapitule la durée effective totale du stage et le montant de la gratification versée (si vous y aviez droit)\r\n    Vous devez transmettre à votre établissement un document dans lequel vous évaluez la qualité de l\'accueil dont vous avez bénéficié\r\n    Vous pouvez être embauché par l\'organisme dans laquelle vous avez fait votre stage, dans les conditions habituelles (CDI ou CDD)\r\n\r\n'
  ),
  (
    16,
    'Ai-je d\'autres droits en stage ?',
    'Vous bénéficiez des mêmes droits que les salariés de l\'organisme d\'accueil, sur...\r\n\r\n    le temps de travail (durée de travail maximale quotidienne et hebdomadaire, de repos quotidien, de repos hebdomadaire, nombre de jours fériés et de travail de nuit)\r\n    l\'accès au restaurant d\'entreprise ou aux titres-restaurant\r\n    l\'accès aux activités sociales et culturelles\r\n    le remboursement de vos frais de transport publics (à hauteur de 50%)\r\n    les congés : si votre stage dure plus de 2 mois, la convention de stage doit prévoir la possibilité de congés et d\'autorisations d\'absence. \r\n\r\nSi le stage dure moins de 2 mois, le fait de prévoir des congés n\'est pas obligatoire.\r\nDans tous les cas, la rémunération des congés est facultative.\r\n'
  ),
  (
    17,
    'Si je fais mes études à l\'étranger, puis-je faire un stage en France ?',
    'Quelle que soit ma nationalité, française ou autre, si j\'effectue un cursus à l\'étranger et que, dans le cadre de ce cursus, je souhaite venir en France pour réaliser un stage, c\'est le droit français en matière de stage (notamment la gratification) qui s\'appliquera, sous réserve que je remplisse les conditions prévues par le code de l\'entrée et du séjour des étrangers et du droit d\'asile (CESEDA) en qualité de stagiaire précisées ci-dessous.\r\n\r\nSi je suis français étudiant à l\'étranger, je n\'ai pas de conditions d\'entrée et de séjour spécifiques relatives aux stages.\r\n\r\n \r\nQualité de stagiaire pour un étudiant international\r\n\r\nPour attester de sa qualité de stagiaire, l\'étudiant international doit préalablement respecter les dispositions suivantes :\r\n\r\n    détenir une convention de stage signée par l\'étudiant stagiaire, son établissement de formation à l\'étranger et l\'organisme d\'accueil en France, signée par le préfet\r\n    justifier de conditions de ressources suffisantes à son maintien sur le territoire français\r\n\r\n \r\nEntrée et séjour réguliers en France\r\n\r\nPour résider en France durant la durée de son stage, l\'étudiant étranger stagiaire doit respecter la législation\r\nsur l\'entrée et le séjour en France et doit notamment détenir :\r\n\r\n    soit une carte de séjour temporaire portant la mention « stagiaire » (ce qui implique la délivrance préalable d\'un visa de court séjour)\r\n    soit un visa long séjour valant titre de séjour portant la mention « stagiaire » délivré par son consulat pour un stage d\'une durée de plus de 3 mois (ce qui le dispense de faire une demande de carte de séjour temporaire portant la mention « stagiaire » une fois arrivé en France).\r\n\r\n'
  ),
  (
    18,
    'Comment me protéger lors de mon stage ?',
    '\r\nLa couverture maladie\r\n\r\nSauf cas particuliers, vous êtes déjà affilié à un régime obligatoire d\'assurance maladie. C\'est généralement celui de vos parents.\r\nRenseignez-vous auprès de votre Caisse d\'assurance maladie sur ameli.fr.\r\n\r\n \r\nLa protection sociale\r\n\r\nElle regroupe la couverture maladie et la couverture accident du travail-maladie professionnelle.\r\nLes modalités de prise en charge dépendent du montant votre gratification.\r\n\r\n \r\nL\'assurance responsabilité civile\r\n\r\nPour les dommages que vous pourriez provoquer sur les lieux d\'activité du stage, comme par exemple sur le matériel prêté ou celui de vos collègues. Vous pouvez souscrire un contrat d\'assurance responsabilité civile auprès d\'un assureur.\r\n\r\n \r\nQue se passe-t-il si je tombe malade ?\r\n\r\nIl n\'y a pas d\'arrêt maladie pour les stagiaires.\r\nVous devez malgré tout fournir un certificat médical afin de justifier toute absence.\r\n\r\n \r\nEn cas d\'accident du travail et/ou de maladie professionnelle :\r\n\r\nLorsque la gratification, en France ou dans certains cas à l\'étranger, est à la hauteur du plafond légal, (soit 3,90€/h pour l\'année 2020), c\'est votre établissement de formation qui cotise et qui est considéré comme responsable.\r\n\r\nLorsque la gratification en France ou, dans certains cas à l\'étranger est au-delà du plafond légal, (soit plus de 3,90€/h pour l\'année 2020), c\'est l\'organisme d\'accueil qui est entièrement responsable.\r\n\r\nPour les stages à l\'étranger ou en mobilité dans les Outre-Mer, il est important de détenir une assurance individuelle accident et une couverture rapatriement sanitaire, assistance juridique.\r\n'
  ),
  (
    19,
    'Le stage permet-il de gagner des points pour ma retraite ?',
    'Oui, pour tous les stages de plus de deux mois gratifiés mais il faut en faire la demande dans les deux années après la fin de votre stage auprès de la caisse de retraite compétente. Il faudra fournir un justificatif d\'attestation de stage qui mentionne la durée effective totale du stage et le montant de la gratification.\r\n'
  );
--
-- Index pour les tables déchargées
--
--
-- Index pour la table `c_faq`
--
ALTER TABLE `c_faq`
ADD PRIMARY KEY (`f_id`);
--
-- AUTO_INCREMENT pour les tables déchargées
--
--
-- AUTO_INCREMENT pour la table `c_faq`
--
ALTER TABLE `c_faq`
MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 20;
COMMIT;