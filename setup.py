
try:
  from setuptools import setup
except ImportError:
  from distutils.core import setup


setup(
    name='rest_server',
    version='0.1',
    description='A REST Server that provides get capabilty for a single endpoint',
    author='Usman Khan',
    py_modules=['rest_server'],
    install_requires=[
      'falcon==1.4.1',
      'gunicorn==19.9.0'
    ]
)