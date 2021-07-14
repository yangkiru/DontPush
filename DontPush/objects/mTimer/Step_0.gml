if (!isTimer) return;
if (time > 0) time--;
else {
	script_execute(onTimer);
}