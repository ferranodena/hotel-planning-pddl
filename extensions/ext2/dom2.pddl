(define (domain hotel-extensio1)
  (:requirements :typing :negative-preconditions :adl :fluents)
  (:types reserva habitacio dia orientacio)

  (:predicates 
    (assignada ?r - reserva)
    (vol-orientacio ?r - reserva ?o - orientacio)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva)
    (processada ?r - reserva)
    (orientada ?h - habitacio ?o - orientacio)
  )

  (:functions
    (capacitat ?h - habitacio) 
    (persones ?r - reserva)   
    (total-assignades)        
  )

  ;; assigna i incrementa la mètrica (escala: 2 punts orientació correcta, 1 si no)
  (:action assignar-habitacio
    :parameters (
      ?r - reserva 
      ?h - habitacio 
      ?o - orientacio)
    :precondition (and
      (not (processada ?r))
      (vol-orientacio ?r ?o)
      (>= (capacitat ?h) (persones ?r))
      (not (exists (?d - dia ?r2 - reserva)
          (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
    )
    :effect (and
      (assignada ?r)
      (processada ?r)
      (when (orientada ?h ?o) (increase (total-assignades) 2))
      (when (not (orientada ?h ?o)) (increase (total-assignades) 1))
      (forall (?d - dia)
        (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
    )
  )
)