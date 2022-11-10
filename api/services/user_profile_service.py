from base.models import User, TingkatAktivitas, UserProfile
from api.serializers.UserSerializer import UserProfileSerializer
from django.http import Http404


class UserProfileService():

    def get_object(self, id):
        try:
            return UserProfile.objects.get(id=id)
        except UserProfile.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def post(self, request):
        body = request.data
        try:
            serializer = UserProfileSerializer(data=body)

            if serializer.is_valid():
                user = User.objects.get(id=body['user']['id'])
                tingkat_aktivitas = TingkatAktivitas.objects.get(
                    id=body['tingkat_aktivitas']['id'])

                serializer.save(user=user, tingkat_aktivitas=tingkat_aktivitas)

            return serializer

        except Exception as e:
            raise Exception(e.args)

    def put(self, request, id):
        body = request.data
        try:
            # queryset = UserProfile.objects.get(id=id)
            queryset = self.get_object(id)
            serializer = UserProfileSerializer(queryset, data=body)

            if serializer.is_valid():
                tingkat_aktivitas = TingkatAktivitas.objects.get(
                    id=body['tingkat_aktivitas']['id'])

                serializer.save(tingkat_aktivitas=tingkat_aktivitas)

            return serializer

        except Exception as e:
            raise Exception(e.args)
