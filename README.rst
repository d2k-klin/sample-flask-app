**************
Notejam: Flask
**************

Notejam application implemented using `Flask <http://flask.pocoo.org/>`_ microframework.

Flask extension used:

* Flask-Login
* Flask-Mail
* Flask-SQLAlchemy
* Flask-Testing
* Flask-WTF

==========================
Installation and launching
==========================

-----
Clone
-----

Clone the repo:

.. code-block:: bash

    $ git clone git@github.com:d2k-klin/sample-flask-app.git YOUR_PROJECT_DIR/

-------
Install
-------
Use `virtualenv <http://www.virtualenv.org>`_ or `virtualenvwrapper <http://virtualenvwrapper.readthedocs.org/>`_
for `environment management <http://docs.python-guide.org/en/latest/dev/virtualenvs/>`_.

Install dependencies:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/flask/
    $ pip install -r requirements.txt

Create database schema:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/flask/
    $ python db.py

------
Launch
------

Start flask web server:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/flask/
    $ python runserver.py

Go to http://127.0.0.1:5000/ in your browser

Start flask web server (docker container):

.. code-block:: bash

    $ docker build -t notejam-dev .
    $ docker run -d -p 5000:5000 notejam-dev

Go to http://127.0.0.1:5000/ in your browser

---------
Run tests
---------

Run functional and unit tests:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/flask/
    $ python tests.py

------
Build and push docker image
------

To build and push docker image to AWS ECR run the follwing command:

.. code-block:: bash

    $ ./ecr_deploy_advanced.sh eu-central-1 notejam-dev


============
DISCLAIMER
============
The application is cloned and containerized;
reference source code : https://github.com/komarserjio/notejam/tree/master/flask
 