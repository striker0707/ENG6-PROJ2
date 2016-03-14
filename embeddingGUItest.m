function varargout = embeddingGUItest(varargin)
% EMBEDDINGGUITEST MATLAB code for embeddingGUItest.fig
%      EMBEDDINGGUITEST, by itself, creates a new EMBEDDINGGUITEST or raises the existing
%      singleton*.
%
%      H = EMBEDDINGGUITEST returns the handle to a new EMBEDDINGGUITEST or the handle to
%      the existing singleton*.
%
%      EMBEDDINGGUITEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EMBEDDINGGUITEST.M with the given input arguments.
%
%      EMBEDDINGGUITEST('Property','Value',...) creates a new EMBEDDINGGUITEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before embeddingGUItest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to embeddingGUItest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help embeddingGUItest

% Last Modified by GUIDE v2.5 13-Mar-2016 15:46:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @embeddingGUItest_OpeningFcn, ...
                   'gui_OutputFcn',  @embeddingGUItest_OutputFcn, ...
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


% --- Executes just before embeddingGUItest is made visible.
function embeddingGUItest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to embeddingGUItest (see VARARGIN)

% Choose default command line output for embeddingGUItest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes embeddingGUItest wait for user response (see UIRESUME)
% uiwait(handles.GUIE);


% --- Outputs from this function are returned to the command line.
function varargout = embeddingGUItest_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function imagePath_Callback(hObject, eventdata, handles)
% hObject    handle to imagePath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imagePath as text
%        str2double(get(hObject,'String')) returns contents of imagePath as a double



% --- Executes during object creation, after setting all properties.
function imagePath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imagePath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loadImage.
function loadImage_Callback(hObject, eventdata, handles)
% hObject    handle to loadImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[File_Name, Path_Name] = uigetfile('*.png'); %sourced from matlab forums to get file
       axes(handles.originalImage)
       imshow([Path_Name,File_Name])

% --- Executes on selection change in selectImage.
function selectImage_Callback(hObject, eventdata, handles)
% hObject    handle to selectImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selectImage contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selectImage

str=get(hObject,'String');
val=get(hObject,'Value');

