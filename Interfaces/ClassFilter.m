classdef ClassFilter < handle
% �������� ������ ��� loop filter ���� DLL ��� FLL-assisted PLL filter    
    properties
        % ������� ������� (DLL) ��� (FLL, PLL)
            isDLL;
        % ������� ������� [1], [2], [3] (DLL) ��� [1, 2], [2, 3] (FLL, PLL)
            Order;
        % ������ �������� DLL, FLL, PLL
            Bnd, Bnf, Bnp;
        % ��� ����������� ��������, ���
            T;
        % ������������ �������� �������� � ���������
            VelocAcc, AccelAcc;
        % ������������ �������� DLL, FLL, PLL
            CoefsDLL, CoefsFLL, CoefsPLL;
    end
    methods
        function PrepareFilter(obj, Order, Bn, T, VelocAcc, AccelAcc)
        % ������� ������������� �������
        %
        % ������� ���������
        %   Order - 1 | 2 | 3 | [1, 2] | [2, 3];
        %   Bn    - 1 ��� 2 �������� � �������, �������� >0 � ��.
        %   T     - �������� >0 � ��������.
        %   VelocAcc, AccelAcc - �������������� ���������� ���
        %       ������������� �������������
        
            % ��������� ��� �������

            % �������� ��������� ������� ������ �������

            % ��������� ������������ �������� DLL, FLL � PLL
            
            % �������������� �������� ������������� �������� � ���������
        end
        function ChangeParams(obj, Bn, T, VelocAcc, AccelAcc)
            % �������� ��������� ������� ������ �������

            % ��������� ������������ �������� DLL, FLL � PLL
            
            % �������������� �������� ������������� �������� � ���������
        end
        function [Output, VelocAcc, AccelAcc] = Step(obj, Inp1, Inp2)
        % ������� ���������� �������� ������ ���� �������
        % ������� ������������� Kaplan: page 181, fig 5.20
        %
        % ������� ���������
        %   Inp1, Inp2 - ��� isDLL = true ������������ ������ Inp1 � ���
        %       ����� �������� � ������ �������������� DLL, ��� isDLL =
        %       false �������������� Inp1 - �������� � ������
        %       �������������� FLL � Inp2 - �������� � ������
        %       �������������� PLL
        % �������� ����������
        %   Output - ��������, ������� ����� ������ �� NCO
        %   VelocAcc, AccelAcc - ������� �������� �������������

        end
    end
end

function Coefs = CalcCoefs(Order, Bn)
% ������� ������� ������������� ������� �� �������� ������� �������
% � ��� ������. ������� ����� �� Kaplan: page 180, Table 5.6.
%
% ������� ���������
%   Order - 1 | 2 | 3;
%   Bn    - �������� >0 � ��.
% �������� ����������
%   Coefs - ������ [1xOrder] ������������� �������.

end