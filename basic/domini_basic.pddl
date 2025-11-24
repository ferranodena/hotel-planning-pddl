(define (domain hotelbasic)
  (:requirements :typing :negative-preconditions :adl)

  (:types reserva habitacio dia)

  (:predicates 
    (assignada ?r - reserva)
    (compatible ?r - reserva ?h - habitacio)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva) ; es ocupada per una reserva concreta
  )

  (:action assignar-dia
      :parameters (
        ?r - reserva
        ?h - habitacio
        ?d - dia
      )
      :precondition (and 
        (compatible ?r ?h)
        (dies-reserva ?r ?d)
        (not (exists (?r2 - reserva) (ocupada ?h ?d ?r2)))
      )
      :effect (and
        (ocupada ?h ?d ?r)
      )
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
