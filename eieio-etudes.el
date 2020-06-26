(require 'eieio-base)

(defclass pek-minimal-class (eieio-named) ())

(ert-deftest test-minimal-class ()
  "Basic test of 'minimal' class"
  (let ((explicit (pek-minimal-class :object-name "pek-explicit"))
	(implicit (pek-minimal-class "pek-implicit")))
    (should (equal (oref explicit :object-name) "pek-explicit"))
    (should (equal (oref implicit :object-name) "pek-implicit"))))
