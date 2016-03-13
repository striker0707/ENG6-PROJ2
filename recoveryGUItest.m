function varargout = recoveryGUItest(varargin)
%RECOVERYGUITEST M-file for recoveryGUItest.fig
%      RECOVERYGUITEST, by itself, creates a new RECOVERYGUITEST or raises the existing
%      singleton*.
%
%      H = RECOVERYGUITEST returns the handle to a new RECOVERYGUITEST or the handle to
%      the existing singleton*.
%
%      RECOVERYGUITEST('Property','Value',...) creates a new RECOVERYGUITEST using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to recoveryGUItest_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      RECOVERYGUITEST('CALLBACK') and RECOVERYGUITEST('CALLBACK',hObject,...) call the
%      local function named CALLBACK in RECOVERYGUITEST.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help recoveryGUItest

% Last Modified by GUIDE v2.5 12-Mar-2016 15:43:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @recoveryGUItest_OpeningFcn, ...
                   'gui_OutputFcn',  @recoveryGUItest_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before recoveryGUItest is made visible.
function recoveryGUItest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for recoveryGUItest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes recoveryGUItest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = recoveryGUItest_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in loadImage.
function loadImage_Callback(hObject, eventdata, handles)
% hObject    handle to loadImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[File_Name, Path_Name] = uigetfile('*.png'); %sourced from matlab forums to get file
       axes(handles.modifiedImage)
       imshow([Path_Name,File_Name])

% --- Executes on selection change in selectMethodR.
function selectMethodR_Callback(hObject, eventdata, handles)
% hObject    handle to selectMethodR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selectMethodR contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selectMethodR


% --- Executes during object creation, after setting all properties.
function selectMethodR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selectMethodR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in recover.
function recover_Callback(hObject, eventdata, handles)
% hObject    handle to recover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.selectMethodR,'String');
val=get(handles.selectMethodR,'Value');

dog=getimage(handles.modifiedImage);


switch str{val};
    case 'Odd-Even Red'
        first=@(x) x(1);
        dogRedLayer=double(dog(:,:,1));
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if first(factor(dogRedLayer(m)))~=2;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);

        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Method 2'
        axes(handles.hiddenImage)
        imshow(hidden)
        
    case 'Method 3'
        axes(handles.hiddenImage)
        imshow(hidden)
        
    case 'Method 4'
        axes(handles.hiddenImage)
        imshow(hidden)
        
    case 'Method 5'
        axes(handles.hiddenImage)
        imshow(hidden)
        
    case 'Method 6'
        axes(handles.hiddenImage)
        imshow(hidden)

    case 'Method 7'
        axes(handles.hiddenImage)
        imshow(hidden)

    case 'Method 8'
        axes(handles.hiddenImage)
        imshow(hidden)

    case 'Method 9'
        axes(handles.hiddenImage)
        imshow(hidden)
        
    case 'Method 10'
        axes(handles.hiddenImage)
        imshow(hidden)
        
end
