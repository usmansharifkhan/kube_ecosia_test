
import falcon

class FavTree:
    def on_get(self, req, resp):
        """Handles GET requests"""
        resp_msg = {
            'myFavouriteTree': 'oak'
        }

        resp.media = resp_msg


api = falcon.API()
api.add_route('/tree', FavTree())
