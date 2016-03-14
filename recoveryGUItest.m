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

% Last Modified by GUIDE v2.5 13-Mar-2016 15:46:44

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
% uiwait(handles.GUIR);


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

first=@(x) x(1);
dogRedLayer=double(dog(:,:,1));
dogGreenLayer=double(dog(:,:,2));
dogBlueLayer=double(dog(:,:,3));

firstLayer=cellstr(dec2bin(dog(:,:,1)));
secondLayer=cellstr(dec2bin(dog(:,:,2)));
thirdLayer=cellstr(dec2bin(dog(:,:,3)));

switch str{val};
    case 'Odd-Even Red'
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
        
    case 'Odd-Even Green'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if first(factor(dogGreenLayer(m)))~=2;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);

        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Odd-Even Blue'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if first(factor(dogBlueLayer(m)))~=2;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);

        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Red Mod 2'
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
        
    case 'Green Mod 2'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if first(factor(dogGreenLayer(m)))~=2;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);

        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Blue Mod 2'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if first(factor(dogBlueLayer(m)))~=2;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);

        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Red Mod 3'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogRedLayer(m),3)==0;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)

        
    case 'Green Mod 3'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogGreenLayer(m),3)==0;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)
        
    case 'Blue Mod 3'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogBlueLayer(m),3)==0;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)
        
    case 'Red Mod 6'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogRedLayer(m),9)==0
                recoveredImage(m)=1;
            elseif mod(dogRedLayer(m),6)==0
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)

    case 'Green Mod 6'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogGreenLayer(m),9)==0
                recoveredImage(m)=1;
            elseif mod(dogGreenLayer(m),6)==0
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)

    case 'Blue Mod 6'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogBlueLayer(m),9)==0
                recoveredImage(m)=1;
            elseif mod(dogBlueLayer(m),6)==0
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)

    case 'Red Round to 5'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogRedLayer(m),5)==0;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)

    case 'Green Round to 5'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogGreenLayer(m),5)==0;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)

    case 'Blue Round to 5'
        recoveredImage=uint8(zeros(400,400));
        for m=1:160000
            if mod(dogBlueLayer(m),5)==0;
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        
        axes(handles.hiddenImage)
        image(recoveredImage)
        
    case 'Red Add/Sub 2'
        %sourced from matlab forums, grabs image data from embedding gui
        h = findobj('Tag','GUIE');

         % if exists (not empty)
        if ~isempty(h)
            % get handles and other user-defined data associated to Gui1
            g1data = guidata(h);
           
            dog=getimage(g1data.originalImage);
        end
        
        dogRedLayermod=dog(:,:,1);
        for n=1:160000
            if dogRedLayermod(n)==255
                dogRedLayermod(n)=253;
            elseif dogRedLayermod(n)==254
                dogRedLayermod(n)=252;
            else
                dogRedLayermod(n)=dogRedLayermod(n);
            end
        end
        
        recoveredImage=zeros(400,400);
        for m=1:160000
            if dogRedLayermod(m)==dogRedLayer(m)-2
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Green Add/Sub 2'
        %sourced from matlab forums, grabs image data from embedding gui
        h = findobj('Tag','GUIE');

         % if exists (not empty)
        if ~isempty(h)
            % get handles and other user-defined data associated to Gui1
            g1data = guidata(h);
           
            dog=getimage(g1data.originalImage);
        end
        
        dogGreenLayermod=dog(:,:,2);
        for n=1:160000
            if dogGreenLayermod(n)==255
                dogGreenLayermod(n)=253;
            elseif dogGreenLayermod(n)==254
                dogGreenLayermod(n)=252;
            else
                dogGreenLayermod(n)=dogGreenLayermod(n);
            end
        end
        
        recoveredImage=zeros(400,400);
        for m=1:160000
            if dogGreenLayermod(m)==dogGreenLayer(m)-2
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        axes(handles.hiddenImage);
        image(recoveredImage);
        
    case 'Blue Add/Sub 2'
        %sourced from matlab forums, grabs image data from embedding gui
        h = findobj('Tag','GUIE');

         % if exists (not empty)
        if ~isempty(h)
            % get handles and other user-defined data associated to Gui1
            g1data = guidata(h);
           
            dog=getimage(g1data.originalImage);
        end
        
        dogBlueLayermod=dog(:,:,2);
        for n=1:160000
            if dogBlueLayermod(n)==255
                dogBlueLayermod(n)=253;
            elseif dogBlueLayermod(n)==254
                dogBlueLayermod(n)=252;
            else
                dogBlueLayermod(n)=dogBlueLayermod(n);
            end
        end
        
        recoveredImage=zeros(400,400);
        for m=1:160000
            if dogBlueLayermod(m)==dogBlueLayer(m)-2
                recoveredImage(m)=1;
            else
                recoveredImage(m)=0;
            end
        end
        recoveredImage=logical(recoveredImage);
        recoveredImage=expand(recoveredImage);
        axes(handles.hiddenImage);
        image(recoveredImage);

    case 'Red Bit 0'
        %extraction
        recoveredImage1=zeros(400,400);
        

        for m=1:160000
            %extract first image
            if firstLayer{m}(8)=='1'
                recoveredImage1(m)=1;
            elseif firstLayer{m}(8)=='0'
                recoveredImage1(m)=0;
            end

        end


        recoveredImage1=logical(recoveredImage1);
        recoveredImage1=expand(recoveredImage1);
        axes(handles.hiddenImage);
        image(recoveredImage1)

    case 'Green Bit 0'
        %extraction
        recoveredImage1=zeros(400,400);

        for m=1:160000
            %extract first image
            if secondLayer{m}(8)=='1'
                recoveredImage1(m)=1;
            elseif secondLayer{m}(8)=='0'
                recoveredImage1(m)=0;
            end
        end

        recoveredImage1=logical(recoveredImage1);
        recoveredImage1=expand(recoveredImage1);
        axes(handles.hiddenImage);
        image(recoveredImage1)

    case 'Blue Bit 0'
        %extraction
        recoveredImage1=zeros(400,400);

        for m=1:160000
            %extract first image
            if thirdLayer{m}(8)=='1'
                recoveredImage1(m)=1;
            elseif thirdLayer{m}(8)=='0'
                recoveredImage1(m)=0;
            end

        end

        recoveredImage1=logical(recoveredImage1);
        recoveredImage1=expand(recoveredImage1);
        axes(handles.hiddenImage);
        image(recoveredImage1)

    case 'Red Bit 1'
        %extraction
        recoveredImage2=zeros(400,400);


        for m=1:160000
            %extract second image
            if firstLayer{m}(7)=='1'
                recoveredImage2(m)=1;
            elseif firstLayer{m}(7)=='0'
                recoveredImage2(m)=0;
            end
        end

        recoveredImage2=logical(recoveredImage2);
        recoveredImage2=expand(recoveredImage2);
        axes(handles.hiddenImage);
        image(recoveredImage2)

    case 'Green Bit 1'
        %extraction
        recoveredImage2=zeros(400,400);

        for m=1:160000
            %extract second image
            if secondLayer{m}(7)=='1'
                recoveredImage2(m)=1;
            elseif secondLayer{m}(7)=='0'
                recoveredImage2(m)=0;
            end
        end

        recoveredImage2=logical(recoveredImage2);
        recoveredImage2=expand(recoveredImage2);
        axes(handles.hiddenImage);
        image(recoveredImage2)

    case 'Blue Bit 1'
        %extraction
        recoveredImage2=zeros(400,400);

        for m=1:160000
            %extract second image
            if thirdLayer{m}(7)=='1'
                recoveredImage2(m)=1;
            elseif thirdLayer{m}(7)=='0'
                recoveredImage2(m)=0;
            end
        end

        recoveredImage2=logical(recoveredImage2);
        recoveredImage2=expand(recoveredImage2);
        axes(handles.hiddenImage);
        image(recoveredImage2)

    case 'Red Bit 2'
        %extraction
        recoveredImage3=zeros(400,400);

        for m=1:160000
            %extract third image
            if firstLayer{m}(6)=='1'
                recoveredImage3(m)=1;
            elseif firstLayer{m}(6)=='0'
                recoveredImage3(m)=0;
            end
        end

        recoveredImage3=logical(recoveredImage3);
        recoveredImage3=expand(recoveredImage3);
        axes(handles.hiddenImage);
        image(recoveredImage3)

    case 'Green Bit 2'
        %extraction
        recoveredImage3=zeros(400,400);

        for m=1:160000
            %extract third image
            if secondLayer{m}(6)=='1'
                recoveredImage3(m)=1;
            elseif secondLayer{m}(6)=='0'
                recoveredImage3(m)=0;
            end
        end

        recoveredImage3=logical(recoveredImage3);
        recoveredImage3=expand(recoveredImage3);
        axes(handles.hiddenImage);
        image(recoveredImage3)

    case 'Blue Bit 2'
        %extraction
        recoveredImage3=zeros(400,400);

        for m=1:160000
            %extract third image
            if thirdLayer{m}(6)=='1'
                recoveredImage3(m)=1;
            elseif thirdLayer{m}(6)=='0'
                recoveredImage3(m)=0;
            end
        end

        recoveredImage3=logical(recoveredImage3);
        recoveredImage3=expand(recoveredImage3);
        axes(handles.hiddenImage);
        image(recoveredImage3)

end


% --- Executes on button press in openEmbedding.
function openEmbedding_Callback(hObject, eventdata, handles)
% hObject    handle to openEmbedding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
embeddingGUItest
