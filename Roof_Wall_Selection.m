function varargout = Roof_Wall_Selection(varargin)
% ROOF_WALL_SELECTION MATLAB code for Roof_Wall_Selection.fig
%      ROOF_WALL_SELECTION, by itself, creates a new ROOF_WALL_SELECTION or raises the existing
%      singleton*.
%
%      H = ROOF_WALL_SELECTION returns the handle to a new ROOF_WALL_SELECTION or the handle to
%      the existing singleton*.
%
%      ROOF_WALL_SELECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROOF_WALL_SELECTION.M with the given input arguments.
%
%      ROOF_WALL_SELECTION('Property','Value',...) creates a new ROOF_WALL_SELECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Roof_Wall_Selection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Roof_Wall_Selection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Roof_Wall_Selection

% Last Modified by GUIDE v2.5 25-Oct-2018 10:00:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Roof_Wall_Selection_OpeningFcn, ...
                   'gui_OutputFcn',  @Roof_Wall_Selection_OutputFcn, ...
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


% --- Executes just before Roof_Wall_Selection is made visible.
function Roof_Wall_Selection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Roof_Wall_Selection (see VARARGIN)

% Choose default command line output for Roof_Wall_Selection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Roof_Wall_Selection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Roof_Wall_Selection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in metal_roof_checkbox.
function metal_roof_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to metal_roof_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of metal_roof_checkbox



% --- Executes on button press in roof_type_confirm.
function roof_type_confirm_Callback(hObject, eventdata, handles)
% hObject    handle to roof_type_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RoofArea = str2double(get(handles.roof_area_edit_text,'String'));
Uroof = 1.95; %Uroof in W/m^2K
CLTDroof = 23; %CLTD in K
Qroof = (Uroof * RoofArea * CLTDroof)/1000; %in kW

setappdata(0, 'Qroof', Qroof);


% --- Executes on selection change in menu_first_wall.
function menu_first_wall_Callback(hObject, eventdata, handles)
% hObject    handle to menu_first_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_first_wall contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_first_wall
str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwall = 1.36;
        CLTDnorthwall = 4;
    case 'South'
        Usouthwall = 1.36;
        CLTDsouthwall = 6;
    case 'West'
        Uwestwall = 1.36;
        CLTDwestwall = 10;
    case 'East'
        Ueastwall = 1.36;
        CLTDeastwall = 10;
end
    

% --- Executes during object creation, after setting all properties.
function menu_first_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_first_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in concrete_wall_checkbox.
function concrete_wall_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to concrete_wall_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of concrete_wall_checkbox


% --- Executes on button press in wall_type_confirm.
function wall_type_confirm_Callback(hObject, eventdata, handles)
% hObject    handle to wall_type_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Uwall = 1.36; % in W/m^2K


% --- Executes on selection change in menu_second_wall.
function menu_second_wall_Callback(hObject, eventdata, handles)
% hObject    handle to menu_second_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_second_wall contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_second_wall

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwall = 1.36;
        CLTDnorthwall = 4;
    case 'South'
        Usouthwall = 1.36;
        CLTDsouthwall = 6;
    case 'West'
        Uwestwall = 1.36;
        CLTDwestwall = 10;
    case 'East'
        Ueastwall = 1.36;
        CLTDeastwall = 10;
end

% --- Executes during object creation, after setting all properties.
function menu_second_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_second_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu_third_wall.
function menu_third_wall_Callback(hObject, eventdata, handles)
% hObject    handle to menu_third_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_third_wall contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_third_wall

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwall = 1.36;
        CLTDnorthwall = 4;
    case 'South'
        Usouthwall = 1.36;
        CLTDsouthwall = 6;
    case 'West'
        Uwestwall = 1.36;
        CLTDwestwall = 10;
    case 'East'
        Ueastwall = 1.36;
        CLTDeastwall = 10;
end

% --- Executes during object creation, after setting all properties.
function menu_third_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_third_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu_fourth_wall.
function menu_fourth_wall_Callback(hObject, eventdata, handles)
% hObject    handle to menu_fourth_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu_fourth_wall contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu_fourth_wall

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwall = 1.36;
        CLTDnorthwall = 4;
    case 'South'
        Usouthwall = 1.36;
        CLTDsouthwall = 6;
    case 'West'
        Uwestwall = 1.36;
        CLTDwestwall = 10;
    case 'East'
        Ueastwall = 1.36;
        CLTDeastwall = 10;
end


% --- Executes during object creation, after setting all properties.
function menu_fourth_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu_fourth_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_first_wall_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_first_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_first_wall_edit as text
%        str2double(get(hObject,'String')) returns contents of area_first_wall_edit as a double



% --- Executes during object creation, after setting all properties.
function area_first_wall_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_first_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_second_wall_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_second_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_second_wall_edit as text
%        str2double(get(hObject,'String')) returns contents of area_second_wall_edit as a double


% --- Executes during object creation, after setting all properties.
function area_second_wall_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_second_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_third_wall_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_third_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_third_wall_edit as text
%        str2double(get(hObject,'String')) returns contents of area_third_wall_edit as a double


% --- Executes during object creation, after setting all properties.
function area_third_wall_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_third_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_fourth_wall_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_fourth_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_fourth_wall_edit as text
%        str2double(get(hObject,'String')) returns contents of area_fourth_wall_edit as a double


% --- Executes during object creation, after setting all properties.
function area_fourth_wall_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_fourth_wall_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in all_walls_confirm_selection.
function all_walls_confirm_selection_Callback(hObject, eventdata, handles)
% hObject    handle to all_walls_confirm_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get the values for user inputs of wall
Area_NorthWall = str2double(get(handles.area_first_wall_edit,'String'));
Area_SouthWall = str2double(get(handles.area_second_wall_edit,'String'));
Area_WestWall = str2double(get(handles.area_third_wall_edit,'String'));
Area_EastWall = str2double(get(handles.area_fourth_wall_edit,'String'));

Unorthwall = 1.36;
CLTDnorthwall = 4;
Usouthwall = 1.36;
CLTDsouthwall = 6;
Uwestwall = 1.36;
CLTDwestwall = 10;
Ueastwall = 1.36;
CLTDeastwall = 10;

% Calculate for all walls
QNorthWall = (Unorthwall * Area_NorthWall * CLTDnorthwall)/1000; % in kW
QSouthWall = (Usouthwall * Area_SouthWall * CLTDsouthwall)/1000; % in kW
QWestWall = (Uwestwall * Area_WestWall * CLTDwestwall)/1000; % in kW
QEastWall = (Ueastwall * Area_EastWall * CLTDeastwall)/1000; % in kW

Qwall = QNorthWall + QSouthWall + QWestWall + QEastWall;


setappdata(0, 'Qwall', Qwall);

function roof_area_edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to roof_area_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roof_area_edit_text as text
%        str2double(get(hObject,'String')) returns contents of roof_area_edit_text as a double


% --- Executes during object creation, after setting all properties.
function roof_area_edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roof_area_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_next.
function pushbutton_next_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Window_Selection

% --- Executes on button press in pushbutton_skip.
function pushbutton_skip_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Window_Selection

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Input_Data
