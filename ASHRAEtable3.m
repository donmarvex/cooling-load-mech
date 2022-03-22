function varargout = ASHRAEtable3(varargin)
% ASHRAETABLE3 MATLAB code for ASHRAEtable3.fig
%      ASHRAETABLE3, by itself, creates a new ASHRAETABLE3 or raises the existing
%      singleton*.
%
%      H = ASHRAETABLE3 returns the handle to a new ASHRAETABLE3 or the handle to
%      the existing singleton*.
%
%      ASHRAETABLE3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASHRAETABLE3.M with the given input arguments.
%
%      ASHRAETABLE3('Property','Value',...) creates a new ASHRAETABLE3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ASHRAEtable3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ASHRAEtable3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ASHRAEtable3

% Last Modified by GUIDE v2.5 01-Nov-2018 08:01:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ASHRAEtable3_OpeningFcn, ...
                   'gui_OutputFcn',  @ASHRAEtable3_OutputFcn, ...
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


% --- Executes just before ASHRAEtable3 is made visible.
function ASHRAEtable3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ASHRAEtable3 (see VARARGIN)

% Choose default command line output for ASHRAEtable3
handles.output = hObject;

I = imread('ASHRAEtable3.png');
axes(handles.axes1);
imshow(I);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ASHRAEtable3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ASHRAEtable3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
