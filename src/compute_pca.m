function [meanFace, eigenvectors, eigenvalues] = compute_pca(X)

    [d, m] = size(X);

    meanFace = mean(X, 2);
    Xc = X - meanFace;

    C = (1/(m-1)) * (Xc * Xc');

    [V, D] = eig(C);
    eigenvalues = diag(D);

    [eigenvalues, idx] = sort(eigenvalues, 'descend');
    eigenvectors = V(:, idx);

end
