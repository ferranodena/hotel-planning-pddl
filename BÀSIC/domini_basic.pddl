(define (domain hotel)
  (:requirements :strips :typing :negative-preconditions)

  (:types reserva habitacio)

  (:predicates 
    (assignada ?r - reserva)
    (compatible ?r - reserva ?h - habitacio)
  )

  (:action assignar-habitacio
    :parameters (?r - reserva ?h - habitacio)
    :precondition (and 
      (not (assignada ?r))
      (compatible ?r ?h)
    )
    :effect (and
      (assignada ?r)
    )
  )
)
