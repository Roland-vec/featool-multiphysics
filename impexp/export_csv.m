function [ varargout ] = export_csv( varargin )
%EXPORT_CSV Export grid and data in CSV format.
%
%   EXPORT_CSV( FILENAME, FEA, EXPR, SOLNUM )
%
%   Export of grid points and corresponding solution/expression data
%   in CSV format. The CSV file will consist of a header line with the
%   space coordinate names, dependent variable names, and given
%   expressions (columns). This is followed by the actual data rows
%   where one line corresponds to the data for the specific grid
%   point.
%
%   FILENAME gives the output file name. FEA must be a valid FEA data
%   struct, EXPR is optionally a cell array with expressions to
%   process (the grid coordinates and dependent variables in the FEA
%   struct will be prepended to EXPR). And SOLNUM is optionally the
%   solution number of which to evaluate the expressions.

% Copyright 2013-2019 Precise Simulation, Ltd.

if( ~nargin && ~nargout ), help export_csv, return, end
varargout = cell( 1, nargout );
[varargout{:}] = featool( 'feval', 'export_csv', varargin{:} );
if( ~nargout ), clear varargout; end
