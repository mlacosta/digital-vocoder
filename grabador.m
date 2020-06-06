clear all
clc
r = audiorecorder(48000,16,1);
recordblocking(r,2);
x = getaudiodata(r);
