unit Routes.API;

interface

//function Controller_Users_Contacts(Message: String): String;

implementation

uses Horse, Horse.Jhonson, Horse.CORS, System.JSON, Horse.Query, Controller_Producao, Controller_Venda, GenericSocket, UnitFuncoes,
      Windows, System.Win.Registry, uRegistro;

Var
  ClientSocket : iGenericSocket;
  ACNPJCPF, AUser, ClientSocket_Usuario: String;
  Reg: TRegistry;
begin
  ClientSocket := TGenericSocket.New;

  ClientSocket.SocketClient.RegisterCallback('/api/produtos',                Controller_Producao_AllTasks);
  ClientSocket.SocketClient.RegisterCallback('/api/Users/Contacts',          Controller_Producao_AllTasks);
  ClientSocket.SocketClient.RegisterCallback('/api/Employees/AllTasks',      Controller_Producao_AllTasks);      //(${groupByPeriod}
  ClientSocket.SocketClient.RegisterCallback('/api/Employees/FilteredTasks', Controller_Producao_FilteredTasks); //(${groupByPeriod}


//  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/SalesByOrderDate/:groupByPeriod',     Controller_Analitics_SalesByOrderDate);
//  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/SalesByCategory/:startDate/:endDate', Controller_Venda_SalesByCategory);
//  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/Sales/:startDate/:endDate',           Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Contacts/${id}/Opportunities',                 Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Contacts',                                     Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Contacts',                                     Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Contacts/${id}',                               Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Contacts/${id}/Notes',                         Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Contacts/${id}/Messages',                      Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/Statuses',                                     Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Users/States',                                       Controller_Venda_Sales);
//
//  ClientSocket.SocketClient.RegisterCallback('Employees/AllTasks',                                        Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Employees/AllTasks',                                        Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Employees/FilteredTasks',                                   Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('Employees/Tasks/${id}',                                     Controller_Venda_Sales);
//
//  ClientSocket.SocketClient.RegisterCallback('Analytics/OpportunitiesByCategory/${startDate}/${endDate}', Controller_Venda_Sales);
  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/SalesByCategory',         Controller_Venda_SalesByCategory);
  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/Sales',                   Controller_Venda_Sales);
//  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/SalesByStateAndCity/${startDate}/${endDate}',     Controller_Venda_Sales);
  ClientSocket.SocketClient.RegisterCallback('/api/Analytics/SalesByOrderDate',               Controller_Venda_SalesByOrderDate);


  if not ClientSocket.SocketClient.Connected then
  begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      ApplicationTitle := 'Office Comercial';
      Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Empresa', True);
      ACNPJCPF := Reg.ReadStringWR('CNPJCPF');

      Reg.OpenKey('\Software\Rocha\Login', True);
      AUser := Reg.ReadStringWR('Login');

    finally
      Reg.Free;
    end;
    ClientSocket_Usuario := OnlyNumberWR(ACNPJCPF) + '@' + AUser;
//    ClientSocket.SocketClient.Connect('192.168.0.10', 8050, ClientSocket_Usuario);   // Não Mexer nessa mmmmmerda aqui <<<==-------
  end;
end.
