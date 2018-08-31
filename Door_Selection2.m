function varargout = Door_Selection2(varargin)
% DOOR_SELECTION2 MATLAB code for Door_Selection2.fig
%      DOOR_SELECTION2, by itself, creates a new DOOR_SELECTION2 or raises the existing
%      singleton*.
%
%      H = DOOR_SELECTION2 returns the handle to a new DOOR_SELECTION2 or the handle to
%      the existing singleton*.
%
%      DOOR_SELECTION2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOOR_SELECTION2.M with the given input arguments.
%
%      DOOR_SELECTION2('Property','Value',...) creates a new DOOR_SELECTION2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Door_Selection2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Door_Selection2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Door_Selection2

% Last Modified by GUIDE v2.5 01-Nov-2018 08:40:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Door_Selection2_OpeningFcn, ...
                   'gui_OutputFcn',  @Door_Selection2_OutputFcn, ...
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


% --- Executes just before Door_Selection2 is made visible.
function Door_Selection2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Door_Selection2 (see VARARGIN)

% Choose default command line output for Door_Selection2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Door_Selection2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Door_Selection2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in glass_checkbox.
function glass_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to glass_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of glass_checkbox


% --- Executes on button press in glass_confirm_selection.
function glass_confirm_selection_Callback(hObject, eventdata, handles)
% hObject    handle to glass_confirm_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in location_of_door1_NSWE.
function location_of_door1_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to location_of_door1_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns location_of_door1_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from location_of_door1_NSWE

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        GLFnorth = 0;
    case 'South'
        GLFsouth = 0;
    case 'West'
        GLFwest = 284;
    case 'East'
        GLFeast = 284;
end

% --- Executes during object creation, after setting all properties.
function location_of_door1_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to location_of_door1_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_glassdoor1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_glassdoor1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_glassdoor1_edit as text
%        str2double(get(hObject,'String')) returns contents of area_glassdoor1_edit as a double


% --- Executes during object creation, after setting all properties.
function area_glassdoor1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_glassdoor1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in location_of_door2_NSWE.
function location_of_door2_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to location_of_door2_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns location_of_door2_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from location_of_door2_NSWE

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        GLFnorth = 0;
    case 'South'
        GLFsouth = 0;
    case 'West'
        GLFwest = 284;
    case 'East'
        GLFeast = 284;
end

% --- Executes during object creation, after setting all properties.
function location_of_door2_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to location_of_door2_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_glassdoor2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_glassdoor2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_glassdoor2_edit as text
%        str2double(get(hObject,'String')) returns contents of area_glassdoor2_edit as a double


% --- Executes during object creation, after setting all properties.
function area_glassdoor2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_glassdoor2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in all_glassdoor_confirm_selection.
function all_glassdoor_confirm_selection_Callback(hObject, eventdata, handles)
% hObject    handle to all_glassdoor_confirm_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Area_WestGlassDoor = str2double(get(handles.area_glassdoor1_edit9,'String'));
% Area_EastGlassDoor = str2double(get(handles.area_glassdoor2_edit9,'String'));
% 
% GLFnorth = 0;
% GLFsouth = 0;
% GLFwest = str2double(get(handles.edit,'String'));
% GLFeast = str2double(get(handles.edit,'String'));
% 
% QWestGlassDoor = (Area_WestGlassDoor * GLFwest)/1000; % in kW
% QEastGlassDoor = (Area_EastGlassDoor * GLFeast)/1000; % in kW

Qdoor = QWestGlassDoor + QEastGlassDoor;

setappdata(0,'Qdoor', Qdoor);

% --- Executes on button press in pushbutton_next.
function pushbutton_next_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Infiltration_Occupants_Lighting_Appliances2

% --- Executes on button press in pushbutton_skip.
function pushbutton_skip_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Qdoor = 0
setappdata(0,'Qdoor', Qdoor);
Infiltration_Occupants_Lighting_Appliances2

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Window_Selection2


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ASHRAEtable3
ASHRAEtable4
