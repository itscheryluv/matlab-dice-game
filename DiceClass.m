%   Academic Integrity Statement:
%  	We have not used source code obtained from
%  	any other unauthorized source, either modified
%   or unmodified.  Neither have we provided access
%   to our code to other teams. The project we are
%   submitting is our own original work.

classdef DiceClass
    properties
        numSides
        faceValueArray
    end
    methods
        function die = DiceClass(sides)
            if nargin > 0
                %Initialize number of dice sides and values of faces
                die.numSides = sides;
                die.faceValueArray = ['L' 'R' 'C' '1' '1' '1']
                
                %Read in two dice images for dice sides
                die1 = imread('dice1.png');
                die2 = imread('dice2.png');
                
                %Create alpha images from original dice above
                temp = zeros( size(die1(:,:,1)) );
                temp( all( die1==255, 3 ) ) = 1; 
                imwrite(die1,'dieDots.png','alpha',temp);
                
                %Create alpha images from original dice above
                temp = zeros( size(die2(:,:,1)) );
                temp( all( die2==255, 3 ) ) = 1; 
                imwrite(die2,'dieLetters.png','alpha',temp);
            end
        end
    end
end

    