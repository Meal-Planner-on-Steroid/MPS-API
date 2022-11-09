from base.models import User, TingkatAktivitas
from api.serializers.UserSerializer import UserProfileSerializer

class UserProfileService():
    
    def post(self, request):
        body = request.data
        try:
            serializer = UserProfileSerializer(data=body)
            
            if serializer.is_valid():
                user = User.objects.get(id=body['user']['id'])
                tingkat_aktivitas = TingkatAktivitas.objects.get(id=body['tingkat_aktivitas']['id'])
                
                serializer.save(user=user, tingkat_aktivitas=tingkat_aktivitas)
            
            return serializer.data

        except Exception as e:
            return e.args
        
    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)
            serializer = UserProfileSerializer(queryset, data=body)

            if serializer.is_valid():
                tingkat_aktivitas = TingkatAktivitas.objects.get(id=body['tingkat_aktivitas']['id'])
                
                serializer.save(tingkat_aktivitas=tingkat_aktivitas)
            
            return serializer.data

        except Exception as e:
            return e.args