class RabbitsSerializer(object):
    @staticmethod
    def serialize(queryset):
        return [{'rabbit': rabbit.name, 'code': rabbit.code} for rabbit in queryset]
