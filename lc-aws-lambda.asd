(asdf:defsystem "aws-lambda-runtime"
  :description "LispCentral AWS Lambda Runtime Environment"
  :license "Apache-2.0"
  :author "Julio Jimenez <julio@julioj.com>"
  :depends-on (#:alexandria
	             #:usocket
	             #:drakma
	             #:uiop)
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "lambda-env-vars" :depends-on ("package"))
                 (:file "find-handler" :depends-on ("package"))
                 (:file "bootstrap" :depends-on ("lambda-env-vars" "find-handler"))))))