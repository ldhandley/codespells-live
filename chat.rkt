#lang at-exp codespells

(require nomic/new-twitch
         )

(provide #%module-begin
         #%app
         #%datum
         #%top
         #%top-interaction
         quote

         with-twitch-id
         mini
         cheer
         force
         force-to
         say
         face
         color
         run)



(define (mini) ;What are the allowed models?
  (hash 'type      'Miniature
        'twitch-id (current-twitch-id)))

(define (cheer)
  (hash 'type      'Cheer
        'twitch-id (current-twitch-id)))

(define (between? num1 num2)
  (lambda (x)
    (and (number? x) (< num1 x) (> num2 x))))

(define/contract (force x y z)
  (-> (between? -10000 10000) (between? -10000 10000) (between? -10000 10000) hash?)
  (hash 'type      'Force
        'x x
        'y y
        'z z
        'twitch-id (current-twitch-id)))

(define (force-to tag f)
  (hash 'type      'ForceTo
        'tag       tag
        'force     f
        'twitch-id (current-twitch-id)))

(define (say ms)
  (hash 'type    'Say
        'message ms))

(define (face name)
  (hash 'type 'Face
        'name name))

(define (color name)
  (hash 'type      'Color
        'name      name
        'twitch-id (current-twitch-id)))

(define (run id)
  (hash 'type      'Run
        'id        id
        'twitch-id (current-twitch-id)))

(define-syntax-rule (define-face face-name)
  (begin
    (provide face-name)
    (define face-name
      (~a 'face-name))))

(define-syntax-rule (define-color color-name)
  (begin
    (provide color-name)
    (define color-name
      (~a 'color-name))))

;COLORS
(define-color red)
(define-color green)
(define-color blue)
(define-color orange)

;FACES
(define-face bernie-sanders)
(define-face doge)
(define-face grumpy-cat)
(define-face polite-cat)
(define-face sad-pepe)
(define-face shocked-cat)
(define-face surprised-cat)
(define-face surprised-pikachu)
(define-face troll-face)
(define-face you-kidding-me)
