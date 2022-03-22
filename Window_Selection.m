function varargout = Window_Selection(varargin)
% WINDOW_SELECTION MATLAB code for Window_Selection.fig
%      WINDOW_SELECTION, by itself, creates a new WINDOW_SELECTION or raises the existing
%      singleton*.
%
%      H = WINDOW_SELECTION returns the handle to a new WINDOW_SELECTION or the handle to
%      the existing singleton*.
%
%      WINDOW_SELECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WINDOW_SELECTION.M with the given input arguments.
%
%      WINDOW_SELECTION('Property','Value',...) creates a new WINDOW_SELECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Window_Selection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Window_Selection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Window_Selection

% Last Modified by GUIDE v2.5 01-Nov-2018 07:46:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Window_Selection_OpeningFcn, ...
                   'gui_OutputFcn',  @Window_Selection_OutputFcn, ...
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


% --- Executes just before Window_Selection is made visible.
function Window_Selection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Window_Selection (see VARARGIN)

% Choose default command line output for Window_Selection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Window_Selection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Window_Selection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in glass_window1_NSWE.
function glass_window1_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to glass_window1_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns glass_window1_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from glass_window1_NSWE
str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        GLFnorth = 114;
    case 'South'
        GLFsouth = 173;
    case 'West'
        GLFwest = 0;
    case 'East'
        GLFeast = 0;
end

% --- Executes during object creation, after setting all properties.
function glass_window1_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to glass_window1_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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
Uglass = 6.9; % in W/m^2K

% --- Executes on selection change in glass_window2_NSWE.
function glass_window2_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to glass_window2_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns glass_window2_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from glass_window2_NSWE

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        GLFnorth = 114;
    case 'South'
        GLFsouth = 173;
    case 'West'
        GLFwest = 0;
    case 'East'
        GLFeast = 0;
end

% --- Executes during object creation, after setting all properties.
function glass_window2_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to glass_window2_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in glass_window3_NSWE.
function glass_window3_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to glass_window3_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns glass_window3_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from glass_window3_NSWE

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        GLFnorth = 114;
    case 'South'
        GLFsouth = 173;
    case 'West'
        GLFwest = 0;
    case 'East'
        GLFeast = 0;
end

% --- Executes during object creation, after setting all properties.
function glass_window3_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to glass_window3_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in glass_window4_NSWE.
function glass_window4_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to glass_window4_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns glass_window4_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from glass_window4_NSWE

str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        GLFnorth = 114;
    case 'South'
        GLFsouth = 173;
    case 'West'
        GLFwest = 0;
    case 'East'
        GLFeast = 0;
end

% --- Executes during object creation, after setting all properties.
function glass_window4_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to glass_window4_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_glasswindow1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_glasswindow1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_glasswindow1_edit as text
%        str2double(get(hObject,'String')) returns contents of area_glasswindow1_edit as a double


% --- Executes during object creation, after setting all properties.
function area_glasswindow1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_glasswindow1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_glasswindow2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_glasswindow2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_glasswindow2_edit as text
%        str2double(get(hObject,'String')) returns contents of area_glasswindow2_edit as a double


% --- Executes during object creation, after setting all properties.
function area_glasswindow2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_glasswindow2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_glasswindow3_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_glasswindow3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_glasswindow3_edit as text
%        str2double(get(hObject,'String')) returns contents of area_glasswindow3_edit as a double


% --- Executes during object creation, after setting all properties.
function area_glasswindow3_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_glasswindow3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_glasswindow4_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_glasswindow4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_glasswindow4_edit as text
%        str2double(get(hObject,'String')) returns contents of area_glasswindow4_edit as a double


% --- Executes during object creation, after setting all properties.
function area_glasswindow4_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_glasswindow4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in all_glass_confirm_selection.
function all_glass_confirm_selection_Callback(hObject, eventdata, handles)
% hObject    handle to all_glass_confirm_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Area_NorthGlassWindow = str2double(get(handles.area_glasswindow1_edit,'String'));
Area_SouthGlassWindow = str2double(get(handles.area_glasswindow2_edit,'String'));

set(handles.area_glasswindow3_edit,'String','0');
set(handles.area_glasswindow4_edit,'String','0');

