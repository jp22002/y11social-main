from bottle import Bottle, run, static_file, template, view

app = Bottle()

@app.route('/')
@view('home')
def home():
    return {}

@app.route('/define')
@view('define')
def define():
    return {}

@app.route('/problem')
@view('problem')
def problem():
    return {}

@app.route('/action')
@view('action')
def action():
    return {}

@app.route('/helps')
@view('helps')
def helps():
    return {}

@app.route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static')

if __name__ == '__main__':
    import os
    app.run(
        host='localhost', 
        port=int(os.environ.get('PORT', 8080)),
        debug=False
    )
    