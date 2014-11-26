%import data 
data = importInvent('inventory.xlsx','Sheet1','A1:Q51');


pre = 'invt';
post = '.txt';
for ii = 1:50
    fname=strcat(pre,num2str(ii),post);
    fileID = fopen(fname,'w');
    for jj = 1:length(data(1,:))
        fprintf(fileID,'%s\n',data{ii,jj});
    end
    fclose(fileID);
end