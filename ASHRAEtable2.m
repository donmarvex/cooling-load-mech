function varargout = ASHRAEtable2(varargin)
% ASHRAETABLE2 MATLAB code for ASHRAEtable2.fig
%      ASHRAETABLE2, by itself, creates a new ASHRAETABLE2 or raises the existing
%      singleton*.
%
%      H = ASHRAETABLE2 returns the handle to a new ASHRAETABLE2 or the handle to
%      the existing singleton*.
%
%      ASHRAETABLE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASHRAETABLE2.M with the given input arguments.
%
%      ASHRAETABLE2('Property','Value',...) creates a new ASHRAETABLE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ASHRAEtable2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ASHRAEtable2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ASHRAEtable2

% Last Modified by GUIDE v2.5 01-Nov-2018 06:54:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ASHRAEtable2_OpeningFcn, ...
                   'gui_OutputFcn',  @ASHRAEtable2_OutputFcn, ...
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


% --- Executes just before ASHRAEtable2 is made visible.
function ASHRAEtable2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ASHRAEtable2 (see VARARGIN)

% Choose default command line output for ASHRAEtable2
handles.output = hObject;

I = imread('ASHRAEtable2.png');
axes(handles.axes1);
imshow(I);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ASHRAEtable2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ASHRAEtable2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
