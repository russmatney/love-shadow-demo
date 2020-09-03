(local lume (require "lume"))

(local assoc
       (fn [x key val]
         (tset x key val)
         x))

(fn to-pos [obj] {:x obj.x :y obj.y})

(fn collides-with [p1 p2]
  (let [{:x x1 :y y1} (to-pos p1)
        {:x x2 :y y2} (to-pos p2)]
    (and (= (lume.round x1) (lume.round x2))
         (= (lume.round y1) (lume.round y2)))))

{:assoc assoc
 :max (fn [a b] (if (>= a b) a b))

 :to-pos to-pos
 :collides-with collides-with

 }
