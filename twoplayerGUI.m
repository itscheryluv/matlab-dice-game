%   Academic Integrity Statement:
%  	We have not used source code obtained from
%  	any other unauthorized source, either modified
%   or unmodified.  Neither have we provided access
%   to our code to other teams. The project we are
%   submitting is our own original work.

function varargout = twoplayerGUI(varargin)
global playernames2


% TWOPLAYERGUI MATLAB code for twoplayerGUI.fig
%      TWOPLAYERGUI, by itself, creates a new TWOPLAYERGUI or raises the existing
%      singleton*.
%
%      H = TWOPLAYERGUI returns the handle to a new TWOPLAYERGUI or the handle to
%      the existing singleton*.
%
%      TWOPLAYERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TWOPLAYERGUI.M with the given input arguments.
%
%      TWOPLAYERGUI('Property','Value',...) creates a new TWOPLAYERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before twoplayerGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to twoplayerGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help twoplayerGUI

% Last Modified by GUIDE v2.5 02-Dec-2017 15:51:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @twoplayerGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @twoplayerGUI_OutputFcn, ...
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


% --- Executes just before twoplayerGUI is made visible.
function twoplayerGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to twoplayerGUI (see VARARGIN)

% Choose default command line output for twoplayerGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.howtoplaytext,'visible','off');
set(handles.howtoplaytext,'visible','off');
set(handles.isemptytext, 'visible', 'off');




% UIWAIT makes twoplayerGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = twoplayerGUI_OutputFcn(hObject, eventdata, handles) 
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
global playernames2;
playeronename = get(handles.player1box,'String');
playertwoname = get(handles.player2box,'String');
if isempty(playeronename)
    set(handles.isemptytext,'visible','on');
elseif isempty(playertwoname)
    set(handles.isemptytext,'visible','on')
else
    playernames2.player1 = playeronename;
    playernames2.player2 = playertwoname;
    
    close(twoplayerGUI);
    run('gameGUI(2)');
end

    
% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);
