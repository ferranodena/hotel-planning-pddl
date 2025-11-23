(define (domain hotel)
  (:requirements :typing :negative-preconditions :adl)

  (:types reserva habitacio dia)

  (:predicates 
    (assignada ?r - reserva)
    (compatible ?r - reserva ?h - habitacio)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia)
  )

  (:action assignar-habitacio
    :parameters (?r - reserva ?h - habitacio)
    :precondition (and 
      (not (assignada ?r))
      (compatible ?r ?h)
      (forall (?d - dia)
        (when (dies-reserva ?r ?d)
          (not(ocupada ?h ?d))
        )
      
      )
    )
    :effect (and
      (assignada ?r)
      (forall (?d - dia)
        (when (dies-reserva ?r ?d)
               (ocupada ?h ?d))
      )
    )
  )
)
