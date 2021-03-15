from notejam import app
from notejam.config import DevelopmentConfig
from notejam import db
import os.path

app.config.from_object(DevelopmentConfig)

if os.path.isfile('/db_folder/notejam.db'):
    print ("DB exist")
else:
    print ("DB not exist")
    # Create db schema
    db.create_all()

@app.route('/ping')
def ping():    
    return 'PONG', 200

if __name__ == '__main__':
    app.run(host="0.0.0.0",
    port=5000)
