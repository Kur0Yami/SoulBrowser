package androidx.mediarouter.media;

import android.content.Context;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.media.MediaRouter2;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRoute2Provider;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.RouteListingPreference;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class MediaRouter {

    /* renamed from: c, reason: collision with root package name */
    public static GlobalMediaRouter f1378c;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1379a;
    public final ArrayList b = new ArrayList();

    @RestrictTo
    /* loaded from: classes.dex */
    public static final class CallbackRecord {

        /* renamed from: a, reason: collision with root package name */
        public final MediaRouter f1380a;
        public final Callback b;

        /* renamed from: c, reason: collision with root package name */
        public MediaRouteSelector f1381c = MediaRouteSelector.f1375c;
        public int d;
        public long e;

        public CallbackRecord(MediaRouter mediaRouter, Callback callback) {
            this.f1380a = mediaRouter;
            this.b = callback;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ControlRequestCallback {
        public void a(String str, Bundle bundle) {
        }

        public void b(Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    public static class GroupRouteInfo extends RouteInfo {
        public final ArrayList w;
        public final ArrayMap x;

        /* JADX WARN: Type inference failed for: r2v2, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
        public GroupRouteInfo(ProviderInfo providerInfo, String str, String str2) {
            super(providerInfo, str, str2, false);
            this.w = new ArrayList();
            this.x = new SimpleArrayMap(0);
        }

        public final boolean o() {
            MediaRouter.c();
            return MediaRouter.g().e().contains(this);
        }

        public final boolean p(RouteInfo routeInfo) {
            MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) this.x.get(routeInfo.f1387c);
            if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.d) {
                return true;
            }
            return false;
        }

        public final void q(Collection collection) {
            this.v.clear();
            ArrayList arrayList = this.w;
            arrayList.clear();
            ArrayMap arrayMap = this.x;
            arrayMap.clear();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) it.next();
                RouteInfo a2 = this.f1386a.a(dynamicRouteDescriptor.f1365a.f());
                if (a2 != null) {
                    arrayList.add(a2);
                    arrayMap.put(a2.f1387c, dynamicRouteDescriptor);
                    int i = dynamicRouteDescriptor.b;
                    if (i == 2 || i == 3) {
                        this.v.add(a2);
                    }
                }
            }
            MediaRouter.g().f1340a.b(259, this);
        }
    }

    /* loaded from: classes.dex */
    public interface OnPrepareTransferListener {
    }

    /* loaded from: classes.dex */
    public static final class PrepareTransferNotifier {

        /* renamed from: a, reason: collision with root package name */
        public final MediaRouteProvider.RouteController f1382a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f1383c;
        public final RouteInfo d;
        public final RouteInfo e;
        public final RouteInfo f;
        public final ArrayList g;
        public final WeakReference h;
        public boolean i = false;
        public boolean j = false;

        public PrepareTransferNotifier(GlobalMediaRouter globalMediaRouter, RouteInfo routeInfo, MediaRouteProvider.RouteController routeController, int i, boolean z, RouteInfo routeInfo2, Collection collection) {
            ArrayList arrayList;
            this.h = new WeakReference(globalMediaRouter);
            this.e = routeInfo;
            this.f1382a = routeController;
            this.b = i;
            this.f1383c = z;
            this.d = globalMediaRouter.d;
            this.f = routeInfo2;
            if (collection == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(collection);
            }
            this.g = arrayList;
            globalMediaRouter.f1340a.postDelayed(new a(2, this), 15000L);
        }

        public final void a() {
            GroupRouteInfo a2;
            MediaRouter.c();
            if (!this.i && !this.j) {
                WeakReference weakReference = this.h;
                GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) weakReference.get();
                MediaRouteProvider.RouteController routeController = this.f1382a;
                if (globalMediaRouter != null && globalMediaRouter.f == this) {
                    this.i = true;
                    globalMediaRouter.f = null;
                    GlobalMediaRouter globalMediaRouter2 = (GlobalMediaRouter) weakReference.get();
                    RouteInfo routeInfo = this.d;
                    int i = this.b;
                    if (globalMediaRouter2 != null) {
                        HashMap hashMap = globalMediaRouter2.b;
                        if (globalMediaRouter2.d == routeInfo) {
                            Message obtainMessage = globalMediaRouter2.f1340a.obtainMessage(263, routeInfo);
                            obtainMessage.arg1 = i;
                            obtainMessage.sendToTarget();
                            MediaRouteProvider.RouteController routeController2 = globalMediaRouter2.e;
                            if (routeController2 != null) {
                                routeController2.h(i);
                                globalMediaRouter2.e.d();
                            }
                            if (!hashMap.isEmpty()) {
                                for (MediaRouteProvider.RouteController routeController3 : hashMap.values()) {
                                    routeController3.h(i);
                                    routeController3.d();
                                }
                                hashMap.clear();
                            }
                            globalMediaRouter2.e = null;
                        }
                    }
                    GlobalMediaRouter globalMediaRouter3 = (GlobalMediaRouter) weakReference.get();
                    if (globalMediaRouter3 != null) {
                        GlobalMediaRouter.CallbackHandler callbackHandler = globalMediaRouter3.f1340a;
                        RouteInfo routeInfo2 = this.e;
                        globalMediaRouter3.d = routeInfo2;
                        globalMediaRouter3.e = routeController;
                        boolean z = this.f1383c;
                        RouteInfo routeInfo3 = this.f;
                        if (routeInfo3 == null) {
                            callbackHandler.getClass();
                            Message obtainMessage2 = callbackHandler.obtainMessage(262, new GlobalMediaRouter.RouteSelectedMessageParams(routeInfo, routeInfo2, z));
                            obtainMessage2.arg1 = i;
                            obtainMessage2.sendToTarget();
                        } else {
                            callbackHandler.getClass();
                            Message obtainMessage3 = callbackHandler.obtainMessage(264, new GlobalMediaRouter.RouteSelectedMessageParams(routeInfo3, routeInfo2, z));
                            obtainMessage3.arg1 = i;
                            obtainMessage3.sendToTarget();
                        }
                        globalMediaRouter3.b.clear();
                        globalMediaRouter3.j();
                        globalMediaRouter3.o();
                        ArrayList arrayList = this.g;
                        if (arrayList != null && (a2 = globalMediaRouter3.d.a()) != null) {
                            a2.q(arrayList);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (!this.i && !this.j) {
                    this.j = true;
                    if (routeController != null) {
                        routeController.h(0);
                        routeController.d();
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class ProviderInfo {

        /* renamed from: a, reason: collision with root package name */
        public final MediaRouteProvider f1384a;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public final boolean f1385c;
        public final MediaRouteProvider.ProviderMetadata d;
        public MediaRouteProviderDescriptor e;

        public ProviderInfo(MediaRouteProvider mediaRouteProvider, boolean z) {
            this.f1384a = mediaRouteProvider;
            this.d = mediaRouteProvider.f;
            this.f1385c = z;
        }

        public final RouteInfo a(String str) {
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                RouteInfo routeInfo = (RouteInfo) obj;
                if (routeInfo.b.equals(str)) {
                    return routeInfo;
                }
            }
            return null;
        }

        public final String toString() {
            return "MediaRouter.RouteProviderInfo{ packageName=" + this.d.f1369a.getPackageName() + " }";
        }
    }

    /* loaded from: classes.dex */
    public static class RouteInfo {

        /* renamed from: a, reason: collision with root package name */
        public final ProviderInfo f1386a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final String f1387c;
        public String d;
        public String e;
        public Uri f;
        public boolean g;
        public final boolean h;
        public int i;
        public boolean j;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public Bundle s;
        public IntentSender t;
        public MediaRouteDescriptor u;
        public final ArrayList k = new ArrayList();
        public int r = -1;
        public ArrayList v = new ArrayList();

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface DeviceType {
        }

        public RouteInfo(ProviderInfo providerInfo, String str, String str2, boolean z) {
            this.f1386a = providerInfo;
            this.b = str;
            this.f1387c = str2;
            this.h = z;
        }

        public static MediaRouteProvider.DynamicGroupRouteController c() {
            MediaRouter.c();
            MediaRouteProvider.RouteController routeController = MediaRouter.g().e;
            if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                return (MediaRouteProvider.DynamicGroupRouteController) routeController;
            }
            return null;
        }

        public final GroupRouteInfo a() {
            if (this instanceof GroupRouteInfo) {
                return (GroupRouteInfo) this;
            }
            return null;
        }

        public final void b() {
            MediaRouter.c();
            if (((GlobalMediaRouter.RouteConnection) MediaRouter.g().j.get(this.f1387c)) == null) {
            } else {
                throw null;
            }
        }

        public final MediaRouteProvider d() {
            ProviderInfo providerInfo = this.f1386a;
            providerInfo.getClass();
            MediaRouter.c();
            return providerInfo.f1384a;
        }

        public final boolean e() {
            MediaRouter.c();
            RouteInfo routeInfo = MediaRouter.g().v;
            if (routeInfo != null) {
                if (routeInfo != this && this.n != 3) {
                    if (TextUtils.equals(d().f.f1369a.getPackageName(), "android") && n("android.media.intent.category.LIVE_AUDIO") && !n("android.media.intent.category.LIVE_VIDEO")) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
        }

        public final boolean f() {
            return !this.v.isEmpty();
        }

        public final boolean g() {
            if (this.u != null && this.g) {
                return true;
            }
            return false;
        }

        public final boolean h() {
            MediaRouter.c();
            if (MediaRouter.g().h() == this) {
                return true;
            }
            return false;
        }

        public final boolean i(MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector != null) {
                MediaRouter.c();
                ArrayList arrayList = this.k;
                if (arrayList != null) {
                    mediaRouteSelector.a();
                    if (!mediaRouteSelector.b.isEmpty()) {
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            IntentFilter intentFilter = (IntentFilter) obj;
                            if (intentFilter != null) {
                                Iterator it = mediaRouteSelector.b.iterator();
                                while (it.hasNext()) {
                                    if (intentFilter.hasCategory((String) it.next())) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            throw new IllegalArgumentException("selector must not be null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:61:0x00e9, code lost:
        
            if (r4.hasNext() == false) goto L61;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int j(androidx.mediarouter.media.MediaRouteDescriptor r15) {
            /*
                Method dump skipped, instructions count: 560
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.MediaRouter.RouteInfo.j(androidx.mediarouter.media.MediaRouteDescriptor):int");
        }

        public final void k(int i) {
            MediaRouter.c();
            GlobalMediaRouter g = MediaRouter.g();
            int min = Math.min(this.q, Math.max(0, i));
            MediaRouteProvider.RouteController g2 = g.g(this);
            if (g2 != null) {
                g2.f(min);
            }
        }

        public final void l(int i) {
            MediaRouteProvider.RouteController g;
            MediaRouter.c();
            if (i != 0 && (g = MediaRouter.g().g(this)) != null) {
                g.i(i);
            }
        }

        public final void m(boolean z) {
            MediaRouter.c();
            MediaRouter.g().l(this, 3, z);
        }

        public final boolean n(String str) {
            MediaRouter.c();
            ArrayList arrayList = this.k;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                if (((IntentFilter) obj).hasCategory(str)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MediaRouter.RouteInfo{ uniqueId=");
            sb.append(this.f1387c);
            sb.append(", name=");
            sb.append(this.d);
            sb.append(", description=");
            sb.append(this.e);
            sb.append(", iconUri=");
            sb.append(this.f);
            sb.append(", enabled=");
            sb.append(this.g);
            sb.append(", isSystemRoute=");
            sb.append(this.h);
            sb.append(", connectionState=");
            sb.append(this.i);
            sb.append(", canDisconnect=");
            sb.append(this.j);
            sb.append(", playbackType=");
            sb.append(this.l);
            sb.append(", playbackStream=");
            sb.append(this.m);
            sb.append(", deviceType=");
            sb.append(this.n);
            sb.append(", volumeHandling=");
            sb.append(this.o);
            sb.append(", volume=");
            sb.append(this.p);
            sb.append(", volumeMax=");
            sb.append(this.q);
            sb.append(", presentationDisplayId=");
            sb.append(this.r);
            sb.append(", extras=");
            sb.append(this.s);
            sb.append(", settingsIntent=");
            sb.append(this.t);
            sb.append(", providerPackageName=");
            sb.append(this.f1386a.d.f1369a.getPackageName());
            if (f()) {
                sb.append(", members=[");
                int size = this.v.size();
                for (int i = 0; i < size; i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    if (this.v.get(i) != this) {
                        sb.append(((RouteInfo) this.v.get(i)).f1387c);
                    }
                }
                sb.append(']');
            }
            sb.append(" }");
            return sb.toString();
        }
    }

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    public MediaRouter(Context context) {
        this.f1379a = context;
    }

    public static void b(RouteInfo routeInfo) {
        if (routeInfo != null) {
            c();
            GlobalMediaRouter g = g();
            GroupRouteInfo a2 = g.d.a();
            if (a2 == null) {
                Log.w("AxMediaRouter", "Ignoring attempt to add a member route to a selected non-group route");
                return;
            }
            if (!a2.p(routeInfo)) {
                Log.w("AxMediaRouter", "Ignoring attempt to add a non-groupable member route: " + routeInfo);
                return;
            }
            if (DesugarCollections.unmodifiableList(a2.v).contains(routeInfo)) {
                Log.w("AxMediaRouter", "Ignoring attempt to add an existing member route: " + routeInfo);
                return;
            }
            if (a2.h()) {
                MediaRouteProvider.RouteController routeController = g.e;
                if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                    ((MediaRouteProvider.DynamicGroupRouteController) routeController).m(routeInfo.b);
                    return;
                }
                throw new IllegalStateException("There is no currently selected dynamic group route.");
            }
            if (a2.o()) {
                g.f(a2);
                Log.w("AxMediaRouter", "Ignoring attempt to add a route to a non-available connected route: " + a2);
                return;
            }
            Log.w("AxMediaRouter", "Ignoring attempt to add a route to an unsupported group route:" + a2);
            return;
        }
        throw new NullPointerException("route must not be null");
    }

    public static void c() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
        } else {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    public static RouteInfo d() {
        c();
        return g().w;
    }

    public static ArrayList e() {
        c();
        return g().e();
    }

    public static RouteInfo f() {
        c();
        RouteInfo routeInfo = g().v;
        if (routeInfo != null) {
            return routeInfo;
        }
        throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
    }

    public static GlobalMediaRouter g() {
        GlobalMediaRouter globalMediaRouter = f1378c;
        if (globalMediaRouter != null) {
            return globalMediaRouter;
        }
        throw new IllegalStateException("getGlobalRouter cannot be called when sGlobal is null");
    }

    public static MediaRouter h(Context context) {
        if (context != null) {
            c();
            if (f1378c == null) {
                f1378c = new GlobalMediaRouter(context.getApplicationContext());
            }
            ArrayList arrayList = f1378c.h;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    MediaRouter mediaRouter = (MediaRouter) ((WeakReference) arrayList.get(size)).get();
                    if (mediaRouter == null) {
                        arrayList.remove(size);
                    } else if (mediaRouter.f1379a == context) {
                        return mediaRouter;
                    }
                } else {
                    MediaRouter mediaRouter2 = new MediaRouter(context);
                    arrayList.add(new WeakReference(mediaRouter2));
                    return mediaRouter2;
                }
            }
        } else {
            throw new IllegalArgumentException("context must not be null");
        }
    }

    public static MediaSessionCompat.Token i() {
        GlobalMediaRouter globalMediaRouter = f1378c;
        if (globalMediaRouter != null) {
            GlobalMediaRouter.MediaSessionRecord mediaSessionRecord = globalMediaRouter.C;
            if (mediaSessionRecord != null) {
                MediaSessionCompat mediaSessionCompat = mediaSessionRecord.f1345a;
                if (mediaSessionCompat != null) {
                    return mediaSessionCompat.getSessionToken();
                }
                return null;
            }
            MediaSessionCompat mediaSessionCompat2 = globalMediaRouter.D;
            if (mediaSessionCompat2 != null) {
                return mediaSessionCompat2.getSessionToken();
            }
            return null;
        }
        return null;
    }

    public static MediaRouterParams j() {
        c();
        return g().u;
    }

    public static ArrayList k() {
        c();
        return g().i;
    }

    public static RouteInfo l() {
        c();
        return g().h();
    }

    public static boolean m() {
        Bundle bundle;
        if (f1378c == null) {
            return false;
        }
        MediaRouterParams mediaRouterParams = g().u;
        if (mediaRouterParams != null && (bundle = mediaRouterParams.e) != null && !bundle.getBoolean("androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX", true)) {
            return false;
        }
        return true;
    }

    public static boolean n() {
        if (f1378c == null) {
            return false;
        }
        return g().i();
    }

    public static boolean o(MediaRouteSelector mediaRouteSelector, int i) {
        boolean z;
        c();
        GlobalMediaRouter g = g();
        ArrayList arrayList = g.i;
        if (!mediaRouteSelector.d()) {
            if ((i & 2) != 0 || !g.p) {
                MediaRouterParams mediaRouterParams = g.u;
                if (mediaRouterParams != null && mediaRouterParams.b && g.i()) {
                    z = true;
                } else {
                    z = false;
                }
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    RouteInfo routeInfo = (RouteInfo) arrayList.get(i2);
                    if (((i & 1) != 0 && routeInfo.e()) || ((z && !routeInfo.e() && routeInfo.d() != g.r) || !routeInfo.i(mediaRouteSelector))) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static void q(RouteInfo routeInfo) {
        if (routeInfo != null) {
            c();
            GlobalMediaRouter g = g();
            GroupRouteInfo a2 = g.d.a();
            if (a2 == null) {
                Log.w("AxMediaRouter", "Ignoring attempt to remove a member route from a selected non-group route");
                return;
            }
            MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) a2.x.get(routeInfo.f1387c);
            if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.f1366c) {
                if (!DesugarCollections.unmodifiableList(a2.v).contains(routeInfo)) {
                    Log.w("AxMediaRouter", "Ignoring attempt to remove a non-in-group member route: " + routeInfo);
                    return;
                }
                if (DesugarCollections.unmodifiableList(a2.v).size() <= 1) {
                    Log.w("AxMediaRouter", "Ignoring attempt to remove the last member route.");
                    return;
                }
                if (a2.h()) {
                    MediaRouteProvider.RouteController routeController = g.e;
                    if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                        ((MediaRouteProvider.DynamicGroupRouteController) routeController).n(routeInfo.b);
                        return;
                    }
                    throw new IllegalStateException("There is no currently selected dynamic group route.");
                }
                if (a2.o()) {
                    g.f(a2);
                    Log.w("AxMediaRouter", "Ignoring attempt to update routes for a non-available connected route: " + a2);
                    return;
                }
                Log.w("AxMediaRouter", "Ignoring attempt to remove a route from an unsupported group route:" + a2);
                return;
            }
            Log.w("AxMediaRouter", "Ignoring attempt to remove a non-unselectable member route: " + routeInfo);
            return;
        }
        throw new NullPointerException("route must not be null");
    }

    public static void r(MediaSessionCompat mediaSessionCompat) {
        GlobalMediaRouter.MediaSessionRecord mediaSessionRecord;
        c();
        GlobalMediaRouter g = g();
        g.D = mediaSessionCompat;
        if (mediaSessionCompat != null) {
            mediaSessionRecord = new GlobalMediaRouter.MediaSessionRecord(mediaSessionCompat);
        } else {
            mediaSessionRecord = null;
        }
        GlobalMediaRouter.MediaSessionRecord mediaSessionRecord2 = g.C;
        if (mediaSessionRecord2 != null) {
            mediaSessionRecord2.a();
        }
        g.C = mediaSessionRecord;
        if (mediaSessionRecord != null) {
            g.o();
        }
    }

    public static void s(RouteListingPreference routeListingPreference) {
        android.media.RouteListingPreference routeListingPreference2;
        c();
        MediaRoute2Provider mediaRoute2Provider = g().r;
        if (mediaRoute2Provider != null && Build.VERSION.SDK_INT >= 34) {
            MediaRouter2 mediaRouter2 = mediaRoute2Provider.m;
            if (routeListingPreference != null) {
                routeListingPreference2 = RouteListingPreference.Api34Impl.a(routeListingPreference);
            } else {
                routeListingPreference2 = null;
            }
            MediaRoute2Provider.Api34Impl.a(mediaRouter2, routeListingPreference2);
        }
    }

    public static void t(MediaRouterParams mediaRouterParams) {
        boolean z;
        c();
        GlobalMediaRouter g = g();
        MediaRouterParams mediaRouterParams2 = g.u;
        g.u = mediaRouterParams;
        if (g.i()) {
            if (g.r == null) {
                MediaRoute2Provider mediaRoute2Provider = new MediaRoute2Provider(g.g, new GlobalMediaRouter.Mr2ProviderCallback());
                g.r = mediaRoute2Provider;
                g.a(mediaRoute2Provider, true);
                g.n();
            }
            boolean z2 = mediaRouterParams.d;
            MediaRoute2Provider mediaRoute2Provider2 = g.r;
            mediaRoute2Provider2.t = z2;
            mediaRoute2Provider2.k();
            RegisteredMediaRouteProviderWatcher registeredMediaRouteProviderWatcher = g.f1341c;
            registeredMediaRouteProviderWatcher.f = z2;
            registeredMediaRouteProviderWatcher.f1409c.post(registeredMediaRouteProviderWatcher.i);
            if (mediaRouterParams2 != null && mediaRouterParams2.f1391c) {
                z = true;
            } else {
                z = false;
            }
            if (z != mediaRouterParams.f1391c) {
                MediaRoute2Provider mediaRoute2Provider3 = g.r;
                mediaRoute2Provider3.i = g.A;
                if (!mediaRoute2Provider3.j) {
                    mediaRoute2Provider3.j = true;
                    mediaRoute2Provider3.g.sendEmptyMessage(2);
                }
            }
        } else {
            MediaRoute2Provider mediaRoute2Provider4 = g.r;
            if (mediaRoute2Provider4 != null) {
                g.k(mediaRoute2Provider4);
                g.r = null;
                RegisteredMediaRouteProviderWatcher registeredMediaRouteProviderWatcher2 = g.f1341c;
                registeredMediaRouteProviderWatcher2.f1409c.post(registeredMediaRouteProviderWatcher2.i);
            }
        }
        g.f1340a.b(769, mediaRouterParams);
    }

    public static void u(RouteInfo routeInfo) {
        if (routeInfo != null) {
            c();
            GlobalMediaRouter g = g();
            GroupRouteInfo a2 = g.d.a();
            if (a2 == null) {
                Log.w("AxMediaRouter", "Ignoring attempt to transfer for a selected non-group route");
                return;
            }
            List<RouteInfo> singletonList = Collections.singletonList(routeInfo);
            ArrayList arrayList = new ArrayList();
            for (RouteInfo routeInfo2 : singletonList) {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) a2.x.get(routeInfo2.f1387c);
                if (dynamicRouteDescriptor != null && dynamicRouteDescriptor.e) {
                    arrayList.add(routeInfo2.b);
                } else {
                    Log.w("AxMediaRouter", "Ignoring attempt to update the group with a non-transferable route: " + routeInfo2);
                }
            }
            if (arrayList.isEmpty()) {
                Log.w("AxMediaRouter", "Ignoring attempt to update the group with non-transferable routes");
                return;
            }
            if (a2.h()) {
                MediaRouteProvider.RouteController routeController = g.e;
                if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                    ((MediaRouteProvider.DynamicGroupRouteController) routeController).o(arrayList);
                    return;
                }
                throw new IllegalStateException("There is no currently selected dynamic group route.");
            }
            if (a2.o()) {
                g.f(a2);
                Log.w("AxMediaRouter", "Ignoring attempt to update routes for a non-available connected route: " + a2);
                return;
            }
            Log.w("AxMediaRouter", "Ignoring attempt to update routes for an unsupported group route:" + a2);
            return;
        }
        throw new NullPointerException("route must not be null");
    }

    public static void v(int i) {
        if (i >= 0 && i <= 3) {
            c();
            GlobalMediaRouter g = g();
            RouteInfo c2 = g.c();
            if (g.h() != c2) {
                g.l(c2, i, true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Unsupported reason to unselect route");
    }

    /* JADX WARN: Type inference failed for: r8v8, types: [androidx.mediarouter.media.MediaRouteSelector$Builder, java.lang.Object] */
    public final void a(MediaRouteSelector mediaRouteSelector, Callback callback, int i) {
        CallbackRecord callbackRecord;
        if (mediaRouteSelector != null) {
            if (callback != null) {
                c();
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                boolean z = false;
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        if (((CallbackRecord) arrayList.get(i2)).b == callback) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        i2 = -1;
                        break;
                    }
                }
                if (i2 < 0) {
                    callbackRecord = new CallbackRecord(this, callback);
                    arrayList.add(callbackRecord);
                } else {
                    callbackRecord = (CallbackRecord) arrayList.get(i2);
                }
                boolean z2 = true;
                if (i != callbackRecord.d) {
                    callbackRecord.d = i;
                    z = true;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if ((i & 1) != 0) {
                    z = true;
                }
                callbackRecord.e = elapsedRealtime;
                MediaRouteSelector mediaRouteSelector2 = callbackRecord.f1381c;
                mediaRouteSelector2.a();
                mediaRouteSelector.a();
                if (!mediaRouteSelector2.b.containsAll(mediaRouteSelector.b)) {
                    MediaRouteSelector mediaRouteSelector3 = callbackRecord.f1381c;
                    ?? obj = new Object();
                    if (mediaRouteSelector3 != null) {
                        mediaRouteSelector3.a();
                        if (!mediaRouteSelector3.b.isEmpty()) {
                            obj.f1377a = new ArrayList(mediaRouteSelector3.b);
                        }
                        obj.a(mediaRouteSelector.c());
                        callbackRecord.f1381c = obj.c();
                    } else {
                        throw new IllegalArgumentException("selector must not be null");
                    }
                } else {
                    z2 = z;
                }
                if (z2) {
                    g().n();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("callback must not be null");
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public final void p(Callback callback) {
        if (callback != null) {
            c();
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (((CallbackRecord) arrayList.get(i)).b == callback) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                arrayList.remove(i);
                g().n();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public void d(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void e(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void h(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void j(MediaRouter mediaRouter, RouteInfo routeInfo, int i, RouteInfo routeInfo2) {
            i(routeInfo);
        }

        public void l(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
            k();
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        public void k() {
        }

        public void i(RouteInfo routeInfo) {
        }

        public void m(RouteInfo routeInfo) {
        }

        public void n(MediaRouterParams mediaRouterParams) {
        }

        public void f(RouteInfo routeInfo, RouteInfo routeInfo2) {
        }

        public void g(RouteInfo routeInfo, RouteInfo routeInfo2, int i) {
        }
    }
}
