module main

import os
import flag
import filepath

const (
	tool_version     = '0.0.1'
	tool_description = 'Convert raylib.h RLAPI to v'
)

fn main() {
	mut fp := flag.new_flag_parser(os.args)
	fp.application(filepath.filename(os.executable()))
	fp.version(tool_version)
	fp.description(tool_description)
	fp.arguments_description('raylib.h')
	fp.limit_free_args_to_at_least(1)
	fp.skip_executable()
	show_help := fp.bool_('help', `h`, false, 'Show this help screen\n')
	if show_help || os.args.len < 2 || os.args.len > 2 {
		println(fp.usage())
		exit(0)
	}
	println('module vraylib')
	println('')
	parse_hfile(os.realpath(os.args[1]))
	for ctype, counter in context.ctypes {
		println('// CType: $ctype | $counter')
	}
}

struct Context {
mut:
	ctypes map[string]int
}

const (
	context = &Context{}
)

fn (c &Context) add_c_type(ctype string) {
	mut mc := c
	mc.ctypes[ctype] = mc.ctypes[ctype] + 1
}

struct ApiTypedName {
	name string
	kind string
}

pub fn (t ApiTypedName) str() string {
	return 'ApiTypedName{ name: "$t.name" , kind: "$t.kind" }'
}

pub fn (many []ApiTypedName) str() string {
	mut res := []string{}
	for t in many {
		res << t.str()
	}
	return '[' + res.join(', ') + ']'
}

pub fn (t ApiTypedName) vtype() string {
	k := t.kind.replace('RLAPI ', '')
	mut vt := match k {
		'void' { '' }
		'void *' { 'voidptr' }
		'const void *' { 'voidptr' }
		'...' { 'x ...charptr' }
		'const char *' { 'charptr' }
		'unsigned char *' { 'byteptr' }
		'const char **' { '&charptr' }
		'char **' { '&charptr' }
		'unsigned int' { 'u32' }
		'unsigned long' { 'u64' }
		'int *' { '&int' }
		'float *' { '&f32' }
		'float' { 'f32' }
		'double *' { '&f64' }
		'double' { 'f64' }
		'long *' { '&i64' }
		'long' { 'i64' }
		'const CharInfo *' { '&CharInfo' }
		'Rectangle **' { '&PRectangle' }
		else { k }
	}
	// println('vt: "$vt"')
	if vt.len > 0 && vt[0] >= `A` && vt[0] <= `Z` {
		vt = 'C.$vt'
		context.add_c_type(vt)
	}
	if vt.ends_with('*') {
		vt = vt.trim('*')
		vt = '&$vt'
	}
	return vt
}

struct ApiCall {
mut:
	cname   ApiTypedName
	params  []ApiTypedName
	comment string
}

fn parse_hfile(hfile string) {
	lines := os.read_lines(hfile) or { panic(err) }
	mut n := 0
	for i := 0; i < lines.len; i++ {
		mut line := lines[i]
		if !line.starts_with('RLAPI') {
			continue
		}
		if !line.contains(');') {
			i++
			line += lines[i].trim_space()
		}
		n++
		mut call := ApiCall{}
		println('// C Original: $line')
		call.comment = line.all_after('//').trim_space()
		first_lbr_pos := line.index('(') or { continue }
		first_rbr_pos := line.index(')') or { continue }
		rtype, name := split_param_to_type_and_name(line[..first_lbr_pos].trim_space())
		if name == 'SetTraceLogCallback' {
			continue
		}
		// TODO
		call.cname = ApiTypedName{
			name: name
			kind: rtype
		}
		fparams := line[first_lbr_pos + 1..first_rbr_pos].replace(',', ' , ').split(', ')
		for p in fparams {
			ptype, pname := split_param_to_type_and_name(p.trim_space())
			call.params << ApiTypedName{
				name: pname
				kind: ptype
			}
		}
		//		println(call)
		mut vline := []string{}
		vline << 'fn C.${call.cname.name}('
		mut vparams := []string{}
		for t in call.params {
			vt := t.vtype()
			if t.name == '' {
				vparams << vt
				continue
			}
			vparams << 'c_$t.name $vt'
		}
		vline << vparams.join(', ')
		vline << ') $call.cname.vtype() '
		svline := vline.join('')
		resline := '// C.$call.cname.name - $call.comment\n${svline:-67s}'
		// println('n: ${n:4d} | ${resline}')
		println(resline)
		println('')
	}
}

fn split_param_to_type_and_name(param string) (string, string) {
	idx := last_non_alphanum_index(param)
	name := param[idx + 1..]
	rtype := param[..idx + 1].trim_space()
	// println('//   >> param "${param:-25s}" | rtype: "${rtype:-15s}" | name: "${name:-15s}" ')
	if rtype == '' {
		return name, ''
	}
	return rtype, name
}

fn last_non_alphanum_index(s string) int {
	mut i := s.len
	for {
		i--
		if i < 0 {
			break
		}
		c := s[i]
		if !((c >= `a` && c <= `z`) || (c >= `A` && c <= `Z`) || (c >= `0` && c <= `9`)) {
			break
		}
	}
	return i
}

[inline]
fn is_wordchar(c byte) bool {
	return (c - 0x20 < 0x5f) && !(c == ` ` || (c - `\t`) < 5)
}
