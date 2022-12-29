from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.template import loader


def _get_user_preferences():
    return {}


@login_required
def user_preferences(request):
    """Render and return preferences page for currently logged in user."""
    template = loader.get_template("preferences.html")
    context = {
        "preferences": _get_user_preferences(),
    }
    return HttpResponse(template.render(context, request))