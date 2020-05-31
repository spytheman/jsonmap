import os
import iaiao.jsonmap

fn test_parsing_file() {
	file := os.read_file('test.json') or { panic(err) }
    assert true
	mut parser := jsonmap.default_parser()
	m := parser.parse(file)
	//println(m)
    assert m['key1'] == 'value1'
    assert m['object.c'] == 'd'
    assert m['object.obj.e'] == 'f'
}
