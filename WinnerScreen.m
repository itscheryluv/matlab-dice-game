%   Academic Integrity Statement:
%  	We have not used source code obtained from
%  	any other unauthorized source, either modified
%   or unmodified.  Neither have we provided access
%   to our code to other teams. The project we are
%   submitting is our own original work.

function varargout = WinnerScreen(varargin)

% WINNERSCREEN MATLAB code for WinnerScreen.fig
%      WINNERSCREEN, by itself, creates a new WINNERSCREEN or raises the existing
%      singleton*.
%
%      H = WINNERSCREEN returns the handle to a new WINNERSCREEN or the handle to
%      the existing singleton*.
%
%      WINNERSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WINNERSCREEN.M with the given input arguments.
%
%      WINNERSCREEN('Property','Value',...) creates a new WINNERSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WinnerScreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WinnerScreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WinnerScreen

% Last Modified by GUIDE v2.5 03-Dec-2017 11:33:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WinnerScreen_OpeningFcn, ...
                   'gui_OutputFcn',  @WinnerScreen_OutputFcn, ...
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


% --- Executes just before WinnerScreen is made visible.
function WinnerScreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WinnerScreen (see VARARGIN)

global winnerName;
global winnerScore;

% Choose default command line output for WinnerScreen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.winnername, 'String', winnerName);
set(handles.chipcount, 'String', winnerScore);




% UIWAIT makes WinnerScreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WinnerScreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in playagain.
function playagain_Callback(hObject, eventdata, handles)
% hObject    handle to playagain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(WinnerScreen);
run('openingGUI');
% Hint: get(hObject,'Value') returns toggle state of playagain


% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(WinnerScreen);
% Hint: get(hObject,'Value') returns toggle state of quit
