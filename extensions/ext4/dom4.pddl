(define (domain hotel-extensio4)
  (:requirements :typing :negative-preconditions :adl :fluents)
  (:types
    reserva habitacio dia
  )

  (:predicates 
    (assignada ?r - reserva)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva)
    (usada ?h - habitacio) 
  )

  (:functions
    (capacitat ?h - habitacio) 
    (persones ?r - reserva)   
    (total-assignades)
    (total-desperdici)
    (total-habitacions-usades) 
  )

  (:action assignar-habitacio
      :parameters (
        ?r - reserva 
        ?h - habitacio
      )
      :precondition (and
        (not (assignada ?r))
        (>= (capacitat ?h) (persones ?r))
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (assignada ?r)
        
        ;; Incrementem mètriques existents
        (increase (total-assignades) 1)
        (increase (total-desperdici) (- (capacitat ?h) (persones ?r)))
        
        (when (not (usada ?h))
            (and 
                (usada ?h)
                (increase (total-habitacions-usades) 1)
            )
        )

        ;; Marcar l'ocupació dels dies
        (forall (?d - dia) 
          (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
      )
  )
)
