(local repl (require "lib.stdio"))

;; set the first scene
(var scene (require :game))

(fn love.load [] (repl.start))

(fn love.draw []
  (when (and scene scene.draw)
    (scene:draw)))

(fn love.update [dt]
  (when (and scene scene.update)
    (scene:update dt)))

(fn love.keypressed [key]
  (if (and (love.keyboard.isDown "lctrl" "rctrl" "capslock") (= key "q"))
      (love.event.quit)

      ;; add what each keypress should do in each scene
      (when (and scene scene.keypressed)
        (scene:keypressed key))))
