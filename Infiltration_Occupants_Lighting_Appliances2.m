function varargout = Infiltration_Occupants_Lighting_Appliances2(varargin)
% INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2 MATLAB code for Infiltration_Occupants_Lighting_Appliances2.fig
%      INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2, by itself, creates a new INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2 or raises the existing
%      singleton*.
%
%      H = INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2 returns the handle to a new INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2 or the handle to
%      the existing singleton*.
%
%      INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2.M with the given input arguments.
%
%      INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2('Property','Value',...) creates a new INFILTRATION_OCCUPANTS_LIGHTING_APPLIANCES2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Infiltration_Occupants_Lighting_Appliances2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Infiltration_Occupants_Lighting_Appliances2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Infiltration_Occupants_Lighting_Appliances2

% Last Modified by GUIDE v2.5 01-Nov-2018 08:43:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Infiltration_Occupants_Lighting_Appliances2_OpeningFcn, ...
                   'gui_OutputFcn',  @Infiltration_Occupants_Lighting_Appliances2_OutputFcn, ...
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


% --- Executes just before Infiltration_Occupants_Lighting_Appliances2 is made visible.
function Infiltration_Occupants_Lighting_Appliances2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Infiltration_Occupants_Lighting_Appliances2 (see VARARGIN)

% Choose default command line output for Infiltration_Occupants_Lighting_Appliances2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Infiltration_Occupants_Lighting_Appliances2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Infiltration_Occupants_Lighting_Appliances2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function ACH_edit_Callback(hObject, eventdata, handles)
% hObject    handle to ACH_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ACH_edit as text
%        str2double(get(hObject,'String')) returns contents of ACH_edit as a double


% --- Executes during object creation, after setting all properties.
function ACH_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ACH_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no_of_persons_edit_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_persons_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_of_persons_edit as text
%        str2double(get(hObject,'String')) returns contents of no_of_persons_edit as a double


% --- Executes during object creation, after setting all properties.
function no_of_persons_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_persons_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rate_of_heat_production_edit_Callback(hObject, eventdata, handles)
% hObject    handle to rate_of_heat_production_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rate_of_heat_production_edit as text
%        str2double(get(hObject,'String')) returns contents of rate_of_heat_production_edit as a double


% --- Executes during object creation, after setting all properties.
function rate_of_heat_production_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rate_of_heat_production_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no_of_bulbs_edit_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_bulbs_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of no_of_bulbs_edit as text
%        str2double(get(hObject,'String')) returns contents of no_of_bulbs_edit as a double


% --- Executes during object creation, after setting all properties.
function no_of_bulbs_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_bulbs_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function capacity_edit_Callback(hObject, eventdata, handles)
% hObject    handle to capacity_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of capacity_edit as text
%        str2double(get(hObject,'String')) returns contents of capacity_edit as a double


% --- Executes during object creation, after setting all properties.
function capacity_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to capacity_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in laptop_checkbox.
function laptop_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to laptop_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of laptop_checkbox
boxstatus = get(hObject, 'Value');

if boxstatus == 1
   powerinput = 65;
   diversity = 0.75;
else
    powerinput = 0;
    diversity = 0;
end

% --- Executes on button press in ceilingfan_checkbox.
function ceilingfan_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to ceilingfan_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ceilingfan_checkbox
boxstatus = get(hObject, 'Value')

if boxstatus == 1
   motorpowerrating = 60;
   motorefficiency = 0.35;
   motorusefactor = 1;
   motorloadfactor = 0.78;

else
   motorpowerrating = 0;
   motorefficiency = 0;
   motorusefactor = 0;
   motorloadfactor = 0;

end


function no_of_items_laptop_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_items_laptop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_of_items_laptop as text
%        str2double(get(hObject,'String')) returns contents of no_of_items_laptop as a double


% --- Executes during object creation, after setting all properties.
function no_of_items_laptop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_items_laptop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function no_of_items_ceilingfan_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_items_ceilingfan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_of_items_ceilingfan as text
%        str2double(get(hObject,'String')) returns contents of no_of_items_ceilingfan as a double


% --- Executes during object creation, after setting all properties.
function no_of_items_ceilingfan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_items_ceilingfan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pa_system_checkbox.
function pa_system_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to pa_system_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pa_system_checkbox
boxstatus = get(hObject, 'Value');

if boxstatus == 1
   pasystempowerrating = 120;
   pasystemloadfactor = 0.8;
   
else
   pasystempowerrating = 0;
   pasystemloadfactor = 0;
   
end


function no_of_items_pasystem_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_items_pasystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_of_items_pasystem as text
%        str2double(get(hObject,'String')) returns contents of no_of_items_pasystem as a double


% --- Executes during object creation, after setting all properties.
function no_of_items_pasystem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_items_pasystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function rating_laptop_Callback(hObject, eventdata, handles)
% hObject    handle to rating_laptop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rating_laptop as text
%        str2double(get(hObject,'String')) returns contents of rating_laptop as a double


