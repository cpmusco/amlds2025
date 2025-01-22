import matplotlib.pyplot as plt
import numpy as np
from scipy.stats import binom


# Plot guassian distributions
def plot_normal_distributions(filename):
    max_x = 10
    def normal_pdf(x, mu, sigma):
        return 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))

    x = np.linspace(-max_x, max_x, 100)
    plt.figure(figsize=(8,4))
    plt.title('Normal Distributions')
    plt.plot(x, normal_pdf(x, 0, 1) , linewidth=2, color='r', linestyle='solid')
    plt.plot(x, normal_pdf(x, 0, 2.5), linewidth=2, color='b', linestyle='dashed')
    plt.plot(x, normal_pdf(x, -5, 2), linewidth=2, color='g', linestyle='dotted')
    plt.xlabel(r'$x$')
    plt.savefig(filename, transparent=True, dpi=1000)

#plot_normal_distributions(filename='lecture01_distributions.png')

def plot_gaussian_vs_chebyshev(filename):
    x = np.linspace(1, 10, 100)
    plt.figure(figsize=(8,4))
    plt.title('Gaussian Tail Bound vs Chebyshev\'s Inequality')
    plt.xlabel(r'k')
    plt.ylabel(r'$P[|X - \mu| \geq k \sigma]$')
    plt.plot(x, 2 * np.exp(-x**2/2), linewidth=2, color='r', linestyle='solid', label=r'$2e^{-k^2/2}$ (Gaussian)')
    plt.plot(x, 1/x**2, linewidth=2, color='b', linestyle='dashed', label=r'$1/k^2$ (Chebyshev)')
    plt.legend()
    plt.xticks(np.arange(1, 11, 1))
    plt.yscale('log')
    plt.savefig(filename, transparent=True, dpi=1000)

#plot_gaussian_vs_chebyshev(filename='lecture03_gaussian_vs_chebyshev.png')

def plot_central_limit_theorem(filename):
    def normal_pdf(x, mu, sigma):
        return 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))
    plt.figure(figsize=(8,4))
    # Plot binomial distribution of 10 coin flips
    def plot_for_n(n, color):
        rv = binom(n, .5)
        x = np.arange(0, n + 1)
        plt.bar(x, rv.pmf(x), label=f'{n} Coin Flips', color=color, alpha=.5)
        x = np.linspace(0, n, 100)
        plt.plot(x, normal_pdf(x, .5*n, np.sqrt(.25*n)) , linewidth=2, color=color, linestyle='solid')#, label=f'Normal Distribution for {n}')
    plot_for_n(5, color='r')
    plot_for_n(20, color='b')
    plt.legend()
    plt.title('Central Limit Theorem')
    plt.xlabel('Number of Heads')
    plt.ylabel('Probability')
    plt.savefig(filename, transparent=True, dpi=1000)

#plot_central_limit_theorem(filename='lecture03_central_limit_theorem.png')

def plot_primes(filename):
    n = 2000
    primes = []
    for i in range(2, n):
        is_prime = True
        for j in range(2, int(np.sqrt(i)) + 1):
            if i % j == 0:
                is_prime = False
        if is_prime:
            primes.append(i)
    primes = np.array(primes)

    def num_prime_less_than(num):
        num_less = len(primes[primes <= num])
        return num_less
    
    x = np.arange(2, n)

    plt.figure(figsize=(8,4))
    plt.plot(x, [num_prime_less_than(i) for i in x], linewidth=2, color='r', linestyle='solid', label=r'$\pi(x)$')
    plt.plot(x, x/np.log(x), linewidth=2, color='b', linestyle='dashed', label=r'$\frac{x}{\log(x)}$')
    plt.legend()
    plt.title('Number of Primes')
    plt.ylabel(r'Number of Primes Less Than $x$')
    plt.xlabel(r'x')
    plt.legend()
    plt.savefig(filename, transparent=True, dpi=1000)

plot_primes('lecture03_primes.png')