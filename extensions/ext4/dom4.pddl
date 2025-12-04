(define (domain hotel-extensio4-logic)
  (:requirements :typing :adl)
  (:types reserva habitacio dia nombre)

  (:predicates 
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva)
    (processada ?r - reserva)
    (usada ?h - habitacio)
    (oberta ?h - habitacio) 
    
    ;; Lògica numèrica simulada
    (capacitat ?h - habitacio ?n - nombre)
    (persones ?r - reserva ?n - nombre)
    (menor-o-igual ?n1 ?n2 - nombre)
  )

  ;; Acció 1: Assignar a una habitació JA usada (Cost: 1 pas)
  ;; El planificador preferirà això perquè és directe.
  (:action assignar-habitacio-usada
      :parameters (?r - reserva ?h - habitacio ?cap - nombre ?pers - nombre)
      :precondition (and
        (not (processada ?r))
        (usada ?h)  ;; Només si ja està usada
        (capacitat ?h ?cap)
        (persones ?r ?pers)
        (menor-o-igual ?pers ?cap)
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (processada ?r)
        (forall (?d - dia) (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
      )
  )

  ;; Acció 2: Obrir habitació nova (Pas previ necessari per usar una nova)
  ;; Això afegeix longitud al pla, així que FF ho evitarà si pot usar una usada.
  (:action obrir-habitacio
      :parameters (?h - habitacio)
      :precondition (not (usada ?h))
      :effect (and (usada ?h) (oberta ?h))
  )

  ;; Acció 3: Assignar a una habitació NOVA (Cost total: 2 passos -> Obrir + Assignar)
  (:action assignar-habitacio-nova
      :parameters (?r - reserva ?h - habitacio ?cap - nombre ?pers - nombre)
      :precondition (and
        (not (processada ?r))
        (oberta ?h) ;; Requereix haver fet el pas previ
        (capacitat ?h ?cap)
        (persones ?r ?pers)
        (menor-o-igual ?pers ?cap)
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (processada ?r)
        (forall (?d - dia) (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
        (not (oberta ?h)) ;; Consumim l'estat d'obertura
      )
  )

  ;; Acció 4: Descartar reserva (Cost artificial: Molts passos)
  ;; Fem que calgui "preparar" el descart, "confirmar" i "finalitzar".
  ;; Això espanta l'heurística del FF.
  (:action descartar-pas-1
      :parameters (?r - reserva)
      :precondition (not (processada ?r))
      :effect (processada ?r) 
  )
)
