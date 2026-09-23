package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import android.util.Log;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.RouteListingPreference;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzbl extends MediaRouter.Callback {
    public static final Logger d = new Logger("MediaRouterCallback", null);

    /* renamed from: a, reason: collision with root package name */
    public final zzbg f9631a;
    public final zzbx b;

    /* renamed from: c, reason: collision with root package name */
    public final zzce f9632c;

    public zzbl(zzbg zzbgVar, zzbx zzbxVar, zzce zzceVar) {
        this.f9631a = (zzbg) Preconditions.checkNotNull(zzbgVar);
        this.b = zzbxVar;
        this.f9632c = zzceVar;
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        try {
            this.f9631a.U1(routeInfo.f1387c, routeInfo.s);
        } catch (RemoteException e) {
            d.a(e, "Unable to call %s on %s.", "onRouteAdded", "zzbg");
        }
        o(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        if (!routeInfo.h()) {
            return;
        }
        try {
            this.f9631a.t1(routeInfo.f1387c, routeInfo.s);
        } catch (RemoteException e) {
            d.a(e, "Unable to call %s on %s.", "onRouteChanged", "zzbg");
        }
        o(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void f(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
        String str = routeInfo2.f1387c;
        int i = routeInfo.l;
        String str2 = routeInfo.f1387c;
        Logger logger = d;
        if (i != 1) {
            Log.i(logger.f3604a, logger.d("ignore onRouteConnected for non-remote connected routeId: %s", str2));
            return;
        }
        Log.i(logger.f3604a, logger.d("onRouteConnected with connectedRouteId = %s", str2));
        this.b.k = true;
        try {
            zzbg zzbgVar = this.f9631a;
            if (zzbgVar.zze() >= 251600000) {
                zzbgVar.E4(str, routeInfo.s, str2);
            } else {
                zzbgVar.d4(str, routeInfo.s, str2);
            }
        } catch (RemoteException e) {
            logger.a(e, "Unable to call %s on %s.", "onRouteConnected", "zzbg");
        }
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void g(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, int i) {
        String str = routeInfo2.f1387c;
        Logger logger = d;
        if (routeInfo != null) {
            String str2 = routeInfo.f1387c;
            if (routeInfo.l == 1) {
                Log.i(logger.f3604a, logger.d("onRouteDisconnected with disconnectedRouteId = %s, requestedRouteId = %s, reason = %d", ((MediaRouter.RouteInfo) Preconditions.checkNotNull(routeInfo)).f1387c, str, Integer.valueOf(i)));
                this.b.k = false;
                try {
                    zzbg zzbgVar = this.f9631a;
                    if (zzbgVar.zze() >= 251600000) {
                        zzbgVar.N1(i, routeInfo.s, str, str2);
                        return;
                    } else {
                        zzbgVar.Y3(str2, i, routeInfo.s);
                        return;
                    }
                } catch (RemoteException e) {
                    logger.a(e, "Unable to call %s on %s.", "onRouteDisconnected", "zzbg");
                    return;
                }
            }
        }
        Log.i(logger.f3604a, logger.d("ignore onRouteDisconnected for invalid or non-remote disconnected route", new Object[0]));
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        try {
            this.f9631a.C0(routeInfo.f1387c, routeInfo.s);
        } catch (RemoteException e) {
            d.a(e, "Unable to call %s on %s.", "onRouteRemoved", "zzbg");
        }
        o(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void j(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, int i, MediaRouter.RouteInfo routeInfo2) {
        int i2 = routeInfo.l;
        String str = routeInfo.f1387c;
        Logger logger = d;
        if (i2 != 1) {
            Log.i(logger.f3604a, logger.d("ignore onRouteSelected for non-remote selected routeId: %s", str));
            return;
        }
        Log.i(logger.f3604a, logger.d("onRouteSelected with reason = %d, routeId = %s", Integer.valueOf(i), str));
        try {
            zzbg zzbgVar = this.f9631a;
            if (zzbgVar.zze() >= 220400000) {
                zzbgVar.d4(routeInfo2.f1387c, routeInfo.s, str);
            } else {
                zzbgVar.I(routeInfo2.f1387c, routeInfo.s);
            }
        } catch (RemoteException e) {
            logger.a(e, "Unable to call %s on %s.", "onRouteSelected", "zzbg");
        }
        o(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void l(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, int i) {
        int i2 = routeInfo.l;
        String str = routeInfo.f1387c;
        Logger logger = d;
        if (i2 != 1) {
            Log.i(logger.f3604a, logger.d("ignore onRouteUnselected for non-remote routeId: %s", str));
            return;
        }
        Log.i(logger.f3604a, logger.d("onRouteUnselected with reason = %d, routeId = %s", Integer.valueOf(i), str));
        try {
            this.f9631a.Y3(str, i, routeInfo.s);
        } catch (RemoteException e) {
            logger.a(e, "Unable to call %s on %s.", "onRouteUnselected", "zzbg");
        }
        o(mediaRouter);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, androidx.mediarouter.media.RouteListingPreference$Builder] */
    public final void o(MediaRouter mediaRouter) {
        CastSession castSession;
        zzce zzceVar = this.f9632c;
        if (zzceVar != null && zzceVar.f && zzceVar.f9648a.u) {
            SessionManager sessionManager = zzceVar.g;
            if (sessionManager != null) {
                castSession = sessionManager.c();
            } else {
                castSession = null;
            }
            if (castSession == null) {
                MediaRouter.s(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList k = MediaRouter.k();
            int size = k.size();
            int i = 0;
            while (i < size) {
                Object obj = k.get(i);
                i++;
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
                if (CastDevice.F(routeInfo.s) != null) {
                    arrayList.add(new RouteListingPreference.Item(new RouteListingPreference.Item.Builder(routeInfo.f1387c)));
                }
            }
            zzce.i.b("updateRouteListingPreference with %d available routes", Integer.valueOf(arrayList.size()));
            ?? obj2 = new Object();
            obj2.f1416a = Collections.EMPTY_LIST;
            obj2.b = true;
            obj2.f1416a = DesugarCollections.unmodifiableList(new ArrayList(arrayList));
            MediaRouter.s(new RouteListingPreference(obj2));
        }
    }
}