Area_WestGlassWindow = str2double(get(handles.area_glasswindow3_edit,'String'));
Area_EastGlassWindow = str2double(get(handles.area_glasswindow4_edit,'String'));

GLFnorth = str2double(get(handles.edit17,'String'));
GLFsouth = str2double(get(handles.edit19,'String'));
GLFwest = 0;
GLFeast = 0;

QNorthGlassWindow = (Area_NorthGlassWindow * GLFnorth)/1000 % in kW
QSouthGlassWindow = (Area_SouthGlassWindow * GLFsouth)/1000 % in kW
QWestGlassWindow = (Area_WestGlassWindow * GLFwest)/1000 % in kW
QEastGlassWindow = (Area_EastGlassWindow * GLFeast)/1000 % in kW

Qglass = QNorthGlassWindow + QSouthGlassWindow + QWestGlassWindow + QEastGlassWindow;


% --- Executes on selection change in wood_window1_NSWE.
function wood_window1_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to wood_window1_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wood_window1_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wood_window1_NSWE
str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwoodwindow = 0.051;
        CLTDnorthwoodwindow = 4;
    case 'South'
        Usouthwoodwindow = 0.051;
        CLTDsouthwoodwindow = 6;
    case 'West'
        Uwestwoodwindow = 0;
        CLTDwestwoodwindow = 0;
    case 'East'
        Ueastwoodwindow = 0;
        CLTDeastwoodwindow = 0;
end

% --- Executes during object creation, after setting all properties.
function wood_window1_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wood_window1_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in wood_checkbox.
function wood_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to wood_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of wood_checkbox


% --- Executes on button press in wood_confirm_selection.
function wood_confirm_selection_Callback(hObject, eventdata, handles)
% hObject    handle to wood_confirm_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in wood_window2_NSWE.
function wood_window2_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to wood_window2_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wood_window2_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wood_window2_NSWE
str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwoodwindow = 0.051;
        CLTDnorthwoodwindow = 4;
    case 'South'
        Usouthwoodwindow = 0.051;
        CLTDsouthwoodwindow = 6;
    case 'West'
        Uwestwoodwindow = 0;
        CLTDwestwoodwindow = 0;
    case 'East'
        Ueastwoodwindow = 0;
        CLTDeastwoodwindow = 0;
end

% --- Executes during object creation, after setting all properties.
function wood_window2_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wood_window2_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in wood_window3_NSWE.
function wood_window3_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to wood_window3_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wood_window3_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wood_window3_NSWE
str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwoodwindow = 0.051;
        CLTDnorthwoodwindow = 4;
    case 'South'
        Usouthwoodwindow = 0.051;
        CLTDsouthwoodwindow = 6;
    case 'West'
        Uwestwoodwindow = 0;
        CLTDwestwoodwindow = 0;
    case 'East'
        Ueastwoodwindow = 0;
        CLTDeastwoodwindow = 0;
end

% --- Executes during object creation, after setting all properties.
function wood_window3_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wood_window3_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in wood_window4_NSWE.
function wood_window4_NSWE_Callback(hObject, eventdata, handles)
% hObject    handle to wood_window4_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns wood_window4_NSWE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wood_window4_NSWE
str = get(hObject, 'String');
val = get(hObject,'Value');

switch str{val}
    case 'North'
        Unorthwoodwindow = 0.051;
        CLTDnorthwoodwindow = 4;
    case 'South'
        Usouthwoodwindow = 0.051;
        CLTDsouthwoodwindow = 6;
    case 'West'
        Uwestwoodwindow = 0;
        CLTDwestwoodwindow = 0;
    case 'East'
        Ueastwoodwindow = 0;
        CLTDeastwoodwindow = 0;
end

% --- Executes during object creation, after setting all properties.
function wood_window4_NSWE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wood_window4_NSWE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_woodwindow1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_woodwindow1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_woodwindow1_edit as text
%        str2double(get(hObject,'String')) returns contents of area_woodwindow1_edit as a double


% --- Executes during object creation, after setting all properties.
function area_woodwindow1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_woodwindow1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_woodwindow2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_woodwindow2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_woodwindow2_edit as text
%        str2double(get(hObject,'String')) returns contents of area_woodwindow2_edit as a double


