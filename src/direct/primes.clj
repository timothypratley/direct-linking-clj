(ns direct.primes
  (:gen-class))

(defn divides? [x y]
  (zero? (rem x y)))

(defn prime? [x seen]
  (not (some #(divides? x %) seen)))

(defn find-primes []
  (loop [x 2
         seen []]
    (if (> x 200000)
      (println "Found " (count seen) " primes")
      (recur (inc x)
             (cond-> seen (prime? x seen) (conj x))))))

(defn -main [& args]
  (find-primes))
