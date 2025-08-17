;; title: donation
;; version:
;; summary:
;; description:

;; traits
;;

;; token definitions
;;

;; constants
;;

;; data vars
;;

;; data maps
;;

;; public functions
;;

;; read only functions
;;

;; private functions
;;

;; Donation Box Contract
;; People can send STX, contract records who donated how much.
;; Contract owner can withdraw the collected funds.

(define-constant ERR_UNAUTHORIZED u100)

;; Owner of the donation box (set when deployed)
(define-constant contract-owner tx-sender)

;; Store total donations received
(define-data-var total-donations uint u0)

;; Map of donor => total amount donated
(define-map donations principal uint)

;; Donate STX to the contract
(define-public (donate (amount uint))
  (begin
    ;; Transfer STX from caller to contract
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    ;; Update total donations
    (var-set total-donations (+ (var-get total-donations) amount))
    ;; Update individual donor record
    (let ((prev (default-to u0 (map-get? donations tx-sender))))
      (map-set donations tx-sender (+ prev amount)))
    ;; Log donation
    (print { action: "donation", donor: tx-sender, amount: amount })
    (ok true)
  )
)

;; Get total donations collected
(define-read-only (get-total-donations)
  (var-get total-donations)
)

;; Get how much a specific donor has given
(define-read-only (get-donated-amount (donor principal))
  (default-to u0 (map-get? donations donor))
)

;; Owner withdraws funds from contract
(define-public (withdraw (amount uint) (recipient principal))
  (begin
    (asserts! (is-eq tx-sender contract-owner) (err ERR_UNAUTHORIZED))
    (try! (as-contract (stx-transfer? amount tx-sender recipient)))
    (ok true)
  )
)
