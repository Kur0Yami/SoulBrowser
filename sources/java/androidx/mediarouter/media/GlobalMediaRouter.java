package androidx.mediarouter.media;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pair;
import androidx.media.VolumeProviderCompat;
import androidx.mediarouter.media.MediaRoute2Provider;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher;
import androidx.mediarouter.media.RemoteControlClientCompat;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GlobalMediaRouter implements PlatformMediaRouter1RouteProvider.SyncCallback, RegisteredMediaRouteProviderWatcher.Callback {
    public static final /* synthetic */ int F = 0;
    public MediaRouteDiscoveryRequest A;
    public int B;
    public MediaSessionRecord C;
    public MediaSessionCompat D;
    public final AnonymousClass1 E;

    /* renamed from: c, reason: collision with root package name */
    public final RegisteredMediaRouteProviderWatcher f1341c;
    public MediaRouter.RouteInfo d;
    public MediaRouteProvider.RouteController e;
    public MediaRouter.PrepareTransferNotifier f;
    public final Context g;
    public final RemoteControlClientCompat.PlaybackInfo n;
    public final ProviderCallback o;
    public final boolean p;
    public final boolean q;
    public MediaRoute2Provider r;
    public final PlatformMediaRouter1RouteProvider.JellybeanMr2Impl s;
    public final MediaRouterActiveScanThrottlingHelper t;
    public MediaRouterParams u;
    public MediaRouter.RouteInfo v;
    public MediaRouter.RouteInfo w;
    public MediaRouter.RouteInfo x;
    public MediaRouteProvider.DynamicGroupRouteController y;
    public MediaRouteDiscoveryRequest z;

    /* renamed from: a, reason: collision with root package name */
    public final CallbackHandler f1340a = new CallbackHandler();
    public final HashMap b = new HashMap();
    public final ArrayList h = new ArrayList();
    public final ArrayList i = new ArrayList();
    public final HashMap j = new HashMap();
    public final HashMap k = new HashMap();
    public final ArrayList l = new ArrayList();
    public final ArrayList m = new ArrayList();

    @RestrictTo
    /* loaded from: classes.dex */
    public final class CallbackHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f1343a = new ArrayList();
        public final ArrayList b = new ArrayList();

        public CallbackHandler() {
        }

        public static void a(MediaRouter.CallbackRecord callbackRecord, int i, Object obj, int i2) {
            MediaRouter.RouteInfo routeInfo;
            MediaRouter.RouteInfo routeInfo2;
            boolean z;
            MediaRouter mediaRouter = callbackRecord.f1380a;
            MediaRouter.Callback callback = callbackRecord.b;
            int i3 = 65280 & i;
            if (i3 != 256) {
                if (i3 != 512) {
                    if (i3 == 768 && i == 769) {
                        callback.n((MediaRouterParams) obj);
                        return;
                    }
                    return;
                }
                switch (i) {
                    case 513:
                        callback.a();
                        return;
                    case 514:
                        callback.c();
                        return;
                    case 515:
                        callback.b();
                        return;
                    default:
                        return;
                }
            }
            if (i != 264 && i != 262) {
                routeInfo = null;
                if (i != 265 && i != 266) {
                    routeInfo2 = (MediaRouter.RouteInfo) obj;
                } else {
                    throw null;
                }
            } else {
                RouteSelectedMessageParams routeSelectedMessageParams = (RouteSelectedMessageParams) obj;
                MediaRouter.RouteInfo routeInfo3 = routeSelectedMessageParams.b;
                routeInfo = routeSelectedMessageParams.f1349a;
                routeInfo2 = routeInfo3;
            }
            if (routeInfo2 != null) {
                boolean z2 = true;
                if ((callbackRecord.d & 2) == 0 && !routeInfo2.i(callbackRecord.f1381c)) {
                    MediaRouterParams mediaRouterParams = MediaRouter.g().u;
                    if (mediaRouterParams == null) {
                        z = false;
                    } else {
                        z = mediaRouterParams.f1391c;
                    }
                    z2 = (z && routeInfo2.e() && i == 262 && i2 == 3 && routeInfo != null) ? true ^ routeInfo.e() : false;
                }
                if (z2) {
                    switch (i) {
                        case 257:
                            callback.d(mediaRouter, routeInfo2);
                            return;
                        case 258:
                            callback.h(mediaRouter, routeInfo2);
                            return;
                        case 259:
                            callback.e(mediaRouter, routeInfo2);
                            return;
                        case 260:
                            callback.m(routeInfo2);
                            return;
                        case 261:
                            callback.getClass();
                            return;
                        case 262:
                            callback.j(mediaRouter, routeInfo2, i2, routeInfo2);
                            return;
                        case 263:
                            callback.l(mediaRouter, routeInfo2, i2);
                            return;
                        case 264:
                            callback.j(mediaRouter, routeInfo2, i2, routeInfo);
                            return;
                        case 265:
                            callback.f(routeInfo, routeInfo2);
                            return;
                        case 266:
                            callback.g(routeInfo, routeInfo2, i2);
                            return;
                        default:
                            return;
                    }
                }
            }
        }

        public final void b(int i, Object obj) {
            obtainMessage(i, obj).sendToTarget();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int k;
            ArrayList arrayList = this.f1343a;
            GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
            ArrayList arrayList2 = globalMediaRouter.h;
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = globalMediaRouter.s;
            int i = message.what;
            Object obj = message.obj;
            int i2 = message.arg1;
            if (i == 259 && globalMediaRouter.h().f1387c.equals(((MediaRouter.RouteInfo) obj).f1387c)) {
                globalMediaRouter.r(true);
            }
            int i3 = 0;
            ArrayList arrayList3 = this.b;
            if (i != 262) {
                if (i != 264) {
                    switch (i) {
                        case 257:
                            jellybeanMr2Impl.o((MediaRouter.RouteInfo) obj);
                            break;
                        case 258:
                            jellybeanMr2Impl.p((MediaRouter.RouteInfo) obj);
                            break;
                        case 259:
                            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
                            jellybeanMr2Impl.getClass();
                            if (routeInfo.d() != jellybeanMr2Impl && (k = jellybeanMr2Impl.k(routeInfo)) >= 0) {
                                PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.t((PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.UserRouteRecord) jellybeanMr2Impl.v.get(k));
                                break;
                            }
                            break;
                    }
                } else {
                    RouteSelectedMessageParams routeSelectedMessageParams = (RouteSelectedMessageParams) obj;
                    MediaRouter.RouteInfo routeInfo2 = routeSelectedMessageParams.b;
                    arrayList3.add(routeInfo2);
                    jellybeanMr2Impl.o(routeInfo2);
                    if (routeSelectedMessageParams.f1350c) {
                        jellybeanMr2Impl.q(routeInfo2);
                    }
                }
            } else {
                RouteSelectedMessageParams routeSelectedMessageParams2 = (RouteSelectedMessageParams) obj;
                MediaRouter.RouteInfo routeInfo3 = routeSelectedMessageParams2.b;
                if (routeSelectedMessageParams2.f1350c) {
                    jellybeanMr2Impl.q(routeInfo3);
                }
                if (globalMediaRouter.v != null && routeInfo3.e()) {
                    int size = arrayList3.size();
                    int i4 = 0;
                    while (i4 < size) {
                        Object obj2 = arrayList3.get(i4);
                        i4++;
                        jellybeanMr2Impl.p((MediaRouter.RouteInfo) obj2);
                    }
                    arrayList3.clear();
                }
            }
            try {
                int size2 = arrayList2.size();
                while (true) {
                    size2--;
                    if (size2 >= 0) {
                        MediaRouter mediaRouter = (MediaRouter) ((WeakReference) arrayList2.get(size2)).get();
                        if (mediaRouter == null) {
                            arrayList2.remove(size2);
                        } else {
                            arrayList.addAll(mediaRouter.b);
                        }
                    } else {
                        int size3 = arrayList.size();
                        while (i3 < size3) {
                            Object obj3 = arrayList.get(i3);
                            i3++;
                            a((MediaRouter.CallbackRecord) obj3, i, obj, i2);
                        }
                        arrayList.clear();
                        return;
                    }
                }
            } catch (Throwable th) {
                arrayList.clear();
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class MediaSessionRecord {

        /* renamed from: a, reason: collision with root package name */
        public final MediaSessionCompat f1345a;
        public VolumeProviderCompat b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.mediarouter.media.GlobalMediaRouter$MediaSessionRecord$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends VolumeProviderCompat {
            public AnonymousClass1(int i, int i2, int i3, String str) {
                super(i, i2, i3, str);
            }

            @Override // androidx.media.VolumeProviderCompat
            public final void b(int i) {
                GlobalMediaRouter.this.f1340a.post(new b(this, i, 1));
            }

            @Override // androidx.media.VolumeProviderCompat
            public final void c(int i) {
                GlobalMediaRouter.this.f1340a.post(new b(this, i, 0));
            }
        }

        public MediaSessionRecord(MediaSessionCompat mediaSessionCompat) {
            this.f1345a = mediaSessionCompat;
        }

        public final void a() {
            MediaSessionCompat mediaSessionCompat = this.f1345a;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setPlaybackToLocal(GlobalMediaRouter.this.n.d);
                this.b = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class Mr2ProviderCallback extends MediaRoute2Provider.Callback {
        public Mr2ProviderCallback() {
        }
    }

    /* loaded from: classes.dex */
    public final class ProviderCallback extends MediaRouteProvider.Callback {
        public ProviderCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.Callback
        public final void a(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
            MediaRouter.ProviderInfo d = globalMediaRouter.d(mediaRouteProvider);
            if (d != null) {
                globalMediaRouter.p(d, mediaRouteProviderDescriptor);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class RemoteControlClientRecord implements RemoteControlClientCompat.VolumeCallback {
    }

    /* loaded from: classes.dex */
    public class RouteConnection implements MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener {
        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
        public final void a(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
        }
    }

    /* loaded from: classes.dex */
    public static final class RouteConnectionMessageParams {
    }

    /* loaded from: classes.dex */
    public static final class RouteSelectedMessageParams {

        /* renamed from: a, reason: collision with root package name */
        public final MediaRouter.RouteInfo f1349a;
        public final MediaRouter.RouteInfo b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f1350c;

        public RouteSelectedMessageParams(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, boolean z) {
            this.f1349a = routeInfo;
            this.b = routeInfo2;
            this.f1350c = z;
        }
    }

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c8  */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.mediarouter.media.GlobalMediaRouter$1] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.mediarouter.media.RemoteControlClientCompat$PlaybackInfo, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GlobalMediaRouter(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.GlobalMediaRouter.<init>(android.content.Context):void");
    }

    public final void a(MediaRouteProvider mediaRouteProvider, boolean z) {
        if (d(mediaRouteProvider) == null) {
            MediaRouter.ProviderInfo providerInfo = new MediaRouter.ProviderInfo(mediaRouteProvider, z);
            this.l.add(providerInfo);
            this.f1340a.b(513, providerInfo);
            p(providerInfo, mediaRouteProvider.k);
            MediaRouter.c();
            mediaRouteProvider.h = this.o;
            mediaRouteProvider.g(this.z);
        }
    }

    public final String b(MediaRouter.ProviderInfo providerInfo, String str) {
        String D;
        String flattenToShortString = providerInfo.d.f1369a.flattenToShortString();
        boolean z = providerInfo.f1385c;
        if (z) {
            D = str;
        } else {
            D = android.support.v4.media.a.D(flattenToShortString, ":", str);
        }
        HashMap hashMap = this.k;
        if (!z) {
            ArrayList arrayList = this.i;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (((MediaRouter.RouteInfo) arrayList.get(i)).f1387c.equals(D)) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                Log.w("AxMediaRouter", android.support.v4.media.a.n("Either ", str, " isn't unique in ", flattenToShortString, " or we're trying to assign a unique ID for an already added route"));
                int i2 = 2;
                while (true) {
                    Locale locale = Locale.US;
                    String str2 = D + "_" + i2;
                    int size2 = arrayList.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 < size2) {
                            if (((MediaRouter.RouteInfo) arrayList.get(i3)).f1387c.equals(str2)) {
                                break;
                            }
                            i3++;
                        } else {
                            i3 = -1;
                            break;
                        }
                    }
                    if (i3 < 0) {
                        hashMap.put(new Pair(flattenToShortString, str), str2);
                        return str2;
                    }
                    i2++;
                }
            }
        }
        hashMap.put(new Pair(flattenToShortString, str), D);
        return D;
    }

    public final MediaRouter.RouteInfo c() {
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
            if (routeInfo != this.v && routeInfo.d() == this.s && routeInfo.n("android.media.intent.category.LIVE_AUDIO") && !routeInfo.n("android.media.intent.category.LIVE_VIDEO") && routeInfo.g()) {
                return routeInfo;
            }
        }
        return this.v;
    }

    public final MediaRouter.ProviderInfo d(MediaRouteProvider mediaRouteProvider) {
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouter.ProviderInfo providerInfo = (MediaRouter.ProviderInfo) obj;
            if (providerInfo.f1384a == mediaRouteProvider) {
                return providerInfo;
            }
        }
        return null;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.j.values().iterator();
        while (it.hasNext()) {
            ((RouteConnection) it.next()).getClass();
        }
        return arrayList;
    }

    public final RouteConnection f(MediaRouter.GroupRouteInfo groupRouteInfo) {
        Iterator it = this.j.values().iterator();
        while (it.hasNext()) {
            ((RouteConnection) it.next()).getClass();
        }
        return null;
    }

    public final MediaRouteProvider.RouteController g(MediaRouter.RouteInfo routeInfo) {
        MediaRouteProvider.RouteController routeController;
        if (routeInfo == this.d && (routeController = this.e) != null) {
            return routeController;
        }
        if (routeInfo instanceof MediaRouter.GroupRouteInfo) {
            MediaRouter.GroupRouteInfo groupRouteInfo = (MediaRouter.GroupRouteInfo) routeInfo;
            if (groupRouteInfo.o()) {
                f(groupRouteInfo);
                return null;
            }
        }
        MediaRouteProvider.RouteController routeController2 = (MediaRouteProvider.RouteController) this.b.get(routeInfo.f1387c);
        if (routeController2 != null) {
            return routeController2;
        }
        Iterator it = this.j.values().iterator();
        if (!it.hasNext()) {
            return routeController2;
        }
        ((RouteConnection) it.next()).getClass();
        throw null;
    }

    public final MediaRouter.RouteInfo h() {
        MediaRouter.RouteInfo routeInfo = this.d;
        if (routeInfo != null) {
            return routeInfo;
        }
        throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
    }

    public final boolean i() {
        if (this.q) {
            MediaRouterParams mediaRouterParams = this.u;
            if (mediaRouterParams == null || mediaRouterParams.f1390a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void j() {
        MediaRouteProvider.RouteController d;
        if (this.d.f()) {
            List<MediaRouter.RouteInfo> unmodifiableList = DesugarCollections.unmodifiableList(this.d.v);
            HashSet hashSet = new HashSet();
            Iterator it = unmodifiableList.iterator();
            while (it.hasNext()) {
                hashSet.add(((MediaRouter.RouteInfo) it.next()).f1387c);
            }
            HashMap hashMap = this.b;
            Iterator it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains(entry.getKey())) {
                    MediaRouteProvider.RouteController routeController = (MediaRouteProvider.RouteController) entry.getValue();
                    routeController.h(0);
                    routeController.d();
                    it2.remove();
                }
            }
            for (MediaRouter.RouteInfo routeInfo : unmodifiableList) {
                if (!hashMap.containsKey(routeInfo.f1387c) && (d = routeInfo.d().d(routeInfo.b, this.d.b)) != null) {
                    d.e();
                    hashMap.put(routeInfo.f1387c, d);
                }
            }
        }
    }

    public final void k(MediaRouteProvider mediaRouteProvider) {
        MediaRouter.ProviderInfo d = d(mediaRouteProvider);
        if (d != null) {
            mediaRouteProvider.getClass();
            MediaRouter.c();
            mediaRouteProvider.h = null;
            mediaRouteProvider.g(null);
            p(d, null);
            this.f1340a.b(514, d);
            this.l.remove(d);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        if (r0 != 2) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(androidx.mediarouter.media.MediaRouter.RouteInfo r5, int r6, boolean r7) {
        /*
            r4 = this;
            java.util.ArrayList r0 = r4.i
            boolean r0 = r0.contains(r5)
            java.lang.String r1 = "AxMediaRouter"
            if (r0 != 0) goto L1c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Ignoring attempt to select removed route: "
            r6.<init>(r7)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            android.util.Log.w(r1, r5)
            return
        L1c:
            boolean r0 = r5.g
            if (r0 != 0) goto L32
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Ignoring attempt to select disabled route: "
            r6.<init>(r7)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            android.util.Log.w(r1, r5)
            return
        L32:
            androidx.mediarouter.media.MediaRouter$RouteInfo r0 = r4.d
            if (r0 != r5) goto L37
            goto L64
        L37:
            if (r0 == 0) goto L3e
            androidx.mediarouter.media.MediaRouter$GroupRouteInfo r0 = r0.a()
            goto L3f
        L3e:
            r0 = 0
        L3f:
            if (r0 == 0) goto L76
            java.util.ArrayList r2 = r0.v
            java.util.List r2 = j$.util.DesugarCollections.unmodifiableList(r2)
            int r2 = r2.size()
            r3 = 1
            if (r2 != r3) goto L76
            androidx.collection.ArrayMap r0 = r0.x
            java.lang.String r2 = r5.f1387c
            java.lang.Object r0 = r0.get(r2)
            androidx.mediarouter.media.MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor r0 = (androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) r0
            if (r0 == 0) goto L5d
            int r0 = r0.b
            goto L5e
        L5d:
            r0 = 4
        L5e:
            r2 = 3
            if (r0 == r2) goto L64
            r2 = 2
            if (r0 != r2) goto L76
        L64:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Ignoring attempt to select selected route: "
            r6.<init>(r7)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            android.util.Log.w(r1, r5)
            return
        L76:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 30
            if (r0 < r1) goto L8e
            androidx.mediarouter.media.MediaRouteProvider r0 = r5.d()
            androidx.mediarouter.media.MediaRoute2Provider r1 = r4.r
            if (r0 != r1) goto L8e
            androidx.mediarouter.media.MediaRouter$RouteInfo r0 = r4.d
            if (r0 == r5) goto L8e
            java.lang.String r5 = r5.b
            r1.m(r5)
            return
        L8e:
            r4.m(r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.GlobalMediaRouter.l(androidx.mediarouter.media.MediaRouter$RouteInfo, int, boolean):void");
    }

    public final void m(MediaRouter.RouteInfo routeInfo, int i, boolean z) {
        boolean z2;
        MediaRouteProviderDescriptor mediaRouteProviderDescriptor;
        String str;
        boolean z3;
        Context context = this.g;
        if (this.d == routeInfo) {
            return;
        }
        if (routeInfo == this.v) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.w != null && z2) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder("- Stacktrace: [");
            int i2 = 3;
            while (i2 < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i2];
                sb.append(stackTraceElement.getClassName());
                sb.append(".");
                sb.append(stackTraceElement.getMethodName());
                sb.append(":");
                sb.append(stackTraceElement.getLineNumber());
                i2++;
                if (i2 < stackTrace.length) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            MediaRouter.RouteInfo routeInfo2 = this.d;
            if (routeInfo2 != null) {
                Locale locale = Locale.US;
                String str2 = routeInfo2.d;
                MediaRouter.c();
                if (MediaRouter.g().w == routeInfo2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                str = str2 + "(BT=" + z3 + ", syncMediaRoute1Provider=" + z + ")";
            } else {
                str = null;
            }
            StringBuilder w = android.support.v4.media.a.w("Changing selection(", str, ") to default while BT is available: pkgName=");
            w.append(context.getPackageName());
            w.append((Object) sb);
            Log.w("AxMediaRouter", w.toString());
        }
        if (this.x != null) {
            this.x = null;
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController = this.y;
            if (dynamicGroupRouteController != null) {
                dynamicGroupRouteController.h(3);
                this.y.d();
                this.y = null;
            }
        }
        if (i() && (mediaRouteProviderDescriptor = routeInfo.f1386a.e) != null && mediaRouteProviderDescriptor.b) {
            MediaRouteProvider d = routeInfo.d();
            String str3 = routeInfo.b;
            MediaRouteProvider.RouteControllerOptions.Builder builder = new MediaRouteProvider.RouteControllerOptions.Builder();
            builder.f1371a.putString("clientPackageName", context.getPackageName());
            MediaRouteProvider.DynamicGroupRouteController a2 = d.a(str3, new MediaRouteProvider.RouteControllerOptions(builder.f1371a));
            if (a2 != null) {
                Executor d2 = ContextCompat.d(context);
                AnonymousClass1 anonymousClass1 = this.E;
                synchronized (a2.f1363a) {
                    try {
                        if (d2 != null) {
                            if (anonymousClass1 != null) {
                                a2.b = d2;
                                a2.f1364c = anonymousClass1;
                                ArrayList arrayList = a2.e;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    MediaRouteDescriptor mediaRouteDescriptor = a2.d;
                                    ArrayList arrayList2 = a2.e;
                                    a2.d = null;
                                    a2.e = null;
                                    a2.b.execute(new d(a2, anonymousClass1, mediaRouteDescriptor, arrayList2, 1));
                                }
                            } else {
                                throw new NullPointerException("Listener shouldn't be null");
                            }
                        } else {
                            throw new NullPointerException("Executor shouldn't be null");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.x = routeInfo;
                this.y = a2;
                a2.e();
                return;
            }
            Log.w("AxMediaRouter", "setSelectedRouteInternal: Failed to create dynamic group route controller. route=" + routeInfo);
        }
        MediaRouteProvider d3 = routeInfo.d();
        String str4 = routeInfo.b;
        MediaRouteProvider.RouteControllerOptions.Builder builder2 = new MediaRouteProvider.RouteControllerOptions.Builder();
        builder2.f1371a.putString("clientPackageName", context.getPackageName());
        MediaRouteProvider.RouteController c2 = d3.c(str4, new MediaRouteProvider.RouteControllerOptions(builder2.f1371a));
        if (c2 != null) {
            c2.e();
        }
        if (this.d == null) {
            this.d = routeInfo;
            this.e = c2;
            CallbackHandler callbackHandler = this.f1340a;
            callbackHandler.getClass();
            Message obtainMessage = callbackHandler.obtainMessage(262, new RouteSelectedMessageParams(null, routeInfo, z));
            obtainMessage.arg1 = i;
            obtainMessage.sendToTarget();
            return;
        }
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier = this.f;
        if (prepareTransferNotifier != null) {
            MediaRouteProvider.RouteController routeController = prepareTransferNotifier.f1382a;
            if (!prepareTransferNotifier.i && !prepareTransferNotifier.j) {
                prepareTransferNotifier.j = true;
                if (routeController != null) {
                    routeController.h(0);
                    routeController.d();
                }
            }
            this.f = null;
        }
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier2 = new MediaRouter.PrepareTransferNotifier(this, routeInfo, c2, i, z, null, null);
        this.f = prepareTransferNotifier2;
        prepareTransferNotifier2.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0109, code lost:
    
        if (r24.A.b() == r1) goto L66;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.mediarouter.media.MediaRouteSelector$Builder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n() {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.GlobalMediaRouter.n():void");
    }

    public final void o() {
        int i;
        MediaRouter.RouteInfo routeInfo = this.d;
        if (routeInfo != null) {
            int i2 = routeInfo.p;
            RemoteControlClientCompat.PlaybackInfo playbackInfo = this.n;
            playbackInfo.f1412a = i2;
            playbackInfo.b = routeInfo.q;
            int i3 = 0;
            if (routeInfo.f() && !MediaRouter.m()) {
                i = 0;
            } else {
                i = routeInfo.o;
            }
            playbackInfo.f1413c = i;
            playbackInfo.d = this.d.m;
            if (i() && this.d.d() == this.r) {
                playbackInfo.e = MediaRoute2Provider.j(this.e);
            } else {
                playbackInfo.e = null;
            }
            Iterator it = this.m.iterator();
            if (!it.hasNext()) {
                MediaSessionRecord mediaSessionRecord = this.C;
                if (mediaSessionRecord != null) {
                    MediaRouter.RouteInfo routeInfo2 = this.d;
                    MediaRouter.RouteInfo routeInfo3 = this.v;
                    if (routeInfo3 != null) {
                        if (routeInfo2 != routeInfo3 && routeInfo2 != this.w) {
                            if (playbackInfo.f1413c == 1) {
                                i3 = 2;
                            }
                            int i4 = i3;
                            int i5 = playbackInfo.b;
                            int i6 = playbackInfo.f1412a;
                            String str = playbackInfo.e;
                            MediaSessionCompat mediaSessionCompat = mediaSessionRecord.f1345a;
                            if (mediaSessionCompat != null) {
                                VolumeProviderCompat volumeProviderCompat = mediaSessionRecord.b;
                                if (volumeProviderCompat != null && i4 == 0 && i5 == 0) {
                                    volumeProviderCompat.d(i6);
                                    return;
                                }
                                MediaSessionRecord.AnonymousClass1 anonymousClass1 = new MediaSessionRecord.AnonymousClass1(i4, i5, i6, str);
                                mediaSessionRecord.b = anonymousClass1;
                                mediaSessionCompat.setPlaybackToRemote(anonymousClass1);
                                return;
                            }
                            return;
                        }
                        mediaSessionRecord.a();
                        return;
                    }
                    throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
                }
                return;
            }
            ((RemoteControlClientRecord) it.next()).getClass();
            throw null;
        }
        MediaSessionRecord mediaSessionRecord2 = this.C;
        if (mediaSessionRecord2 != null) {
            mediaSessionRecord2.a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r21 == r19.s.k) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a3 A[LOOP:5: B:77:0x01a1->B:78:0x01a3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01be A[LOOP:6: B:81:0x01bc->B:82:0x01be, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(androidx.mediarouter.media.MediaRouter.ProviderInfo r20, androidx.mediarouter.media.MediaRouteProviderDescriptor r21) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.GlobalMediaRouter.p(androidx.mediarouter.media.MediaRouter$ProviderInfo, androidx.mediarouter.media.MediaRouteProviderDescriptor):void");
    }

    public final int q(MediaRouter.RouteInfo routeInfo, MediaRouteDescriptor mediaRouteDescriptor) {
        int j = routeInfo.j(mediaRouteDescriptor);
        if (j != 0) {
            int i = j & 1;
            CallbackHandler callbackHandler = this.f1340a;
            if (i != 0) {
                callbackHandler.b(259, routeInfo);
            }
            if ((j & 2) != 0) {
                callbackHandler.b(260, routeInfo);
            }
            if ((j & 4) != 0) {
                callbackHandler.b(261, routeInfo);
            }
        }
        return j;
    }

    public final void r(boolean z) {
        MediaRouter.RouteInfo routeInfo = this.v;
        if (routeInfo != null && !routeInfo.g()) {
            Log.i("AxMediaRouter", "Clearing the default route because it is no longer selectable: " + this.v);
            this.v = null;
        }
        MediaRouter.RouteInfo routeInfo2 = this.v;
        PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = this.s;
        ArrayList arrayList = this.i;
        if (routeInfo2 == null) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                MediaRouter.RouteInfo routeInfo3 = (MediaRouter.RouteInfo) obj;
                if (routeInfo3.d() == jellybeanMr2Impl && routeInfo3.b.equals("DEFAULT_ROUTE") && routeInfo3.g()) {
                    this.v = routeInfo3;
                    Log.i("AxMediaRouter", "Found default route: " + this.v);
                    break;
                }
            }
        }
        MediaRouter.RouteInfo routeInfo4 = this.w;
        if (routeInfo4 != null && !routeInfo4.g()) {
            Log.i("AxMediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.w);
            this.w = null;
        }
        if (this.w == null) {
            int size2 = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList.get(i2);
                i2++;
                MediaRouter.RouteInfo routeInfo5 = (MediaRouter.RouteInfo) obj2;
                if (routeInfo5.d() == jellybeanMr2Impl && routeInfo5.n("android.media.intent.category.LIVE_AUDIO") && !routeInfo5.n("android.media.intent.category.LIVE_VIDEO") && routeInfo5.g()) {
                    this.w = routeInfo5;
                    Log.i("AxMediaRouter", "Found bluetooth route: " + this.w);
                    break;
                }
            }
        }
        MediaRouter.RouteInfo routeInfo6 = this.d;
        if (routeInfo6 != null && routeInfo6.g) {
            if (z) {
                j();
                o();
                return;
            }
            return;
        }
        Log.i("AxMediaRouter", "Unselecting the current route because it is no longer selectable: " + this.d);
        m(c(), 0, true);
    }
}
