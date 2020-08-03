import 'package:xml/xml.dart';

void main () {
	var data = "<error><ret>0</ret><message></message><skey>@crypt_2db6ec90_a3ec41b777fc0aaf4f5ea5973e305745</skey><wxsid>CT3dDtSgNssFZqWM</wxsid><wxuin>2715895700</wxuin><pass_ticket>CGZsyhhEsGXMrowVBQzySlGc757gGijfM1ZRLlKAdjaqSTDE6rSjDzxr9KpKH5Va</pass_ticket><isgrayscale>1</isgrayscale></error>";
	final doc = XmlDocument.parse(data);
	print(doc.findElements("error").first.findElements("ret").first.text);
}