(define (domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)
  (:types
    reserva habitacio dia
  )

  (:predicates 
    (assignada ?r - reserva)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva)
  )

  (:functions
    (capacitat ?h - habitacio) 
    (persones ?r - reserva)   
    (total-assignades)
    (total-desperdici)        
  )

  ;; assigna i incrementa la mètrica
  (:action assignar-habitacio
      :parameters (
        ?r - reserva 
        ?h - habitacio
      )
      :precondition (and
        (not (assignada ?r))          ;; només si encara no l'hem tractat
        (>= (capacitat ?h) (persones ?r)) ; control de capacitat de les habitacions
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (assignada ?r)
        (increase (total-assignades) 1) ;; suemem 1 al total d'assignades
        (increase (total-desperdici) (- (capacitat ?h) (persones ?r)))
        (forall (?d - dia) 
          (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
      )
  )
)
