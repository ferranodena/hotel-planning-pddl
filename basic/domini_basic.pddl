(define (domain hotelbasic)
  (:requirements :typing :negative-preconditions :adl)

  (:types reserva habitacio dia)

  (:predicates 
    (assignada ?r - reserva)
    (compatible ?r - reserva ?h - habitacio)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva) ; es ocupada per una reserva concreta
  )

  (:action assignar-habitacio
      :parameters (
        ?r - reserva
        ?h - habitacio
      )
      :precondition (and
        (not (assignada ?r))
        (compatible ?r ?h)
        (not (exists (?d - dia ?r2 - reserva) (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (assignada ?r)
        (forall (?d - dia) (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
      )
  )
)