% --- Executes during object creation, after setting all properties.
function rating_laptop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rating_laptop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rating_ceilingfan_Callback(hObject, eventdata, handles)
% hObject    handle to rating_ceilingfan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rating_ceilingfan as text
%        str2double(get(hObject,'String')) returns contents of rating_ceilingfan as a double


% --- Executes during object creation, after setting all properties.
function rating_ceilingfan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rating_ceilingfan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rating_pasystem_Callback(hObject, eventdata, handles)
% hObject    handle to rating_pasystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rating_pasystem as text
%        str2double(get(hObject,'String')) returns contents of rating_pasystem as a double


% --- Executes during object creation, after setting all properties.
function rating_pasystem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rating_pasystem (see GCBO)
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
Summary

% --- Executes on button press in pushbutton_skip.
function pushbutton_skip_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Summary

% --- Executes on button press in pushbutton_back.
function pushbutton_back_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Door_Selection2

% --- Executes on button press in infiltration_confirm.
function infiltration_confirm_Callback(hObject, eventdata, handles)
% hObject    handle to infiltration_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Room_Volume = str2double(get(handles.room_volume_edit,'String'));
ACH = str2double(get(handles.ACH_edit,'String'));
Qvolumetric = ACH * Room_Volume * 1000/3600; % in L/s
roomtemp = getappdata(0, 'roomtemperature');
outdoortemp = getappdata(0, 'outdoortemperature');
Qinfiltration = 1.2 * Qvolumetric * (outdoortemp - roomtemp)/1000; % in kW

% --- Executes on button press in occupants_confirm.
function occupants_confirm_Callback(hObject, eventdata, handles)
% hObject    handle to occupants_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
no_of_persons = str2double(get(handles.no_of_persons_edit,'String'));
rate_of_heatproduction = str2double(get(handles.rate_of_heat_production_edit,'String'));
Qoccupants = (no_of_persons * rate_of_heatproduction)/1000; % in kW

% --- Executes on button press in lighting_confirm.
function lighting_confirm_Callback(hObject, eventdata, handles)
% hObject    handle to lighting_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
no_of_bulbs = str2double(get(handles.no_of_bulbs_edit,'String'));
Bulb_Capacity = str2double(get(handles.capacity_edit,'String'));

FactorLightingUse = 1;
FactorSpecialAllowance = 1.25;
CLFLight = 0.09;

Qlighting = (no_of_bulbs * Bulb_Capacity * FactorLightingUse * FactorSpecialAllowance * CLFLight)/1000; % in kW


% --- Executes on button press in appliances_confirm.
function appliances_confirm_Callback(hObject, eventdata, handles)
% hObject    handle to appliances_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

no_of_laptops = str2double(get(handles.no_of_items_laptop,'String'));
laptop_rating = str2double(get(handles.rating_laptop,'String'));
diversity = 0.75;

% no_of_ceilingfans = str2double(get(handles.no_of_items_ceilingfan,'String'));
% motorpowerrating = str2double(get(handles.rating_ceilingfan,'String'));
% motorefficiency = 0.35;
% motorusefactor = 1;
% motorloadfactor = 0.78;
% 
% no_of_pasystems = str2double(get(handles.no_of_items_pasystem,'String'));
% pasystempowerrating = str2double(get(handles.rating_pasystem,'String'));
% pasystemloadfactor = 0.8;

Qlaptop = (no_of_laptops * laptop_rating * diversity)/1000; % in kW
% Qceilingfan = (no_of_ceilingfans * (motorpowerrating/motorefficiency) * motorusefactor * motorloadfactor)/1000; %in kW
% Qpasystem = (no_of_pasystems * pasystempowerrating * pasystemloadfactor)/1000; % in kW

Room_Volume = str2double(get(handles.room_volume_edit,'String'));
ACH = str2double(get(handles.ACH_edit,'String'));
Qvolumetric = ACH * Room_Volume * 1000/3600; % in L/s
roomtemp = getappdata(0, 'roomtemperature');
outdoortemp = getappdata(0, 'outdoortemperature');
Qinfiltration = 1.2 * Qvolumetric * (outdoortemp - roomtemp)/1000; % in kW

no_of_persons = str2double(get(handles.no_of_persons_edit,'String'));
rate_of_heatproduction = str2double(get(handles.rate_of_heat_production_edit,'String'));
Qoccupants = (no_of_persons * rate_of_heatproduction)/1000; % in kW

no_of_bulbs = str2double(get(handles.no_of_bulbs_edit,'String'));
Bulb_Capacity = str2double(get(handles.capacity_edit,'String'));
FactorLightingUse = 1;
FactorSpecialAllowance = 1.25;
CLFLight = 0.09;
Qlighting = (no_of_bulbs * Bulb_Capacity * FactorLightingUse * FactorSpecialAllowance * CLFLight)/1000; % in kW

Qappliances = Qlaptop

setappdata(0, 'Qinfiltration', Qinfiltration);
setappdata(0, 'Qoccupants', Qoccupants);
setappdata(0, 'Qlighting', Qlighting);
setappdata(0, 'Qappliances', Qappliances);