switch str{val};
    case 'Image 1'
        secretimage=imread('hidden01','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
    case 'Image 2'
        secretimage=imread('hidden02','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
    case 'Image 3'
        secretimage=imread('hidden03','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
    case 'Image 4'
        secretimage=imread('hidden04','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
    case 'Image 5'
        secretimage=imread('hidden05','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
    case 'Image 6'
        secretimage=imread('hidden06','png');
        axes(handles.secretImage)
        imshow(secretimage)

    case 'Image 7'
        secretimage=imread('hidden07','png');
        axes(handles.secretImage)
        imshow(secretimage)

    case 'Image 8'
        secretimage=imread('hidden08','png');
        axes(handles.secretImage)
        imshow(secretimage)

    case 'Image 9'
        secretimage=imread('hidden09','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
    case 'Image 10'
        secretimage=imread('hidden10','png');
        axes(handles.secretImage)
        imshow(secretimage)
        
end


% --- Executes during object creation, after setting all properties.
function selectImage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selectImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in selectMethod.
function selectMethod_Callback(hObject, eventdata, handles)
% hObject    handle to selectMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selectMethod contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selectMethod


% --- Executes during object creation, after setting all properties.
function selectMethod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selectMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in saveImage.
function saveImage_Callback(hObject, eventdata, handles)
% hObject    handle to saveImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, PathName] = uiputfile('*.png', 'Save As');
Name = fullfile(PathName,FileName);
image=getimage(handles.modifiedImage);
imwrite(image, Name, 'bmp');


% --- Executes on button press in openRecovery.
function openRecovery_Callback(hObject, eventdata, handles)
% hObject    handle to openRecovery (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveryGUItest


% --- Executes on button press in embed.
function embed_Callback(hObject, eventdata, handles)
% hObject    handle to embed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.selectMethod,'String');
val=get(handles.selectMethod,'Value');

dog=getimage(handles.originalImage);

hidden1=getimage(handles.secretImage);
hidden1flatten=flatten(hidden1);

dogRedLayer=dog(:,:,1);
dogRedLayerNew=zeros(400,400);
dogGreenLayer=dog(:,:,2);
dogGreenLayerNew=zeros(400,400);
dogBlueLayer=dog(:,:,3);
dogBlueLayerNew=zeros(400,400);

switch str{val};
    case 'Odd-Even Red'
        first=@(x) x(1);
        for n=1:160000
            if hidden1flatten(n)==1
                if first(factor(dogRedLayer(n)))==2
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                else
                    dogRedLayerNew(n)=dogRedLayer(n);
                end
            elseif hidden1flatten(n)==0
                if first(factor(dogRedLayer(n)))~=2
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                else
                    dogRedLayerNew(n)=dogRedLayer(n);
                end
            end
        end
        newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage);
        
    case 'Odd-Even Green'
        first=@(x) x(1);
        for n=1:160000
            if hidden1flatten(n)==1
                if first(factor(dogGreenLayer(n)))==2
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                else
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                end
            elseif hidden1flatten(n)==0
                if first(factor(dogGreenLayer(n)))~=2
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                else
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dogGreenLayerNew,dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage);
        
    case 'Odd-Even Blue'
        first=@(x) x(1);
        for n=1:160000
            if hidden1flatten(n)==1
                if first(factor(dogBlueLayer(n)))==2
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                else
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                end
            elseif hidden1flatten(n)==0
                if first(factor(dogBlueLayer(n)))~=2
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                else
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dog(:,:,2),dogBlueLayerNew);
        axes(handles.modifiedImage);
        image(newDogImage);
        
    case 'Red Mod 2'
        for n=1:160000
            if hidden1flatten(n)==1
                if mod(dogRedLayer(n),2)==0
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                else
                    dogRedLayerNew(n)=dogRedLayer(n);
                end
            elseif hidden1flatten(n)==0
                if mod(dogRedLayer(n),2)==1
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                else
                    dogRedLayerNew(n)=dogRedLayer(n);
                end
            end
        end
        newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage);
        
    case 'Green Mod 2'
        for n=1:160000
            if hidden1flatten(n)==1
                if mod(dogGreenLayer(n),2)==0
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                else
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                end
            elseif hidden1flatten(n)==0
                if mod(dogGreenLayer(n),2)==1
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                else
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dogGreenLayerNew,dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage);
        
    case 'Blue Mod 2'
        for n=1:160000
            if hidden1flatten(n)==1
                if mod(dogBlueLayer(n),2)==0
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                else
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                end
            elseif hidden1flatten(n)==0
                if mod(dogBlueLayer(n),2)==1
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                else
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dog(:,:,2),dogBlueLayerNew);
        axes(handles.modifiedImage);
        image(newDogImage);
        
    case 'Red Mod 3'
        for n=1:160000
            if hidden1flatten(n)==1 % make mod3==0
                if mod(dogRedLayer(n),3)==0
                    dogRedLayerNew(n)=dogRedLayer(n);
                elseif mod(dogRedLayer(n),3)==1
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                elseif mod(dogRedLayer(n),3)==2
                    dogRedLayerNew(n)=dogRedLayer(n)+1;
                end
            elseif hidden1flatten(n)==0
                if mod(dogRedLayer(n),3)==0
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                else
                    dogRedLayerNew(n)=dogRedLayer(n);
                end
            end
        end
        newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)

        
    case 'Green Mod 3'
        for n=1:160000
            if hidden1flatten(n)==1 % make mod3==0
                if mod(dogGreenLayer(n),3)==0
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                elseif mod(dogGreenLayer(n),3)==1
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                elseif mod(dogGreenLayer(n),3)==2
                    dogGreenLayerNew(n)=dogGreenLayer(n)+1;
                end
            elseif hidden1flatten(n)==0
                if mod(dogGreenLayer(n),3)==0
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                else
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dogGreenLayerNew,dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Blue Mod 3'
        for n=1:160000
            if hidden1flatten(n)==1 % make mod3==0
                if mod(dogBlueLayer(n),3)==0
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                elseif mod(dogBlueLayer(n),3)==1
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                elseif mod(dogBlueLayer(n),3)==2
                    dogBlueLayerNew(n)=dogBlueLayer(n)+1;
                end
            elseif hidden1flatten(n)==0
                if mod(dogBlueLayer(n),3)==0
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                else
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dog(:,:,2),dogBlueLayerNew);
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Red Mod 6'
        for i=1:160000
            if hidden1flatten(i)==1  %if white pixel make multiple of 9 thats not 6
                switch mod(dogRedLayer(i),9)
                    case 0
                          dogRedLayerNew(i)=dogRedLayer(i);
                    otherwise
                        dogRedLayerNew(i)=(round(dogRedLayer(i)/9)*9);
                        if mod(dogRedLayer(i),6)==0
                            dogRedLayerNew(i)=dogRedLayerNew(i)-9;
                        else
                            dogRedLayerNew(i)=dogRedLayerNew(i);
                        end
                end
            else %if dark pixel make multiple of 6 thats not multiple of 9
                 switch mod(dogRedLayer(i),6)
                    case 0
                          dogRedLayerNew(i)=dogRedLayer(i);
                    otherwise
                        dogRedLayerNew(i)=(round(dogRedLayer(i)/6)*6);
                        if mod(dogRedLayerNew(i),9)==0
                            dogRedLayerNew(i)=dogRedLayerNew(i)-6;
                        else
                            dogRedLayerNew(i)=dogRedLayerNew(i);
                        end
                 end
            end
        end
        newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)

    case 'Green Mod 6'
        for i=1:160000
            if hidden1flatten(i)==1  %if white pixel make multiple of 9 thats not 6
                switch mod(dogGreenLayer(i),9)
                    case 0
                          dogGreenLayerNew(i)=dogGreenLayer(i);
                    otherwise
                        dogGreenLayerNew(i)=(round(dogGreenLayer(i)/9)*9);
                        if mod(dogRedLayer(i),6)==0
                            dogGreenLayerNew(i)=dogGreenLayerNew(i)-9;
                        else
                            dogGreenLayerNew(i)=dogGreenLayerNew(i);
                        end
                end
            else %if dark pixel make multiple of 6 thats not multiple of 9
                 switch mod(dogGreenLayer(i),6)
                    case 0
                          dogGreenLayerNew(i)=dogGreenLayer(i);
                    otherwise
                        dogGreenLayerNew(i)=(round(dogGreenLayer(i)/6)*6);
                        if mod(dogGreenLayerNew(i),9)==0
                            dogGreenLayerNew(i)=dogGreenLayerNew(i)-6;
                        else
                            dogGreenLayerNew(i)=dogGreenLayerNew(i);
                        end
                 end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dogGreenLayerNew,dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)

    case 'Blue Mod 6'
        for i=1:160000
            if hidden1flatten(i)==1  %if white pixel make multiple of 9 thats not 6
                switch mod(dogBlueLayer(i),9)
                    case 0
                          dogBlueLayerNew(i)=dogBlueLayer(i);
                    otherwise
                        dogBlueLayerNew(i)=(round(dogBlueLayer(i)/9)*9);
                        if mod(dogBlueLayer(i),6)==0
                            dogBlueLayerNew(i)=dogBlueLayerNew(i)-9;
                        else
                            dogBlueLayerNew(i)=dogBlueLayerNew(i);
                        end
                end
            else %if dark pixel make multiple of 6 thats not multiple of 9
                 switch mod(dogBlueLayer(i),6)
                    case 0
                          dogBlueLayerNew(i)=dogBlueLayer(i);
                    otherwise
                        dogBlueLayerNew(i)=(round(dogBlueLayer(i)/6)*6);
                        if mod(dogBlueLayerNew(i),9)==0
                            dogBlueLayerNew(i)=dogBlueLayerNew(i)-6;
                        else
                            dogBlueLayerNew(i)=dogBlueLayerNew(i);
                        end
                 end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dog(:,:,2),dogBlueLayerNew);
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Red Round to 5'
        for n=1:160000
            if hidden1flatten(n)==1 % round to nearest multiple of 5
                dogRedLayerNew(n)=round(dogRedLayer(n)/5)*5;
            elseif hidden1flatten(n)==0 % anything except multiple of 5
                if mod(dogRedLayer(n),5)==0
                    dogRedLayerNew(n)=dogRedLayer(n)-1;
                else
                    dogRedLayerNew(n)=dogRedLayer(n);
                end
            end
        end
        newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Green Round to 5'
        for n=1:160000
            if hidden1flatten(n)==1 % round to nearest multiple of 5
                dogGreenLayerNew(n)=round(dogGreenLayer(n)/5)*5;
            elseif hidden1flatten(n)==0 % anything except multiple of 5
                if mod(dogGreenLayer(n),5)==0
                    dogGreenLayerNew(n)=dogGreenLayer(n)-1;
                else
                    dogGreenLayerNew(n)=dogGreenLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dogGreenLayerNew,dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Blue Round to 5'
        for n=1:160000
            if hidden1flatten(n)==1 % round to nearest multiple of 5
                dogBlueLayerNew(n)=round(dogBlueLayer(n)/5)*5;
            elseif hidden1flatten(n)==0 % anything except multiple of 5
                if mod(dogBlueLayer(n),5)==0
                    dogBlueLayerNew(n)=dogBlueLayer(n)-1;
                else
                    dogBlueLayerNew(n)=dogBlueLayer(n);
                end
            end
        end
        newDogImage=cat(3,dog(:,:,1),dog(:,:,2),dogBlueLayerNew);
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Red Add/Subtract 2'
        for n=1:160000
            if hidden1flatten(n)==1 
                dogRedLayerNew(n)=dogRedLayer(n)+2;
            elseif hidden1flatten(n)==0
                dogRedLayerNew(n)=dogRedLayer(n)-2;
            end
        end
        newDogImage=cat(3,dogRedLayerNew,dog(:,:,2),dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Green Add/Subtract 2'
        for n=1:160000
            if hidden1flatten(n)==1 
                dogGreenLayerNew(n)=dogGreenLayer(n)+2;
            elseif hidden1flatten(n)==0
                dogGreenLayerNew(n)=dogGreenLayer(n)-2;
            end
        end
        newDogImage=cat(3,dog(:,:,1),dogGreenLayerNew,dog(:,:,3));
        axes(handles.modifiedImage);
        image(newDogImage)
        
    case 'Blue Add/Subtract 2'
        for n=1:160000
            if hidden1flatten(n)==1 
                dogBlueLayerNew(n)=dogBlueLayer(n)+2;
            elseif hidden1flatten(n)==0
                dogBlueLayerNew(n)=dogBlueLayer(n)-2;
            end
        end
        newDogImage=cat(3,dog(:,:,1),dog(:,:,2),dogBlueLayerNew);
        axes(handles.modifiedImage);
        image(newDogImage)


end
