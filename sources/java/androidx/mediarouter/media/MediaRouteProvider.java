package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.RestrictTo;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class MediaRouteProvider {

    /* renamed from: c, reason: collision with root package name */
    public final Context f1362c;
    public final ProviderMetadata f;
    public final ProviderHandler g = new ProviderHandler();
    public Callback h;
    public MediaRouteDiscoveryRequest i;
    public boolean j;
    public MediaRouteProviderDescriptor k;
    public boolean l;

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public void a(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class DynamicGroupRouteController extends RouteController {

        /* renamed from: a, reason: collision with root package name */
        public final Object f1363a = new Object();
        public Executor b;

        /* renamed from: c, reason: collision with root package name */
        public OnDynamicRoutesChangedListener f1364c;
        public MediaRouteDescriptor d;
        public ArrayList e;

        /* loaded from: classes.dex */
        public static final class DynamicRouteDescriptor {

            /* renamed from: a, reason: collision with root package name */
            public final MediaRouteDescriptor f1365a;
            public final int b;

            /* renamed from: c, reason: collision with root package name */
            public final boolean f1366c;
            public final boolean d;
            public final boolean e;

            /* loaded from: classes.dex */
            public static final class Builder {

                /* renamed from: a, reason: collision with root package name */
                public int f1367a;
                public boolean b;
            }

            @Retention(RetentionPolicy.SOURCE)
            @RestrictTo
            /* loaded from: classes.dex */
            public @interface SelectionState {
            }

            public DynamicRouteDescriptor(MediaRouteDescriptor mediaRouteDescriptor, int i, boolean z, boolean z2, boolean z3) {
                this.f1365a = mediaRouteDescriptor;
                this.b = i;
                this.f1366c = z;
                this.d = z2;
                this.e = z3;
            }
        }

        /* loaded from: classes.dex */
        public interface OnDynamicRoutesChangedListener {
            void a(DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection);
        }

        public String j() {
            return null;
        }

        public String k() {
            return null;
        }

        public final void l(MediaRouteDescriptor mediaRouteDescriptor, ArrayList arrayList) {
            if (mediaRouteDescriptor != null) {
                synchronized (this.f1363a) {
                    try {
                        try {
                            Executor executor = this.b;
                            if (executor != null) {
                                executor.execute(new d(this, this.f1364c, mediaRouteDescriptor, arrayList, 0));
                            } else {
                                this.d = mediaRouteDescriptor;
                                this.e = new ArrayList(arrayList);
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
            }
            throw new NullPointerException("groupRoute must not be null");
        }

        public abstract void m(String str);

        public abstract void n(String str);

        public abstract void o(ArrayList arrayList);
    }

    /* loaded from: classes.dex */
    public final class ProviderHandler extends Handler {
        public ProviderHandler() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            MediaRouteProvider mediaRouteProvider = MediaRouteProvider.this;
            if (i != 1) {
                if (i == 2) {
                    mediaRouteProvider.j = false;
                    mediaRouteProvider.e(mediaRouteProvider.i);
                    return;
                }
                return;
            }
            mediaRouteProvider.l = false;
            Callback callback = mediaRouteProvider.h;
            if (callback != null) {
                callback.a(mediaRouteProvider, mediaRouteProvider.k);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class ProviderMetadata {

        /* renamed from: a, reason: collision with root package name */
        public final ComponentName f1369a;

        public ProviderMetadata(ComponentName componentName) {
            this.f1369a = componentName;
        }

        public final String toString() {
            return "ProviderMetadata{ componentName=" + this.f1369a.flattenToShortString() + " }";
        }
    }

    /* loaded from: classes.dex */
    public static abstract class RouteController {
        public void d() {
        }

        public void e() {
        }

        public void f(int i) {
        }

        public void g() {
        }

        public void h(int i) {
            g();
        }

        public void i(int i) {
        }
    }

    /* loaded from: classes.dex */
    public static final class RouteControllerOptions {
        public static final RouteControllerOptions b = new RouteControllerOptions(new Builder().f1371a);

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f1370a;

        /* loaded from: classes.dex */
        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final Bundle f1371a = new Bundle();
        }

        public RouteControllerOptions(Bundle bundle) {
            this.f1370a = new Bundle(bundle);
        }
    }

    public MediaRouteProvider(Context context, ProviderMetadata providerMetadata) {
        if (context != null) {
            this.f1362c = context;
            if (providerMetadata == null) {
                this.f = new ProviderMetadata(new ComponentName(context, getClass()));
                return;
            } else {
                this.f = providerMetadata;
                return;
            }
        }
        throw new IllegalArgumentException("context must not be null");
    }

    public DynamicGroupRouteController a(String str, RouteControllerOptions routeControllerOptions) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
    }

    public RouteController b(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    public RouteController c(String str, RouteControllerOptions routeControllerOptions) {
        return b(str);
    }

    public RouteController d(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                return c(str, RouteControllerOptions.b);
            }
            throw new IllegalArgumentException("routeGroupId cannot be null");
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    public void e(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
    }

    public final void f(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        MediaRouter.c();
        if (this.k != mediaRouteProviderDescriptor) {
            this.k = mediaRouteProviderDescriptor;
            if (!this.l) {
                this.l = true;
                this.g.sendEmptyMessage(1);
            }
        }
    }

    public final void g(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        MediaRouter.c();
        if (!Objects.equals(this.i, mediaRouteDiscoveryRequest)) {
            this.i = mediaRouteDiscoveryRequest;
            if (!this.j) {
                this.j = true;
                this.g.sendEmptyMessage(2);
            }
        }
    }
}
