#lang racket

(struct cell (index is-mine))

(let ([rows 3]
      [columns 3]
      [mines 2])

  ; board is vector of cell structs
  (define cells (make-vector (* rows columns) null))

  ; populate cell data
  (for ([i (in-range 1 (+ 1 rows))])
    (for ([j (in-range 1 (+ 1 columns))])
      ; index = ((i - 1) * columns) + (j - 1)
      (define index (+ (* (- i 1) columns) (- j 1)))
      (printf "(~a, ~a) = ~a~n" i j index)      
      (vector-set! cells index (cell index #f))
  ))

  ; print cells
  (for ([c cells])
    (printf "~a, ~a~n" (cell-index c) (cell-is-mine c)))
  
)
