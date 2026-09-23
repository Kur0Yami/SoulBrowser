package androidx.mediarouter.media;

import android.content.Context;
import android.content.Intent;
import android.media.MediaRoute2ProviderService;
import android.media.RouteDiscoveryPreference;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouter;
import java.util.ArrayList;

@RequiresApi
/* loaded from: classes.dex */
class MediaRoute2ProviderServiceAdapter extends MediaRoute2ProviderService {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1357c = 0;

    /* renamed from: androidx.mediarouter.media.MediaRoute2ProviderServiceAdapter$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends MediaRouter.ControlRequestCallback {
        public static void c(Messenger messenger, int i, int i2, Bundle bundle, Bundle bundle2) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = i2;
            obtain.arg2 = 0;
            obtain.obj = bundle;
            obtain.setData(bundle2);
            try {
                messenger.send(obtain);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                Log.e("MR2ProviderService", "Could not send message to the client.", e);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
        public final void a(String str, Bundle bundle) {
            int i = MediaRoute2ProviderServiceAdapter.f1357c;
            if (str != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("error", str);
                c(null, 4, 0, bundle, bundle2);
                return;
            }
            c(null, 4, 0, bundle, null);
        }

        @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
        public final void b(Bundle bundle) {
            int i = MediaRoute2ProviderServiceAdapter.f1357c;
            c(null, 3, 0, bundle, null);
        }
    }

    /* loaded from: classes.dex */
    public static class IncomingHandler extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger = message.replyTo;
            int i = message.what;
            Object obj = message.obj;
            Bundle data = message.getData();
            if (i != 7) {
                if (i != 8) {
                    if (i == 9 && (obj instanceof Intent)) {
                        throw null;
                    }
                    return;
                } else {
                    int i2 = data.getInt("volume", 0);
                    String string = data.getString("routeId");
                    if (i2 != 0 && string != null) {
                        throw null;
                    }
                    return;
                }
            }
            int i3 = data.getInt("volume", -1);
            String string2 = data.getString("routeId");
            if (i3 >= 0 && string2 != null) {
                throw null;
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public final class SessionRecord {
    }

    static {
        Log.isLoggable("MR2ProviderService", 3);
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void onCreateSession(long j, String str, String str2, Bundle bundle) {
        throw null;
    }

    public final void onDeselectRoute(long j, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onDeselectRoute: Couldn't find a session");
            notifyRequestFailed(j, 4);
            return;
        }
        throw null;
    }

    public final void onDiscoveryPreferenceChanged(RouteDiscoveryPreference routeDiscoveryPreference) {
        MediaRouter2Utils.c(routeDiscoveryPreference);
        throw null;
    }

    public final void onReleaseSession(long j, String str) {
        if (getSessionInfo(str) == null) {
        } else {
            throw null;
        }
    }

    public final void onSelectRoute(long j, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onSelectRoute: Couldn't find a session");
            notifyRequestFailed(j, 4);
            return;
        }
        throw null;
    }

    public final void onSetRouteVolume(long j, String str, int i) {
        throw null;
    }

    public final void onSetSessionVolume(long j, String str, int i) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onSetSessionVolume: Couldn't find a session");
            notifyRequestFailed(j, 4);
            return;
        }
        throw null;
    }

    public final void onTransferToRoute(long j, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onTransferToRoute: Couldn't find a session");
            notifyRequestFailed(j, 4);
            return;
        }
        throw null;
    }

    /* loaded from: classes.dex */
    public static class DynamicGroupRouteControllerProxy extends MediaRouteProvider.DynamicGroupRouteController {
        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void d() {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void e() {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void f(int i) {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void h(int i) {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void i(int i) {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void m(String str) {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void n(String str) {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void o(ArrayList arrayList) {
        }
    }
}
