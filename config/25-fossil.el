(el-get 'sync '(vc-fossil))

(autoload 'vc-fossil-registered "vc-fossil")
(add-to-list 'vc-handled-backends 'Fossil)
