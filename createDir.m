function [] = createDir(directorio)
    switch exist(directorio,'dir')
        case 0
              mkdir(directorio)
        otherwise
            fprintf("Directorio ya existe, ingrese otra ruta\n");      
    end
end