class RabbitsSerializer(object):
    @staticmethod
    def serialize(queryset):
        return [{'rabbit': rabbit.name, 'code': rabbit.code, 'coordinates': f'{rabbit.latitude} ; {rabbit.longitude}'}
                for rabbit in queryset]
