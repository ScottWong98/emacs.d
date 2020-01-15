
(with-eval-after-load 'org
  (setq org-src-fontify-natively t)
  
  (setq org-agenda-files '("~/org"))

  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline "~/org/gtd.org" "Arrangement")
	   "* TODO [#B] %?\n  %i\n"
	   :empty-lines 1)))
  )
(provide 'init-org)
