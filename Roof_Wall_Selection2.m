function varargout = Roof_Wall_Selection2(varargin)
% ROOF_WALL_SELECTION2 MATLAB code for Roof_Wall_Selection2.fig
%      ROOF_WALL_SELECTION2, by itself, creates a new ROOF_WALL_SELECTION2 or raises the existing
%      singleton*.
%
%      H = ROOF_WALL_SELECTION2 returns the handle to a new ROOF_WALL_SELECTION2 or the handle to
%      the existing singleton*.
%
%      ROOF_WALL_SELECTION2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROOF_WALL_SELECTION2.M with the given input arguments.
%
%      ROOF_WALL_SELECTION2('Property','Value',...) creates a new ROOF_WALL_SELECTION2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Roof_Wall_Selection2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Roof_Wall_Selection2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Roof_Wall_Selection2

% Last Modified by GUIDE v2.5 01-Nov-2018 08:24:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Roof_Wall_Selection2_OpeningFcn, ...
                   'gui_OutputFcn',  @Roof_Wall_Selection2_OutputFcn, ...
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


% --- Executes just before Roof_Wall_Selection2 is made visible.
function Roof_Wall_Selection2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Roof_Wall_Selection2 (see VARARGIN)

% Choose default command line output for Roof_Wall_Selection2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Roof_Wall_Selection2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Roof_Wall_Selection2_OutputFcn(hObject, eventdata, handles) 
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
Uroof = str2double(get(handles.edit9,'String')); %Uroof in W/m^2K
CLTDroof = str2double(get(handles.edit10,'String')); %CLTD in K
Qroof = (Uroof * RoofArea * CLTDroof)/1000 %in kW

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
Uwall = str2double(get(handles.edit11,'String')); % in W/m^2K
CLTDwall = str2double(get(handles.edit11,'String')); % in W/m^2K

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

set(handles.area_second_wall_edit,'String','0');
set(handles.area_third_wall_edit,'String','0');
set(handles.area_fourth_wall_edit,'String','0');

Area_SouthWall = str2double(get(handles.area_second_wall_edit,'String'));
Area_WestWall = str2double(get(handles.area_third_wall_edit,'String'));
Area_EastWall = str2double(get(handles.area_fourth_wall_edit,'String'));


Unorthwall = str2double(get(handles.edit11,'String'));
CLTDnorthwall = str2double(get(handles.edit12,'String'));

% Usouthwall = str2double(get(handles.edit11,'String'));
% CLTDsouthwall = str2double(get(handles.edit12,'String'));
% Uwestwall = str2double(get(handles.edit11,'String'));
% CLTDwestwall = str2double(get(handles.edit12,'String'));
% Ueastwall = str2double(get(handles.edit11,'String'));
% CLTDeastwall = str2double(get(handles.edit12,'String'));

% Calculate for all walls
QNorthWall = (Unorthwall * Area_NorthWall * CLTDnorthwall)/1000; % in kW
% QSouthWall = (Usouthwall * Area_SouthWall * CLTDsouthwall)/1000; % in kW
% QWestWall = (Uwestwall * Area_WestWall * CLTDwestwall)/1000; % in kW
% QEastWall = (Ueastwall * Area_EastWall * CLTDeastwall)/1000; % in kW

Qwall = QNorthWall

%  + QSouthWall + QWestWall + QEastWall;


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
Window_Selection2

% --- Executes on button press in pushbutton_skip.
function pushbutton_skip_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Window_Selection2

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Input_Data


% --- Executes on selection change in roof_type_menu.
function roof_type_menu_Callback(hObject, eventdata, handles)
% hObject    handle to roof_type_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns roof_type_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from roof_type_menu


% --- Executes during object creation, after setting all properties.
function roof_type_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roof_type_menu (see GCBO)
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



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ashrae_table_load.
function ashrae_table_load_Callback(hObject, eventdata, handles)
% hObject    handle to ashrae_table_load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ASHRAEtable1
ASHRAEtable2


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
