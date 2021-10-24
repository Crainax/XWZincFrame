#ifndef ExportUserdataIncluded
#define ExportUserdataIncluded

//! zinc
library ExportUserdata requires Xwei
{

	function onInit() {
		// 表A
		userSet(integer, 'i000', integer, "属性名A", 'j222');
		// 表B
		userSet(integer, 'h000', integer, "属性名B", 'i000');
	}

}
//! endzinc

#endif /// ExportUserdataIncluded

