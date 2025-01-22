s = 0;
for i = 60:100
    s = s + nchoosek(100,i)/2^(100);
end

s = 0;
for i = 600:1000
    s = s + nchoosek(1000,i)/2^(1000);
end