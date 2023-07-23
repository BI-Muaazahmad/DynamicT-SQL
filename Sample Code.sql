declare  @ssql nvarchar(max)
set @ssql= N'Select  
salesamount  as [' + Cast(CONVERT(DATE, GETDATE() +1) as nvarchar(25))+N']  , -- Column name 
(Salesamount * orderquantity) as ['+ Cast(CONVERT(DATE, GETDATE() +1) as nvarchar(25))+ N' Total' + N'] , -- totalcolumn1

salesamount as ['+ Cast(CONVERT(DATE, DATEADD(week , 1 , getdate()) +1) as nvarchar(25))+N']  ,
(Salesamount * orderquantity) as ['+Cast(CONVERT(DATE, DATEADD(week , 1 , getdate()) +1) as nvarchar(25))+ N' Total' + N']



from factinternetsales ;'  
exec sp_executesql @ssql

