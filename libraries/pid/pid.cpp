/*
  A basic PID class.
  by Axel Brinkeby.
  2016-05-08
*/

#include "Arduino.h"
#include "pid.h"

Pid::Pid(float p, float i, float d, float iLimit)
{
  _P = p;
  _I = i;
  _D = d;
  _I_limit = iLimit;
  _integratedError = 0;
  _lastError = 0;
}

float Pid::updatePID(float target, float current, float dTime)
{
  float error = (target - current);

  float pPart = _P * error;

  _integratedError += error * dTime;
  _integratedError = constrain(_integratedError, -_I_limit, _I_limit);
  float iPart = _I * _integratedError ;

  float dPart = _D * ((error - _lastError) / dTime) ;

  _lastError = error;

  return (pPart + iPart + dPart);
}

float Pid::updatePID(float target, float current)
{
  float error = (target - current);

  float pPart = _P * error;

  _integratedError += error;
  _integratedError = constrain(_integratedError, -_I_limit, _I_limit);
  float iPart = _I * _integratedError;

  float dPart = _D * (error - _lastError);

  _lastError = error;

  return (pPart + iPart + dPart);
}

float Pid::updatePID2(float target, float current)
{
  float error = (target - current);

  float pPart = _P * error;

  _integratedError += _I *error;
  _integratedError = constrain(_integratedError, -_I_limit, _I_limit);
  float iPart =  _integratedError;

  float dPart = _D * (error - _lastError);

  _lastError = error;

  return (pPart + iPart + dPart);
}

void Pid::resetPID()
{
  _integratedError = 0;
  _lastError = 0;
}

void Pid::setP(float p)
{
  _P = p;
}

void Pid::setI(float i)
{
  _I = i;
}

void Pid::setD(float d)
{
  _D = d;
}

void Pid::setIlimit(float limit)
{
  _I_limit = limit;
}

float Pid::getP()
{
  return _P;
}

float Pid::getI()
{
  return _I;
}

float Pid::getD()
{
  return _D;
}

float Pid::getIlimit()
{
  return _I_limit;
}

