import json


def read_Json_file(jsonfile):
    try:
        with open(jsonfile, mode='r') as jsonObject:
            return json.load(jsonObject)

    except:
        pass


class reader:
    pass
