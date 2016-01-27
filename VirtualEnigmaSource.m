%% Virtual Enigma
AllChars=['ABCDEFGHIJKLMNOPQRSTUVWXYZ'];
numChar=length(AllChars);
CipherText=[];
%Use ComposePermutation(A,B) to compose


%Database
%All of the variables are compressed; When in use, expand using
%VAR=[AllChars;VAR] where VAR is the variable to expand for composition
    %Rotors
I=['EKMFLGDQVZNTOWYHXUSPAIBRCJ'];
II=['AJDKSIRUXBLHWTMCQGZNPYFVOE'];
III=['BDFHJLCPRTXVZNYEIWGAKMUSQO'];
IV=['ESOVPZJAYQUIRHXLNFTGKDCMWB'];
V=['VZBRGITYUPSDNHLXAWMJQOFECK'];
    %Reflectors
Bref=['YRUHQSLDPXNGOKMIEBFZCWVJAT'];
Cref=['FVPJIAOYEDRZXWGCTKUQSBNMHL'];
    %Plugboard to Rotor because keyboard is in qwertzu and rotor input is
    %alphabetical
K=['JWULCMNOHPQZYXIRADKEGVBTSF'];


%Input Rotors
%disp('Choose 3 Rotors from I,II,III,IV,V (as you would put them in physically). ');
%ChosenRotors=input('Use the following format, "[I;II;III]"  ', 's');
ChosenRotors=[I;II;III];
R1=ChosenRotors(3,:);
R2=ChosenRotors(2,:);
R3=ChosenRotors(1,:);

%Input Reflector
%Refl=input('Choose reflector Bref or Cref   ');
Refl=Bref;

    %Plugboard aka Pb
%Pbc=input('Provide plugboard setting in the form of a 5x2 matrix (Cycle form): ');
Pbc=['QW';'ER';'TY';'UI';'OP']
%Pbc=[];
 
if ~isempty(Pbc)     
    Pbc=[Pbc;fliplr(Pbc)]       %Turn Pbc into a usable permutation
    i=0;
    while length(Pbc(:,1))<26 %Check all letters
        i=i+1;
        Letter = char(i-1+'A');
        PreCondition=repmat(Letter,length(Pbc(:,1)),2)==Pbc; %If the letter isn't in the table, put a 'cycle' of it at the bottom
        if sum(sum(PreCondition,1),2)<1
            Pbc=[Pbc;[Letter Letter]];
        end
    end
Pb=transpose(Pbc); %Table form
[Let Idx]=sort(Pb(1,:));
Pb=Pb(2,:);Pb=Pb(Idx); %Make it compact
else
    Pb=AllChars;    %Equivalent to no permutation fo future calculation
end

%3 Letter Key
%Key=input('Provide 3 letter Key as a string   ');
Key='NKU';

Message=input('Input Message as a string all caps no space/punctuation:  ', 's')
%Message = 'XPNQNHBF'

%START LOOP HERE
for i=1:length(Message);    %For each keypress, the fast rotor turns


%i=rstep1*26^2+rstep2*26+rstep3    
rstep3=mod(i,numChar);                       %Decompose i in base 26 (for alphabet)
rstep2=mod((i-rstep3)/numChar,numChar);
rstep1=(i-(rstep2*26+rstep3))/(numChar^2);
KeyModifier=[rstep1 rstep2 rstep3];

    
%Extract rotor settings from key
KeyNum=(double(Key)-64)+KeyModifier; 

KeyNum=KeyNum([3 2 1]); %AllSettings = [Fast Med Slow]


%Compute inter-rotor permutation
%For a value of r, the bottom row moves n to the left

%Between rotor input and fast rotor
r=KeyNum(1);
%mod([1:26]-(n+1),26)+1   does the shifting
Int1=AllChars(mod([1:numChar]-(r+1),numChar)+1);

%Between fast rotor and med rotor
r=KeyNum(2);
%mod([1:26]-(n+1),26)+1   does the shifting
Int2=Int1(mod([1:numChar]-(r+1),numChar)+1);

%Between med rotor and slow rotor
r=KeyNum(3);
%mod([1:26]-(n+1),26)+1   does the shifting
Int3=Int2(mod([1:numChar]-(r+1),numChar)+1);

%Between slow rotor and reflector
r=KeyNum(3);
%mod([1:26]-(n+1),26)+1   does the shifting
Int4=[AllChars(mod([1:numChar]-(r+1),numChar)+1);AllChars]; 
[Let Idx]=sort(Int4(1,:));
Int4=Int4(2,:);Int4=Int4(Idx);%Compactify


%Creating PI
Int1num=double(Int1)-64; %Converting all permutation into number form to use them as indices
Int2num=double(Int2)-64;
Int3num=double(Int3)-64;
Int4num=double(Int4)-64;
R1num=double(R1)-64;
R2num=double(R2)-64;
R3num=double(R3)-64;
Knum=double(K)-64;
Reflnum=double(Refl)-64;
Pbnum=double(Pb)-64;

PInum=Int4num(R3num(Int3num(R2num(Int2num(R1num(Int1num(Knum(Pbnum(1:26))))))))); 
%Matrix composition is done by rearranging tables correctly, which turns out pretty well here.


invPI=[PInum;1:26];
[Let Idx]=sort(PInum(1,:));
invPI=invPI(2,:);invPI=invPI(Idx); %Inverse of PI for conjugation

Final=invPI(Reflnum(PInum));


%find(Message(i)==AllChars) is the location of the letter
CipherLetter=char(Final(find(Message(i)==AllChars))+64);

CipherText=[CipherText CipherLetter]; %Add letter to the final string

end

CipherText


%% Check if Message is all caps no space
if sum(~(Message>=linspace(65,65,length(Message)) & Message<=linspace(90,90,length(Message))))~=0
    msgbox('Message must be all capital letters, no space or punctuation.','Use of invalid characters','error')
end




