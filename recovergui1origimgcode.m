    case 'test'
         h = findobj('Tag','GUIE');

         % if exists (not empty)
         if ~isempty(h)
            % get handles and other user-defined data associated to Gui1
            g1data = guidata(h);
            
            axes(handles.hiddenImage)
            orig=getimage(g1data.originalImage);
            image(orig);

         end