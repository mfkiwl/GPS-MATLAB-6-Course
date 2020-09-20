function Res = P70_GetRXPoses(inRes, Params)
%
% ������� ����� ������������� ���������� ��� ���������, � ������� ����
% ������� ���� �� ���� �������� TOW_Count_Message
%
% ������� ����������
%   inRes - ��������� � ������������ ������, ����������� � Main;
%
% �������� ����������
%   Res - ���������, ������� ���������� �� inRes ����������� ������ ����,
%       �������� �������� ���� ���� � ����.

% �������������� �����������
    Res = inRes;

%% ������������� ����������
    % Positioning = struct(  ...
    %   'RXPoses', cell(N, M), ...
    %   'CAStep', CAStep, ...
    %   'isCommonRxTime', isCommonRxTime ...
    % );
    
    % ���������� ����� N cell-������� RXPoses ��������� � �����������
    %   ��������� ��������� � ����������� ���������� TOW. ����������
    %   �������� ������������ ����������� ���������� ��������� ��
    %   ������������ ������ �������� � ������� �� ��������� CAStep,
    %   ������������� ����.
    % CAStep - ��� � �������� CA-���� ����� ��������� ������������
    %   ���������.
    % isCommonRxTime - ��������, ������������ ��� ��������� ���������
    %   ���������: � ���� ����� �������� ��� � ������.

%% ��������� ����������
    % ��� � �������� CA-���� ����� ��������� ������������ ���������. �����
    % � �������� 6000 �������� CA-����, �������, ��������, CAStep = 1000
    % ������� � ���������� 6 ��������� �� ���� �������.
        CAStep = Params.P70_GetRXPoses.CAStep;
        
    % ������� ���������� ���������.
    % isCommonRxTime = 1 - ���������� ��������� ����������� � ����������
    %   ������  ������� ��������, ��������������� ������ ������
    %   ������� GPS
    % isCommonRxTime = 0 - ���������� ��������� ����������� � ������
    %   ������� ������� ��������, ��������������� ���������� �����
    %   ������� GPS
        isCommonRxTime = Params.P70_GetRXPoses.isCommonRxTime;
        
    % ���������� ������ ���������, ����������� ��� ���������� ���������:
    % 'all' - ��� ��������;
    % 'firstX' - ������ � ���������, �������� 'first5';
    % [1, 2, 5, 7] - ���������� ������.
        SatNums2Pos = Params.P70_GetRXPoses.SatNums2Pos;

%% ���ר� ����������
    % �������� ������������� �������
        dt = 1/Res.File.Fs;

    % ��������� ���������� ������ ���������
        if ischar(SatNums2Pos)
            if strcmp(SatNums2Pos, 'all')
                CurSatNums2Pos = 1:Res.Search.NumSats;
            else
                Buf = str2double(SatNums2Pos(6:end));
                CurSatNums2Pos = 1:Buf;
            end
        else
            CurSatNums2Pos = SatNums2Pos;
        end
    
%% ���ר� ���������

P71_GetOneRXPos
P76_ExportResults

end

function tGPS = GettGPS(SampleNum, SamplesNums, RefCANum, RefTOW, dt)
%
% ������� ���������� tGPS ��� ������� ������� SampleNum
%
% ������� ����������
%   SampleNum - ����� ������� ������, ��� �������� ���� ��������� �����
%       GPS;
%   SamplesNums - ������ ������ �������� CA-����� �������� ��������;
%   RefCANum - ����� CA-����, ������� �������� ������ � ��������, � �������
%       ��������� �������� RefTOW;
%   RefTOW - �������� RefTOW;
%   dt - �������� ������������� ������.
%
% �������� ����������
%   tGPS - ����� GPS � ������ SampleNum.

% ���������
    TCA = 10^-3;
end