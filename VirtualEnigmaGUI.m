function varargout = VirtualEnigmaGUI(varargin)
% VIRTUALENIGMAGUI MATLAB code for VirtualEnigmaGUI.fig
%      VIRTUALENIGMAGUI, by itself, creates a new VIRTUALENIGMAGUI or raises the existing
%      singleton*.
%
%      H = VIRTUALENIGMAGUI returns the handle to a new VIRTUALENIGMAGUI or the handle to
%      the existing singleton*.
%
%      VIRTUALENIGMAGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIRTUALENIGMAGUI.M with the given input arguments.
%
%      VIRTUALENIGMAGUI('Property','Value',...) creates a new VIRTUALENIGMAGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VirtualEnigmaGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VirtualEnigmaGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VirtualEnigmaGUI

% Last Modified by GUIDE v2.5 10-Jan-2016 16:53:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VirtualEnigmaGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @VirtualEnigmaGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before VirtualEnigmaGUI is made visible.
function VirtualEnigmaGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VirtualEnigmaGUI (see VARARGIN)

% Choose default command line output for VirtualEnigmaGUI
handles.output = hObject;

% Set default values

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VirtualEnigmaGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VirtualEnigmaGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Rotor1in_Callback(hObject, eventdata, handles)
switch get(hObject,'String')  %Define the fast rotor
    case 'I'
        R3=['EKMFLGDQVZNTOWYHXUSPAIBRCJ'];
    case 'II'
        R3=['AJDKSIRUXBLHWTMCQGZNPYFVOE'];
    case 'III'
        R3=['BDFHJLCPRTXVZNYEIWGAKMUSQO'];
    case 'IV'
        R3=['ESOVPZJAYQUIRHXLNFTGKDCMWB'];
    case 'V'
        R3=['VZBRGITYUPSDNHLXAWMJQOFECK'];
    otherwise
        msgbox('Rotor does not exist','Error','error')
end

handles.R3=R3;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface
% hObject    handle to Rotor1in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rotor1in as text
%        str2double(get(hObject,'String')) returns contents of Rotor1in as a double


% --- Executes during object creation, after setting all properties.
function Rotor1in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rotor1in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pb1in_Callback(hObject, eventdata, handles)
Pb1=get(hObject,'String');

handles.Pb1=Pb1;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface

if ~(length(Pb1)==2 || isempty(Pb1))
    msgbox('Input must be two letters, or none.','Invalid Number of Letters','error')
end
% hObject    handle to Pb1in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pb1in as text
%        str2double(get(hObject,'String')) returns contents of Pb1in as a double


% --- Executes during object creation, after setting all properties.
function Pb1in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pb1in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pb2in_Callback(hObject, eventdata, handles)
Pb2=get(hObject,'String');

handles.Pb2=Pb2;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface

if ~(length(Pb2)==2 || isempty(Pb2))
    msgbox('Input must be two letters, or none.','Invalid Number of Letters','error')
end
% hObject    handle to Pb2in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pb2in as text
%        str2double(get(hObject,'String')) returns contents of Pb2in as a double


% --- Executes during object creation, after setting all properties.
function Pb2in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pb2in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pb3in_Callback(hObject, eventdata, handles)
Pb3=get(hObject,'String');

handles.Pb3=Pb3;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface

if ~(length(Pb3)==2 || isempty(Pb3))
    msgbox('Input must be two letters, or none.','Invalid Number of Letters','error')
end
% hObject    handle to Pb3in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pb3in as text
%        str2double(get(hObject,'String')) returns contents of Pb3in as a double


% --- Executes during object creation, after setting all properties.
function Pb3in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pb3in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pb4in_Callback(hObject, eventdata, handles)
Pb4=get(hObject,'String');

handles.Pb4=Pb4;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface

if ~(length(Pb4)==2 || isempty(Pb4))
    msgbox('Input must be two letters, or none.','Invalid Number of Letters','error')
