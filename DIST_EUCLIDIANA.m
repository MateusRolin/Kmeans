function [d] = DIST_EUCLIDIANA(prototipo, objeto)

  d = sqrt(sum((objeto - prototipo).^2));

endfunction
