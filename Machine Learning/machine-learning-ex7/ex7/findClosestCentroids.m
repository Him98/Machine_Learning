function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i=1:size(X,1),
	mi = Inf;

	%a = norm(centroids(1,:)-X(i,:));
    %b = norm(centroids(2,:)-X(i,:));
    %c = norm(centroids(3,:)-X(i,:));
    %if(a<b && a<c)
   	%    idx(i)=1;
   	%end
    %if(b<a && b<c)
    %    idx(i)=2;
    %end
    %if(c<a && c<b)
    %    idx(i)=3;
    %end

    for j=1:K
    	d = norm(X(i,:)' - centroids(j,:)');
        if(mi>d)
        	mi=d;
            idx(i)=j;
        end
    end
end



% =============================================================

end

