function result = myFunction(input)
% This function demonstrates a potential issue with implicit type conversion in MATLAB.
% It is intended to calculate the sum of elements in an array.

if ischar(input)
    disp('Input is a string. Please provide a numeric array.');
    result = [];  % Return an empty array to indicate an error
    return;
end

% This is where the potential error lies. MATLAB might implicitly convert
% the input to a double even if it's not intended.  This can lead
% to unexpected behavior with logical arrays.
result = sum(input);
end

% Example usage that can lead to unexpected output:
input = [true, false, true];
result = myFunction(input);  % This might give a sum of 2.0 unexpectedly.
