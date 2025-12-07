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

    ;; Predicats auxiliars per a la cadena de descart
    (descartant-1 ?r - reserva)
    (descartant-2 ?r - reserva)
    (descartant-3 ?r - reserva)
  )

  ;; Acció 1: Assignar a una habitació JA usada (Cost: 1 pas)
  (:action assignar-habitacio-usada
      :parameters (?r - reserva ?h - habitacio ?cap - nombre ?pers - nombre)
      :precondition (and
        (not (processada ?r))
        (usada ?h)
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

  ;; Acció 2: Obrir habitació nova (Pas 1 de 2)
  (:action obrir-habitacio
      :parameters (?h - habitacio)
      :precondition (not (usada ?h))
      :effect (and (usada ?h) (oberta ?h))
  )

  ;; Acció 3: Assignar a una habitació NOVA (Pas 2 de 2)
  (:action assignar-habitacio-nova
      :parameters (?r - reserva ?h - habitacio ?cap - nombre ?pers - nombre)
      :precondition (and
        (not (processada ?r))
        (oberta ?h) ;; Requereix haver obert l'habitació
        (capacitat ?h ?cap)
        (persones ?r ?pers)
        (menor-o-igual ?pers ?cap)
        (not (exists (?d - dia ?r2 - reserva) 
             (and (dies-reserva ?r ?d) (ocupada ?h ?d ?r2))))
      )
      :effect (and
        (processada ?r)
        (forall (?d - dia) (when (dies-reserva ?r ?d) (ocupada ?h ?d ?r)))
        (not (oberta ?h)) ;; Tanca l'oportunitat d'assignar com a nova
      )
  )

  ;; --- CADENA DE DESCART (COST: 4 PASSOS) ---
  ;; He reduït a 4 passos per ser segur però dissuasiu (més que 2)
  
  (:action descartar-inici
      :parameters (?r - reserva)
      :precondition (not (processada ?r))
      :effect (descartant-1 ?r)
  )

  (:action descartar-pas-2
      :parameters (?r - reserva)
      :precondition (descartant-1 ?r)
      :effect (and (not (descartant-1 ?r)) (descartant-2 ?r))
  )

  (:action descartar-pas-3
      :parameters (?r - reserva)
      :precondition (descartant-2 ?r)
      :effect (and (not (descartant-2 ?r)) (descartant-3 ?r))
  )

  (:action descartar-final
      :parameters (?r - reserva)
      :precondition (descartant-3 ?r)
      :effect (and (not (descartant-3 ?r)) (processada ?r))
  )
)
