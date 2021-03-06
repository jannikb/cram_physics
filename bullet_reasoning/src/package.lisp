;;;
;;; Copyright (c) 2010, Lorenz Moesenlechner <moesenle@in.tum.de>
;;; All rights reserved.
;;; 
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions are met:
;;; 
;;;     * Redistributions of source code must retain the above copyright
;;;       notice, this list of conditions and the following disclaimer.
;;;     * Redistributions in binary form must reproduce the above copyright
;;;       notice, this list of conditions and the following disclaimer in the
;;;       documentation and/or other materials provided with the distribution.
;;;     * Neither the name of the Intelligent Autonomous Systems Group/
;;;       Technische Universitaet Muenchen nor the names of its contributors 
;;;       may be used to endorse or promote products derived from this software 
;;;       without specific prior written permission.
;;; 
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;; POSSIBILITY OF SUCH DAMAGE.
;;;

(in-package :cl-user)

(desig-props:def-desig-package bullet-reasoning
  (:nicknames :btr)
  (:use #:common-lisp #:crs #:bt #:bt-vis #:cut #:cram-manipulation-knowledge)
  (:import-from #:alexandria compose curry rcurry with-gensyms copy-hash-table)
  (:import-from #:desig desig-solutions)
  (:shadowing-import-from #:cl-bullet points)
  (:shadow copy-object)
  (:export *current-bullet-world* *current-timeline*
           merge-bounding-boxes aabb with-stored-world *debug-window*
           add-debug-window add-costmap-function-object camera width
           height fov-y z-near z-far pose gl-execute-with-camera
           camera-transform look-at-object-rotation
           with-rendering-to-framebuffer render-to-framebuffer
           get-rendering-context read-pixelbuffer read-depthbuffer to-png-image
           add-object generic-cup household-object mug plate mondamin mesh
           remove-object object pot bowl
           object-type household-object-type name rigid-bodies
           rigid-body-names rigid-body world make-object box
           static-plane sphere cylinder cone point-cloud cutlery fork knife
           bt-reasoning-world invalidate-object objects object %object
           bt-reasoning-world-state robot-object links joint-states
           assert joint-state urdf joint-names joint-state link-names
           link-pose set-robot-state-from-tf set-tf-from-robot-state
           semantic-map-object ensure-pose ensure-vector object-visibility
           semantic-map container semantic-map-part semantic-map-part-type
           semantic-map-part-pose object-visibility-percentage
           object-visibility-occluding-objects flat-color-object-proxy
           calculate-object-visibility object-visible-p
           occluding-objects simulate find-objects contact-p
           find-all-contacts find-objects-in-contact poses-equal-p
           object-pose-different
           stable-p above-p find-objects-above below-p
           find-objects-below bullet-world object
           retract step simulate-realtime object-pose object-bottom-pose
           position orientation poses-equal contact stable
           object-not-in-collision ik-solution-not-in-collision
           link-contacts supported-by above below visible
           occluding-objects occluding-object valid-grasp grasp side reachable
           def-grasp def-tool object-grasp
           point-reachable pose-reachable blocking debug-window
           debug-costmap head-pointing-at with-current-bullet-world
           reach-pose-ik reach-object-ik point-reachable-p reach-point-ik
           object-reachable-p pose-reachable-p calculate-orientation-in-robot
           calculate-object-tool-length set-robot-state-from-joints
           init-ros-object-database clear-bullet-world
           ros-household-object execute open close reach-ik-solution
           attached attached-objects object-attached
           attach-object detach-object detach-all-objects
           side->ik-group-name household-object-dimensions get-ik
           make-joint-state-message open-object close-object
           set-articulated-object-joint-position
           with-world copied-world with-copied-world
           obj-pose-on obj-poses-on flat-color-object-proxy drawable-list
           drawable-list-drawables make-drawable-list

           robot-pan-tilt-links robot-pan-tilt-joints robot
           camera-frame robot-arms-parking-joint-states
           robot-pre-grasp-joint-states end-effector-parking-pose
           camera-minimal-height camera-maximal-height

           event make-event timeline timeline-init timeline-advance
           timeline-current-world-state timeline-lookup
           holds-in-world holds occurs at
           during throughout with-timeline)
  (:desig-properties mug mondamin plate pot handle cutlery knife fork spatula
                     pancake pancake-maker))
