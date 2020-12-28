# Server > Stability > HardErrorMode
---

## Purpose

sdjjlkjldsjfkjkldsjfkjdsj

## Remediation

## Explanation

Windows Hard 

 Value | Default | Remarks 
-------|---------|---------
 0     | [ ]     | This is the default operating mode that serializes the errors and waits for a response.
 1     | [x]     | If the error doesn't come from the system, this is the normal operating mode. If the error comes from the system, this logs the error to the event log and returns OK to the hard error. No intervention is required and the popup isn't seen.
 2     | [ ]     | This always logs the error to the event log and returns OK to the hard error. Popups aren't seen.


 Please refer to the [Microsoft Documentation](https://docs.microsoft.com/en-us/troubleshoot/windows/win32/hard-error-popup-mode)