end
% hObject    handle to Pb4in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pb4in as text
%        str2double(get(hObject,'String')) returns contents of Pb4in as a double


% --- Executes during object creation, after setting all properties.
function Pb4in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pb4in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pb5in_Callback(hObject, eventdata, handles)
Pb5=get(hObject,'String');

handles.Pb5=Pb5;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface

if ~(length(Pb5)==2 || isempty(Pb5))
    msgbox('Input must be two letters, or none.','Invalid Number of Letters','error')
end
% hObject    handle to Pb5in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pb5in as text
%        str2double(get(hObject,'String')) returns contents of Pb5in as a double


% --- Executes during object creation, after setting all properties.
function Pb5in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pb5in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rotor2in_Callback(hObject, eventdata, handles)
switch get(hObject,'String')  %Define medium rotor
    case 'I'
        R2=['EKMFLGDQVZNTOWYHXUSPAIBRCJ'];
    case 'II'
        R2=['AJDKSIRUXBLHWTMCQGZNPYFVOE'];
    case 'III'
        R2=['BDFHJLCPRTXVZNYEIWGAKMUSQO'];
    case 'IV'
        R2=['ESOVPZJAYQUIRHXLNFTGKDCMWB'];
    case 'V'
        R2=['VZBRGITYUPSDNHLXAWMJQOFECK'];
    otherwise
        msgbox('Rotor does not exist','Error','error')
end

handles.R2=R2;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface
% hObject    handle to Rotor2in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rotor2in as text
%        str2double(get(hObject,'String')) returns contents of Rotor2in as a double


% --- Executes during object creation, after setting all properties.
function Rotor2in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rotor2in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rotor3in_Callback(hObject, eventdata, handles)
switch get(hObject,'String')  %Define slow rotor
    case 'I'
        R1=['EKMFLGDQVZNTOWYHXUSPAIBRCJ'];
    case 'II'
        R1=['AJDKSIRUXBLHWTMCQGZNPYFVOE'];
    case 'III'
        R1=['BDFHJLCPRTXVZNYEIWGAKMUSQO'];
    case 'IV'
        R1=['ESOVPZJAYQUIRHXLNFTGKDCMWB'];
    case 'V'
        R1=['VZBRGITYUPSDNHLXAWMJQOFECK'];
    otherwise
        msgbox('Rotor does not exist','Error','error')
end
handles.R1=R1;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface
% hObject    handle to Rotor3in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rotor3in as text
%        str2double(get(hObject,'String')) returns contents of Rotor3in as a double


% --- Executes during object creation, after setting all properties.
function Rotor3in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rotor3in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Keyin_Callback(hObject, eventdata, handles)
Key=get(hObject,'String');
if (length(Key)~=3)
    msgbox('Input must be three letters.','Invalid Number of Letters','error')
end

handles.Key=Key;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface
% hObject    handle to Keyin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Keyin as text
%        str2double(get(hObject,'String')) returns contents of Keyin as a double


% --- Executes during object creation, after setting all properties.
function Keyin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Keyin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Messagein_Callback(hObject, eventdata, handles)
Message=get(hObject,'String');

handles.Message=Message;    %Locally store the variable
guidata(handles.output,handles);    % Update the handles on the interface