% --- Executes during object creation, after setting all properties.
function area_woodwindow2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_woodwindow2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_woodwindow3_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_woodwindow3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_woodwindow3_edit as text
%        str2double(get(hObject,'String')) returns contents of area_woodwindow3_edit as a double


% --- Executes during object creation, after setting all properties.
function area_woodwindow3_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_woodwindow3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_woodwindow4_edit_Callback(hObject, eventdata, handles)
% hObject    handle to area_woodwindow4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area_woodwindow4_edit as text
%        str2double(get(hObject,'String')) returns contents of area_woodwindow4_edit as a double


% --- Executes during object creation, after setting all properties.
function area_woodwindow4_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area_woodwindow4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in all_wood_confirm_selection.
function all_wood_confirm_selection_Callback(hObject, eventdata, handles)
% hObject    handle to all_wood_confirm_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Area_NorthWoodWindow = str2double(get(handles.area_woodwindow1_edit,'String'));
Area_SouthWoodWindow = str2double(get(handles.area_woodwindow2_edit,'String'));

set(handles.area_woodwindow3_edit,'String','0');
set(handles.area_woodwindow4_edit,'String','0');
Area_WestWoodWindow = str2double(get(handles.area_woodwindow3_edit,'String'));
Area_EastWoodWindow = str2double(get(handles.area_woodwindow4_edit,'String'));

Unorthwoodwindow = 0.051;
CLTDnorthwoodwindow = 4;
Usouthwoodwindow = 0.051;
CLTDsouthwoodwindow = 6;
Uwestwoodwindow = 0;
CLTDwestwoodwindow = 0;
Ueastwoodwindow = 0;
CLTDeastwoodwindow = 0;

QNorthWoodWindow = (Unorthwoodwindow * Area_NorthWoodWindow * CLTDnorthwoodwindow)/1000; % in kW
QSouthWoodWindow = (Usouthwoodwindow * Area_SouthWoodWindow * CLTDsouthwoodwindow)/1000; % in kW
QWestWoodWindow = (Uwestwoodwindow * Area_WestWoodWindow * CLTDwestwoodwindow)/1000; % in kW
QEastWoodWindow = (Ueastwoodwindow * Area_EastWoodWindow * CLTDeastwoodwindow)/1000; % in kW

Qwood = QNorthWoodWindow + QSouthWoodWindow + QWestWoodWindow + QEastWoodWindow;

Area_NorthGlassWindow = str2double(get(handles.area_glasswindow1_edit,'String'));
Area_SouthGlassWindow = str2double(get(handles.area_glasswindow2_edit,'String'));

set(handles.area_glasswindow3_edit,'String','0');
set(handles.area_glasswindow4_edit,'String','0');
Area_WestGlassWindow = str2double(get(handles.area_glasswindow3_edit,'String'));
Area_EastGlassWindow = str2double(get(handles.area_glasswindow4_edit,'String'));

GLFnorth = 114;
GLFsouth = 173;
GLFwest = 0;
GLFeast = 0;

QNorthGlassWindow = (Area_NorthGlassWindow * GLFnorth)/1000; % in kW
QSouthGlassWindow = (Area_SouthGlassWindow * GLFsouth)/1000; % in kW
QWestGlassWindow = (Area_WestGlassWindow * GLFwest)/1000; % in kW
QEastGlassWindow = (Area_EastGlassWindow * GLFeast)/1000; % in kW

Qglass = QNorthGlassWindow + QSouthGlassWindow + QWestGlassWindow + QEastGlassWindow;


Qwindow = Qwood + Qglass;

setappdata(0,'Qwindow',Qwindow);

% --- Executes on button press in pushbutton_next.
function pushbutton_next_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Door_Selection

% --- Executes on button press in pushbutton_skip.
function pushbutton_skip_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Door_Selection

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Roof_Wall_Selection


% --- Executes on selection change in popupmenu18.
function popupmenu18_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu18 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu18


% --- Executes during object creation, after setting all properties.
function popupmenu18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu17.
function popupmenu17_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu17 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu17


% --- Executes during object creation, after setting all properties.
function popupmenu17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
