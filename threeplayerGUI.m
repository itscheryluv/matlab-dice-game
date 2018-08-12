%   Academic Integrity Statement:
%  	We have not used source code obtained from
%  	any other unauthorized source, either modified
%   or unmodified.  Neither have we provided access
%   to our code to other teams. The project we are
%   submitting is our own original work.

function varargout = threeplayerGUI(varargin)
global playernames3

% THREEPLAYERGUI MATLAB code for threeplayerGUI.fig
%      THREEPLAYERGUI, by itself, creates a new THREEPLAYERGUI or raises the existing
%      singleton*.
%
%      H = THREEPLAYERGUI returns the handle to a new THREEPLAYERGUI or the handle to
%      the existing singleton*.
%
%      THREEPLAYERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THREEPLAYERGUI.M with the given input arguments.
%
%      THREEPLAYERGUI('Property','Value',...) creates a new THREEPLAYERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before threeplayerGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to threeplayerGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help threeplayerGUI

% Last Modified by GUIDE v2.5 02-Dec-2017 11:23:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @threeplayerGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @threeplayerGUI_OutputFcn, ...
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


% --- Executes just before threeplayerGUI is made visible.
function threeplayerGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to threeplayerGUI (see VARARGIN)

% Choose default command line output for threeplayerGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.howtoplaytext,'visible','off');
set(handles.howtoplaytext,'visible','off');
set(handles.isemptytext, 'visible', 'off');


% UIWAIT makes threeplayerGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = threeplayerGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5


% --- Executes on button press in howtoplay.
function howtoplay_Callback(hObject, eventdata, handles)
% hObject    handle to howtoplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of howtoplay
if get(hObject, 'Value') == 1
    set(handles.howtoplaytext,'visible','on')
else
    set(handles.howtoplaytext,'visible','off')
end 



function player1box_Callback(hObject, eventdata, handles)
% hObject    handle to player1box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of player1box as text
%        str2double(get(hObject,'String')) returns contents of player1box as a double
playeronename = get(hObject,'String');

% --- Executes during object creation, after setting all properties.
function player1box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to player1box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function player2box_Callback(hObject, eventdata, handles)
% hObject    handle to player2box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of player2box as text
%        str2double(get(hObject,'String')) returns contents of player2box as a double
playertwoname = get(hObject,'String');


% --- Executes during object creation, after setting all properties.
function player2box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to player2box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Initialize player names and show error message if fields are empty
global playernames3;

playeronename = get(handles.player1box,'String');
playertwoname = get(handles.player2box,'String');
playerthreename = get(handles.player3box,'String');
    
if isempty(playeronename)
    set(handles.isemptytext,'visible','on');
elseif isempty(playertwoname)
    set(handles.isemptytext,'visible','on')
elseif isempty(playerthreename)
    set(handles.isemptytext,'visible','on')
else
    playernames3.player1 = playeronename;
    playernames3.player2 = playertwoname;
    playernames3.player3 = playerthreename;
    
    close(threeplayerGUI);
    run('gameGUI(3)');
end


function player3box_Callback(hObject, eventdata, handles)
% hObject    handle to player3box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of player3box as text
%        str2double(get(hObject,'String')) returns contents of player3box as a double
playerthreename = get(hObject,'String');



% --- Executes during object creation, after setting all properties.
function player3box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to player3box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
