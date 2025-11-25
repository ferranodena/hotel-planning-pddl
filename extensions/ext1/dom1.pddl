(define (domain hotel-extensio1)
  (:requirements :typing :negative-preconditions :adl :fluents)
  (:types
    reserva habitacio dia
  )

  (:predicates 
    (assignada ?r - reserva)
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia ?r - reserva)
    (processada ?r - reserva) ; per saber si ja hem processat la reserva
  )

  (:functions
    (capacitat ?h - habitacio) 
    (persones ?r - reserva)   
    (total-assignades)        
  )

  ;; assigna i incrementa la mètrica
  (:action assignar-habitacio
      :parameters (
        ?r - reserva 
        ?h - habitacio
      )
      :precondition (and
        (not (processada ?r))          ;; només si encara no l'hem tractat
        (>= (capacitat ?h) (persones ?r)) ; control de capacitat de les habitacions
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (assignada ?r)
        (processada ?r)                ;; marquem com processada
        (increase (total-assignades) 1) ;; suemem 1 al total d'assignades
        (forall (?d - dia) 
          (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
      )
  )

  (:action descartar-reserva
      :parameters (?r - reserva)
      :precondition (not (processada ?r))
      :effect (and 
        (processada ?r) 

      )
  )
)