% hObject    handle to Messagein (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Messagein as text
%        str2double(get(hObject,'String')) returns contents of Messagein as a double


% --- Executes during object creation, after setting all properties.
function Messagein_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Messagein (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in EncryptButton.
function EncryptButton_Callback(hObject, eventdata, handles)

handles=guidata(handles.output); %Update local handles 

AllChars=['ABCDEFGHIJKLMNOPQRSTUVWXYZ']; %Character set
numChar=length(AllChars);
CipherText=[];
K=['JWULCMNOHPQZYXIRADKEGVBTSF'];



Bref=['YRUHQSLDPXNGOKMIEBFZCWVJAT'];
Cref=['FVPJIAOYEDRZXWGCTKUQSBNMHL'];

h=get(handles.ReflectorPanel,'SelectedObject');
switch get(h,'Tag') % Get Tag of selected object from the ReflectorPanel
    case 'BrefButton'
        %Bref is selected.
        Refl=Bref;
    case 'CrefButton'
        %Bref is selected.
        Refl=Cref;
end

% Now after updating, all the variable are available

if isfield(handles,'Pb1') %Check wether the Pb1 handle exist aka if there's any plugboard input
    Pb1=handles.Pb1;
else                      %if not, then there is no permutation assigned
    Pb1=[];
end

if isfield(handles,'Pb2')  % Same
    Pb2=handles.Pb2;
else
    Pb2=[]; 
end

if isfield(handles,'Pb3')
    Pb3=handles.Pb3;
else
    Pb3=[];
end

if isfield(handles,'Pb4')
    Pb4=handles.Pb4;
else
    Pb4=[];
end

if isfield(handles,'Pb5')
    Pb5=handles.Pb5;
else
    Pb5=[];
end

%Checking if all inputs are in
if isfield(handles,'R1') & isfield(handles,'R2') & isfield(handles,'R3') & isfield(handles,'Key') & isfield(handles,'Message')
    R1=handles.R1;
    R2=handles.R2;
    R3=handles.R3;
    Key=handles.Key;
    Message=handles.Message;
    disp('Alright So far?')
else
    msgbox('You must provide an input for all  rotors, the key and the message.','Input Error','error')
end

% Convert message to capital letters
[Message, lcLogical] = Capitalize(Message);    % Keeping track of the logical vector as well to print the ciphertext

% At last, we can get jiggy with the math

Pbc=[Pb1;Pb2;Pb3;Pb4;Pb5];       %Prepare Plugboard Permutation
if ~isempty(Pbc)     
    Pbc=[Pbc;fliplr(Pbc)];       %Turn Pbc into a usable permutation
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

for i=1:length(Message);    %For each keypress, the fast rotor turns


%i=rstep1*26^2+rstep2*26+rstep3    
rstep3=mod(i,numChar);                       %Decompose i in base 26 (for alphabet)
rstep2=mod((i-rstep3)/numChar,numChar);
rstep1=(i-(rstep2*26+rstep3))/(numChar^2);
KeyModifier=[rstep1 rstep2 rstep3];          %Additional rotation based on key press

    
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

CipherText(lcLogical) = CipherText(lcLogical) +32; % Make the original lowercase letters lowercase again.

if length(CipherText)<=78
    set(handles.CipherOut,'String',CipherText)
else
    set(handles.CipherOut,'String',CipherText)
    msgbox(CipherText,'Cipher text')
end

% hObject    handle to EncryptButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CrefButton.
function CrefButton_Callback(hObject, eventdata, handles)

% hObject    handle to CrefButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CrefButton


% --- Executes on button press in OpenWindow.
function OpenWindow_Callback(hObject, eventdata, handles)

% hObject    handle to OpenWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%I'm too scared to delete this, guide tends to corrupt files when you
%do that.
%The idea was to have the text pop up in a window to copy-paste it, but
%there were huge, unexplainable bugs with setting CipherOut as a handle. 

% handles=guidata(handles.output); %Update local handles 
% 
% if isfield(handles,'CipherOut')
%     CipherText=handles.CipherOut
%     msgbox(CipherText,'Cipher text')
% else
%     msgbox('You must first encrypt the message.','Error','error')
% end

function [capText, lcLogical] = Capitalize(theMessage)
% Returns 

% Find lowercaps and capitalize
lowercapsLogical = theMessage >= 97 & theMessage <= 122;
theMessage(lowercapsLogical) = theMessage(lowercapsLogical)-32; % Capitalize

% Find non capitalized characters (ie: all characters since we just made
% the transformation)
deletedcharLogical = theMessage < 65 | theMessage > 90;
theMessage(deletedcharLogical) = [];
lowercapsLogical(deletedcharLogical) = [];

capText = theMessage;
lcLogical = lowercapsLogical;

