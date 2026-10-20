from bottle import route, run, static_file, template, view

@route('/')
@view('home')
def home():
    return {}

@route('/define')
@view('define')
def define():
    return {}

@route('/problem')
@view('problem')
def problem():
    return {}

@route('/action')
@view('action')
def action():
    return {}

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')

if __name__ == '__main__':
    run(host='localhost', port=4321, debug=True, reloader=True)