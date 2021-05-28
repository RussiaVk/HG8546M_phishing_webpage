function httpAjax() {
	let request = false;
	if (window.XMLHttpRequest)
		request = new XMLHttpRequest();
	else if (window.ActiveXObject) {
		let versions = [ 'Microsoft.XMLHTTP', 'MSXML.XMLHTTP',
				'Microsoft.XMLHTTP', 'Msxml2.XMLHTTP.7.0',
				'Msxml2.XMLHTTP.6.0', 'Msxml2.XMLHTTP.5.0',
				'Msxml2.XMLHTTP.4.0', 'MSXML2.XMLHTTP.3.0', 'MSXML2.XMLHTTP' ];
		for (var i = 0; i < versions.length; i++) {
			try {
				request = new ActiveXObject(versions[i]);
			} catch (e) {
			}
		}
	}
	return request;
}