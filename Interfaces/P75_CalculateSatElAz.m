function [El, Az] = P75_CalculateSatElAz(Sxyz, Uxyz, Params)
%
% ������ ���������� ���������� ����� ����� � ������� ��������
% ������������ ��������� ������������

% ������� ����������
%   Sxyz - ������ (1 x 3) ��������� x, y, z ��������;
%   Uxyz - ������ (1 � 3) ��������� x, y, z ������������.
%
% �������� ����������
%   El - ������, ���� ����� (semicircles);
%   Az - ������, ������ (semicircles).