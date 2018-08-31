function varargout = Input_Data(varargin)
% INPUT_DATA MATLAB code for Input_Data.fig
%      INPUT_DATA, by itself, creates a new INPUT_DATA or raises the existing
%      singleton*.
%
%      H = INPUT_DATA returns the handle to a new INPUT_DATA or the handle to
%      the existing singleton*.
%
%      INPUT_DATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPUT_DATA.M with the given input arguments.
%
%      INPUT_DATA('Property','Value',...) creates a new INPUT_DATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Input_Data_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Input_Data_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Input_Data

% Last Modified by GUIDE v2.5 24-Oct-2018 12:52:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Input_Data_OpeningFcn, ...
                   'gui_OutputFcn',  @Input_Data_OutputFcn, ...
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


% --- Executes just before Input_Data is made visible.
function Input_Data_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Input_Data (see VARARGIN)

% Choose default command line output for Input_Data
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Input_Data wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Input_Data_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function room_temp_edit_Callback(hObject, eventdata, handles)
% hObject    handle to room_temp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of room_temp_edit as text
%        str2double(get(hObject,'String')) returns contents of room_temp_edit as a double

% --- Executes during object creation, after setting all properties.
function room_temp_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to room_temp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function length_of_space_edit_Callback(hObject, eventdata, handles)
% hObject    handle to length_of_space_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of length_of_space_edit as text
%        str2double(get(hObject,'String')) returns contents of length_of_space_edit as a double


% --- Executes during object creation, after setting all properties.
function length_of_space_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to length_of_space_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function width_of_space_edit_Callback(hObject, eventdata, handles)
% hObject    handle to width_of_space_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of width_of_space_edit as text
%        str2double(get(hObject,'String')) returns contents of width_of_space_edit as a double


% --- Executes during object creation, after setting all properties.
function width_of_space_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to width_of_space_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_of_space_edit_Callback(hObject, eventdata, handles)
% hObject    handle to height_of_space_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of height_of_space_edit as text
%        str2double(get(hObject,'String')) returns contents of height_of_space_edit as a double


% --- Executes during object creation, after setting all properties.
function height_of_space_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height_of_space_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in next_inputdata.
function next_inputdata_Callback(hObject, eventdata, handles)
% hObject    handle to next_inputdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
roomtemperature = str2double(get(handles.room_temp_edit,'String'));
outdoortemperature = str2double(get(handles.outdoor_temp_edit,'String'));
dailytemperaturerange = str2double(get(handles.daily_temp_range_edit,'String'));
relativehumidity = str2double(get(handles.relative_humidity_edit,'String'));
lengthofspace = str2double(get(handles.length_of_space_edit,'String'));
widthofspace = str2double(get(handles.width_of_space_edit,'String'));
heightofspace = str2double(get(handles.height_of_space_edit,'String'));

% store application data
setappdata(0, 'roomtemperature', roomtemperature);
setappdata(0, 'outdoortemperature', outdoortemperature);
Roof_Wall_Selection2

% --- Executes on button press in reset_inputdata.
function reset_inputdata_Callback(hObject, eventdata, handles)
% hObject    handle to reset_inputdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.room_temp_edit,'String','');
set(handles.outdoor_temp_edit,'String','');
set(handles.daily_temp_range_edit,'String','');
set(handles.relative_humidity_edit,'String','');
set(handles.length_of_space_edit,'String','');
set(handles.width_of_space_edit,'String','');
set(handles.height_of_space_edit,'String','');


function outdoor_temp_edit_Callback(hObject, eventdata, handles)
% hObject    handle to outdoor_temp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outdoor_temp_edit as text
%        str2double(get(hObject,'String')) returns contents of outdoor_temp_edit as a double


% --- Executes during object creation, after setting all properties.
function outdoor_temp_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outdoor_temp_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function daily_temp_range_edit_Callback(hObject, eventdata, handles)
% hObject    handle to daily_temp_range_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of daily_temp_range_edit as text
%        str2double(get(hObject,'String')) returns contents of daily_temp_range_edit as a double


% --- Executes during object creation, after setting all properties.
function daily_temp_range_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to daily_temp_range_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function relative_humidity_edit_Callback(hObject, eventdata, handles)
% hObject    handle to relative_humidity_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of relative_humidity_edit as text
%        str2double(get(hObject,'String')) returns contents of relative_humidity_edit as a double


% --- Executes during object creation, after setting all properties.
function relative_humidity_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to relative_humidity_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function room_volume_edit_Callback(hObject, eventdata, handles)
% hObject    handle to room_volume_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of room_volume_edit as text
%        str2double(get(hObject,'String')) returns contents of room_volume_edit as a double


% --- Executes during object creation, after setting all properties.
function room_volume_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to room_volume_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over next_inputdata.
function next_inputdata_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to next_inputdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
