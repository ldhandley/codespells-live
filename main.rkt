#lang racket/base

(require codespells-live/chat)

(provide (except-out (all-from-out codespells-live/chat) run)
         sleep)

(define (sleep sec)
  (hash 'type      'Sleep
        'seconds   sec))