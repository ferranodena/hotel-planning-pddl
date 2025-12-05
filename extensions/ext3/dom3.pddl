(define (domain hotel-extensio3)
  (:requirements :typing :negative-preconditions :adl :fluents)
  (:types
    reserva habitacio dia
  )

  (:predicates 
    (dies-reserva ?r - reserva ?d - dia)
    (ocupada ?h - habitacio ?d - dia)
    (processada ?r - reserva) ; per saber si ja hem processat la reserva
  )

  (:functions
    (capacitat ?h - habitacio) 
    (persones ?r - reserva)   
    (total-reserves-descartades)
    (total-places-descartades)        
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
        (not (exists (?d - dia) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d))))
      )
      :effect (and
        (processada ?r)                ;; marquem com processada
        (forall (?d - dia) 
          (when (dies-reserva ?r ?d) (ocupada ?h ?d)))
        (increase (total-places-descartades)
        (- (capacitat ?h) (persones ?r)))
      )
  )

  (:action descartar-reserva
      :parameters (?r - reserva)
      :precondition (not (processada ?r))
      :effect (and 
        (processada ?r)
        (increase (total-reserves-descartades) 1) ;; suemem 1 al total de descartades
      )
  )
)
