CREATE
    //Patients
    (Luca: Patient {name: 'Luca', tel: 123456}),
    (Willi: Patient {name: 'Willi', tel: 456123}),
    (Andy: Patient {name: 'Andy', tel: 54678965}),
    (Juan: Patient {name: 'Juan', tel: 999978}),
    (Cristina: Patient {name: 'Cristina', tel: 43235643}),
    (MariaI: Patient {name: 'Maria Ines', tel: 34567834}),
    (Marco: Patient {name: 'Marco', tel: 59821453}),
    (Camila: Patient {name: 'Camila', tel: 56438765}),
    (Abril: Patient {name: 'Abril', tel: 54786523}),
    (Alfredo: Patient {name: 'Alfredo', tel: 47611839}),
    //Doctors
    (DrHouse: Doctor {name: 'Gregory House', especialidad: 'Pediatra', tel: 789456}),
    (Pedro: Doctor {name: 'Pedro', especialidad: 'Internista', tel: 888845}),
    (Freud: Doctor {name: 'Sigmund Freud', especialidad: 'Psicologo', tel: 45321234}),
    (Pasteur: Doctor {name: 'Louis Pasteur', especialidad: 'Dermatologo', tel: 78307654}),
    (Hipocrates: Doctor {name: 'Hipocrates', especialidad: 'Cardiologo', tel: 54321567}),
    (Metrodora: Doctor {name: 'Metrodora', especialidad: 'Ginecologa', tel: 46786323}),
    (Blackwell: Doctor {name: 'Elizabeth Blackwell', especialidad: 'Oftalmologo', tel: 75432198}),
    (Lister: Doctor {name: 'Joseph Lister', especialidad: 'Cirujano', tel: 43876542}),
    (Apgar: Doctor {name: 'Virginia Apgar', especialidad: 'Anestesista', tel: 54329087}),
    (Netter: Doctor {name: 'Frank H. Netter', especialidad: 'Dentista', tel: 888845}),
    //Drugs
    (Paracetamol: Drug {name: 'Paracetamol'}),
    (Aspirina: Drug {name: 'Aspirina'}),
    (Lansoprazol: Drug {name: 'Lansoprazol'}),
    (Amoxicilina: Drug {name: 'Amoxicilina'}),
    (Amlodipina: Drug {name: 'Amlodipina'}),
    (Omeprazol: Drug {name: 'Omeprazol'}),
    (Lexotiroxina: Drug {name: 'Lexotiroxina'}),
    (Colecalciferol: Drug {name: 'Colecalciferol'}),
    (Furosemida: Drug {name: 'Furosemida'}),
    (Warafina: Drug {name: 'Warafina'}),

    //Relations
    (Willi) -[:VISITS {date:'10012010'}]-> (DrHouse) -[:PRESCRIBES]-> (Paracetamol) <-[:TAKES]- (Willi),
    (Juan) -[:VISITS {date:'20170515'}]-> (Pedro) -[:PRESCRIBES]-> (Aspirina) <-[:TAKES]- (Juan),
    (Andy) -[:VISITS {date:'28052017'}]-> (Freud) -[:PRESCRIBES]-> (Lansoprazol) <-[:TAKES]- (Andy),
    (Cristina) -[:VISITS {date:'15112019'}]-> (Pasteur) -[:PRESCRIBES]-> (Amoxicilina) <-[:TAKES]- (Cristina),
    (MariaI) -[:VISITS {date:'11122016'}]-> (Hipocrates) -[:PRESCRIBES]-> (Amlodipina) <-[:TAKES]- (MariaI),
    (Luca) -[:VISITS {date:'11102015'}]-> (Apgar) -[:PRESCRIBES]-> (Omeprazol) <-[:TAKES]- (Luca),
    (Marco) -[:VISITS {date:'01072012'}]-> (Metrodora) -[:PRESCRIBES]-> (Lexotiroxina) <-[:TAKES]- (Marco),
    (Camila) -[:VISITS {date:'05042008'}]-> (Blackwell) -[:PRESCRIBES]-> (Colecalciferol) <-[:TAKES]- (Camila),
    (Abril) -[:VISITS {date:'05042008'}]-> (Lister) -[:PRESCRIBES]-> (Furosemida) <-[:TAKES]- (Abril),
    (Alfredo) -[:VISITS {date:'05042008'}]-> (Netter) -[:PRESCRIBES]-> (Warafina) <-[:TAKES]- (Alfredo),
    (Andy) -[:KNOWS]-> (Marco),
    (Cristina) -[:KNOWS]-> (Abril),
    (MariaI) -[:KNOWS]-> (Cristina),
    (Marco) -[:KNOWS]-> (Juan),
    (Camila) -[:KNOWS]-> (Willi),
    (Abril) -[:KNOWS]-> (Luca),
    (Alfredo) -[:KNOWS]-> (Andy),
    (Juan) -[:KNOWS]-> (Willi),
    (Luca) -[:KNOWS]-> (Alfredo),
    (Willi) -[:KNOWS]-> (Andy),
    (Abril) -[:KNOWS]-> (Camila),
    (Marco) -[:KNOWS]-> (Cristina),
    (Camila) -[:KNOWS]-> (MariaI),
    //Medicos
    (Pasteur) -[:KNOWS]-> (Freud),
    (Pedro) -[:KNOWS]-> (Hipocrates),
    (Lister) -[:KNOWS]-> (DrHouse),
    (Pedro) -[:KNOWS]-> (Apgar),
    (Netter) -[:KNOWS]-> (Blackwell),
    (Blackwell) -[:KNOWS]-> (Metrodora),
    (Hipocrates) -[:KNOWS]-> (Metrodora),
    (Metrodora) -[:KNOWS]-> (Pasteur),
    (Pedro) -[:KNOWS]-> (Metrodora),
    (Apgar) -[:KNOWS]-> (Lister),
    (Freud) -[:KNOWS]-> (Blackwell),
    (DrHouse) -[:KNOWS]-> (Hipocrates),
    (Lister) -[:KNOWS]-> (Apgar),
    (DrHouse) -[:KNOWS]-> (Freud);
