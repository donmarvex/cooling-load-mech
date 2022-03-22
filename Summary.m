function varargout = Summary(varargin)
% SUMMARY MATLAB code for Summary.fig
%      SUMMARY, by itself, creates a new SUMMARY or raises the existing
%      singleton*.
%
%      H = SUMMARY returns the handle to a new SUMMARY or the handle to
%      the existing singleton*.
%
%      SUMMARY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMMARY.M with the given input arguments.
%
%      SUMMARY('Property','Value',...) creates a new SUMMARY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Summary_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Summary_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Summary

% Last Modified by GUIDE v2.5 25-Oct-2018 14:08:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Summary_OpeningFcn, ...
                   'gui_OutputFcn',  @Summary_OutputFcn, ...
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


% --- Executes just before Summary is made visible.
function Summary_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Summary (see VARARGIN)

% Choose default command line output for Summary
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Summary wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Summary_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function display_roof_Callback(hObject, eventdata, handles)
% hObject    handle to display_roof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_roof as text
%        str2double(get(hObject,'String')) returns contents of display_roof as a double


% --- Executes during object creation, after setting all properties.
function display_roof_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_roof (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_wall_Callback(hObject, eventdata, handles)
% hObject    handle to display_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_wall as text
%        str2double(get(hObject,'String')) returns contents of display_wall as a double


% --- Executes during object creation, after setting all properties.
function display_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_window_Callback(hObject, eventdata, handles)
% hObject    handle to display_window (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_window as text
%        str2double(get(hObject,'String')) returns contents of display_window as a double


% --- Executes during object creation, after setting all properties.
function display_window_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_window (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_door_Callback(hObject, eventdata, handles)
% hObject    handle to display_door (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_door as text
%        str2double(get(hObject,'String')) returns contents of display_door as a double


% --- Executes during object creation, after setting all properties.
function display_door_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_door (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_infiltration_Callback(hObject, eventdata, handles)
% hObject    handle to display_infiltration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_infiltration as text
%        str2double(get(hObject,'String')) returns contents of display_infiltration as a double


% --- Executes during object creation, after setting all properties.
function display_infiltration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_infiltration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_occupants_Callback(hObject, eventdata, handles)
% hObject    handle to display_occupants (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_occupants as text
%        str2double(get(hObject,'String')) returns contents of display_occupants as a double


% --- Executes during object creation, after setting all properties.
function display_occupants_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_occupants (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_lighting_Callback(hObject, eventdata, handles)
% hObject    handle to display_lighting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_lighting as text
%        str2double(get(hObject,'String')) returns contents of display_lighting as a double


% --- Executes during object creation, after setting all properties.
function display_lighting_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_lighting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_appliances_Callback(hObject, eventdata, handles)
% hObject    handle to display_appliances (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_appliances as text
%        str2double(get(hObject,'String')) returns contents of display_appliances as a double


% --- Executes during object creation, after setting all properties.
function display_appliances_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_appliances (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_total_Callback(hObject, eventdata, handles)
% hObject    handle to display_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_total as text
%        str2double(get(hObject,'String')) returns contents of display_total as a double


% --- Executes during object creation, after setting all properties.
function display_total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_exit.
function pushbutton_exit_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Infiltration_Occupants_Lighting_Appliances

% --- Executes on button press in click_summary.
function click_summary_Callback(hObject, eventdata, handles)
% hObject    handle to click_summary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Qroof = getappdata(0, 'Qroof');
Qroof1 = num2str(Qroof);

Qwall = getappdata(0, 'Qwall');
Qwall1 = num2str(Qwall);

Qwindow = getappdata(0,'Qwindow');
Qwindow1 = num2str(Qwindow);

Qdoor = getappdata(0,'Qdoor');
Qdoor1 = num2str(Qdoor);

Qinfiltration = getappdata(0, 'Qinfiltration');
Qinfiltration1 = num2str(Qinfiltration);

Qoccupants = getappdata(0, 'Qoccupants');
Qoccupants1 = num2str(Qoccupants);

Qlighting = getappdata(0, 'Qlighting');
Qlighting1 = num2str(Qlighting);

Qappliances = getappdata(0, 'Qappliances');
Qappliances1 = num2str(Qappliances);

Qtotal = Qroof + Qwall + Qwindow + Qdoor + Qinfiltration + Qoccupants + Qlighting + Qappliances;

set(handles.display_roof,'String',Qroof1);
set(handles.display_wall,'String',Qwall1);
set(handles.display_window,'String',Qwindow1);
set(handles.display_door,'String',Qdoor1);
set(handles.display_infiltration,'String',Qinfiltration1);
set(handles.display_occupants,'String',Qoccupants1);
set(handles.display_lighting,'String',Qlighting1);
set(handles.display_appliances,'String',Qappliances1);
set(handles.display_total,'String',Qtotal);
