clear all;
clc;

% Let X have one of the following distributions: X ∈ N(µ, σ) (Normal), X ∈ T(n)
% (Student), X ∈ χ2(n) [that is chi squared], or X ∈ F(m, n) (Fisher) (all continuous).
% Compute the following:

% In this exercise we approximate P(X < n) to P(X <= n) because
% in continuous probability distributions, the probability of a random
% variable taking on any specific value is actually zero.
% This is because there are infinitely many possible values
% the variable could take on.

% So any pdf is actually 0
% aka P(X = n) = 0 for any n

% a) P(X ≤ 0) and P(X ≥ 0);
% P(X <= 0) is cdf of 0
% P(X >= 0) = 1 - P(X < 0) = 1 - cdf of 0

% b) P(−1 ≤ X ≤ 1) and P(X ≤ −1 or X ≥ 1);

% quantiles are computed with the function inv

% c) the value xα such that P(X < xα) = P(X ≤ xα) = α, for α ∈ (0, 1)
% (xα is called the quantile of order α);

% d) the value xβ such that P(X > xβ) = P(X ≥ xβ) = β, for β ∈ (0, 1)
% (xβ is the quantile of order 1 − β).

% in each switch case the variables a1, a2, b1, b2, c and d represent the
% values for the subpoints

% u is supposed to be miu (µ)
% o is supposed to be sigma (σ)

% here I use the other way of calling pdf and cdf, giving the distribution
% as a first argument
% for example: binopdf(k, n, p) = pdf('bino', k, n, p)

option = input("Choose between normal, student, chi2, fischer:", "s");
switch option
    case "normal"
        fprintf("\nNormal model selected\n")
        u = input("Enter u:");
        o = input("Enter o:");

        a1 = cdf("Normal", 0, u, o);
        a2 = 1 - cdf("Normal", 0, u, o);

        b1 = cdf("Normal", 1, u, o) - cdf("Normal", -1, u, o);
        b2 = 1 - b1;

        alpha = input("Enter alpha:");
        beta = input("Enter beta:");
        
        c = norminv(alpha, u, o);
        d = norminv(1 - beta, u, o);

    case "student"
        fprintf("\nStudent model selected\n")
        n = input("Enter n:");

        a1 = cdf("T", 0, n);
        a2 = 1 - cdf("T", 0, n);

        b1 = cdf("T", 1, n) - cdf("T", -1, n);
        b2 = 1 - b1;

        alpha = input("Enter alpha:");
        beta = input("Enter beta:");
        
        c = tinv(alpha, n);
        d = tinv(1 - beta, n);

    case "chi2"
        fprintf("\nChi2 model selected\n")
        n = input("Enter n:");

        a1 = cdf("chi2", 0, n);
        a2 = 1 - cdf("chi2", 0, n);

        b1 = cdf("chi2", 1, n) - cdf("chi2", -1, n);
        b2 = 1 - b1;

        alpha = input("Enter alpha:");
        beta = input("Enter beta:");
        
        c = chi2inv(alpha, n);
        d = chi2inv(1 - beta, n);

    case "fischer"
        fprintf("\nFischer model selected\n")
        m = input("Enter m:");
        n = input("Enter n:");

        a1 = cdf("F", 0, m, n);
        a2 = 1 - cdf("F", 0, m, n);

        b1 = cdf("F", 1, m, n) - cdf("F", -1, m, n);
        b2 = 1 - b1;

        alpha = input("Enter alpha:");
        beta = input("Enter beta:");

        c = finv(alpha, m, n);
        d = finv(1 - beta, m, n);

    otherwise
        fprintf("\nOption not supported\n")
end

fprintf("a1 = %5.4f, a2 = %5.4f\n", a1, a2);
fprintf("b1 = %5.4f, b2 = %5.4f\n", b1, b2);
fprintf("c = %5.4f\n", c);
fprintf("d = %5.4f\n", d);