%% Quick sample size estimation
% Test assumes repeated measures between conditions. We lack sufficient data
% to estimate a proper standard deviation of participant means, so estimate
% a standard deviation from the differences observed between current
% conditions. 

% Intended distinguisable difference from baseline to condition of interest
difference = 0.1;  %W/kg, <- manually estimated from previous pilots

% Estimate standard deviation of within-subject difference from baseline to
% condition of interest
std_diff = 0.15; %W/kg, <- manually estimated from previous pilots

% Compute effect size (Cohen's d for paired data)
effect_size = difference / std_diff;

% Sample size calculation
alpha = 0.05;    % Significance level
power = 0.8;     % Desired power

n = sampsizepwr('t', [0, std_diff], difference, power, [], 'Tail','right');
disp(['Required sample size: ', num2str(ceil(n))]);
