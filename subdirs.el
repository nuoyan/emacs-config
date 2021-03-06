(let* ((init-path (concat *home-elisp-path* "/my-elisp"))
       (my-elisps '("baseline" "keys" "fns" "erc" "git" "java" "lisp" "org" "bm" "python" "ruby" "tramp" "xml" "erlware" "cucumber" "clojure"))
       (default-directory *home-elisp-path*))
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path))
  (mapcar (lambda (x) (load-file (expand-file-name (concat "my-" x ".el") init-path))) my-elisps))

