package com.google.android.gms.internal.cast;

import android.os.Bundle;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastDevice;

/* loaded from: classes.dex */
final class zzed extends MediaRouter.Callback {
    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzee.f9678a.b("RemoteConnectionMediaRouterCallback.onRouteAdded.", new Object[0]);
        throw null;
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzee.f9678a.b("RemoteConnectionMediaRouterCallback.onRouteChanged.", new Object[0]);
        throw null;
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        CastDevice F;
        zzee.f9678a.b("RemoteConnectionMediaRouterCallback.onRouteRemoved.", new Object[0]);
        Bundle bundle = routeInfo.s;
        if (bundle == null || (F = CastDevice.F(bundle)) == null) {
            return;
        }
        bundle.getString("com.google.android.gms.cast.EXTRA_RUNNING_RECEIVER_APP_ID");
        String str = F.f3432c;
        if (str.startsWith("__cast_nearby__")) {
            str.substring(16);
        }
        throw null;
    }
}
