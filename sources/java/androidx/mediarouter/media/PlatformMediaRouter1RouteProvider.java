package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.media.MediaRouter;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import androidx.annotation.RequiresApi;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderDescriptor;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes.dex */
abstract class PlatformMediaRouter1RouteProvider extends MediaRouteProvider {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl extends JellybeanMr2Impl {
        @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider.JellybeanMr2Impl
        public final void n(JellybeanMr2Impl.SystemRouteRecord systemRouteRecord, MediaRouteDescriptor.Builder builder) {
            super.n(systemRouteRecord, builder);
            builder.f1359a.putInt("deviceType", systemRouteRecord.f1398a.getDeviceType());
        }
    }

    /* loaded from: classes.dex */
    public static class JellybeanMr2Impl extends PlatformMediaRouter1RouteProvider implements MediaRouterUtils.Callback, MediaRouterUtils.VolumeCallback {
        public static final ArrayList w;
        public static final ArrayList x;
        public final SyncCallback m;
        public final android.media.MediaRouter n;
        public final MediaRouter.Callback o;
        public final MediaRouter.VolumeCallback p;
        public final MediaRouter.RouteCategory q;
        public int r;
        public boolean s;
        public boolean t;
        public final ArrayList u;
        public final ArrayList v;

        /* loaded from: classes.dex */
        public static final class SystemRouteController extends MediaRouteProvider.RouteController {

            /* renamed from: a, reason: collision with root package name */
            public final MediaRouter.RouteInfo f1397a;

            public SystemRouteController(MediaRouter.RouteInfo routeInfo) {
                this.f1397a = routeInfo;
            }

            @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
            public final void f(int i) {
                this.f1397a.requestSetVolume(i);
            }

            @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
            public final void i(int i) {
                this.f1397a.requestUpdateVolume(i);
            }
        }

        /* loaded from: classes.dex */
        public static final class SystemRouteRecord {

            /* renamed from: a, reason: collision with root package name */
            public final MediaRouter.RouteInfo f1398a;
            public final String b;

            /* renamed from: c, reason: collision with root package name */
            public MediaRouteDescriptor f1399c;

            public SystemRouteRecord(MediaRouter.RouteInfo routeInfo, String str) {
                this.f1398a = routeInfo;
                this.b = str;
            }
        }

        /* loaded from: classes.dex */
        public static final class UserRouteRecord {

            /* renamed from: a, reason: collision with root package name */
            public final MediaRouter.RouteInfo f1400a;
            public final MediaRouter.UserRouteInfo b;

            public UserRouteRecord(MediaRouter.RouteInfo routeInfo, MediaRouter.UserRouteInfo userRouteInfo) {
                this.f1400a = routeInfo;
                this.b = userRouteInfo;
            }
        }

        static {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
            ArrayList arrayList = new ArrayList();
            w = arrayList;
            arrayList.add(intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addCategory("android.media.intent.category.LIVE_VIDEO");
            ArrayList arrayList2 = new ArrayList();
            x = arrayList2;
            arrayList2.add(intentFilter2);
        }

        public JellybeanMr2Impl(Context context, SyncCallback syncCallback) {
            super(context, new MediaRouteProvider.ProviderMetadata(new ComponentName("android", PlatformMediaRouter1RouteProvider.class.getName())));
            this.u = new ArrayList();
            this.v = new ArrayList();
            this.m = syncCallback;
            android.media.MediaRouter mediaRouter = (android.media.MediaRouter) context.getSystemService("media_router");
            this.n = mediaRouter;
            this.o = new MediaRouterUtils.CallbackProxy(this);
            this.p = new MediaRouterUtils.VolumeCallbackProxy(this);
            this.q = mediaRouter.createRouteCategory((CharSequence) context.getResources().getString(R.string.mr_user_route_category_name), false);
            s();
        }

        public static UserRouteRecord m(MediaRouter.RouteInfo routeInfo) {
            Object tag = routeInfo.getTag();
            if (tag instanceof UserRouteRecord) {
                return (UserRouteRecord) tag;
            }
            return null;
        }

        public static void t(UserRouteRecord userRouteRecord) {
            int i;
            MediaRouter.UserRouteInfo userRouteInfo = userRouteRecord.b;
            MediaRouter.RouteInfo routeInfo = userRouteRecord.f1400a;
            userRouteInfo.setName(routeInfo.d);
            userRouteInfo.setPlaybackType(routeInfo.l);
            userRouteInfo.setPlaybackStream(routeInfo.m);
            userRouteInfo.setVolume(routeInfo.p);
            userRouteInfo.setVolumeMax(routeInfo.q);
            if (routeInfo.f() && !MediaRouter.m()) {
                i = 0;
            } else {
                i = routeInfo.o;
            }
            userRouteInfo.setVolumeHandling(i);
            userRouteInfo.setDescription(routeInfo.e);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider
        public final MediaRouteProvider.RouteController b(String str) {
            int j = j(str);
            if (j >= 0) {
                return new SystemRouteController(((SystemRouteRecord) this.u.get(j)).f1398a);
            }
            return null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider
        public final void e(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            boolean z;
            int i = 0;
            if (mediaRouteDiscoveryRequest != null) {
                mediaRouteDiscoveryRequest.a();
                ArrayList c2 = mediaRouteDiscoveryRequest.b.c();
                int size = c2.size();
                int i2 = 0;
                while (i < size) {
                    String str = (String) c2.get(i);
                    if (str.equals("android.media.intent.category.LIVE_AUDIO")) {
                        i2 |= 1;
                    } else if (str.equals("android.media.intent.category.LIVE_VIDEO")) {
                        i2 |= 2;
                    } else {
                        i2 |= 8388608;
                    }
                    i++;
                }
                z = mediaRouteDiscoveryRequest.b();
                i = i2;
            } else {
                z = false;
            }
            if (this.r == i && this.s == z) {
                return;
            }
            this.r = i;
            this.s = z;
            s();
        }

        public final boolean h(MediaRouter.RouteInfo routeInfo) {
            String format;
            String str;
            if (m(routeInfo) != null || i(routeInfo) >= 0) {
                return false;
            }
            if (this.n.getDefaultRoute() == routeInfo) {
                format = "DEFAULT_ROUTE";
            } else {
                format = String.format(Locale.US, "ROUTE_%08x", Integer.valueOf(l(routeInfo).hashCode()));
            }
            if (j(format) >= 0) {
                int i = 2;
                while (true) {
                    Locale locale = Locale.US;
                    str = format + "_" + i;
                    if (j(str) < 0) {
                        break;
                    }
                    i++;
                }
                format = str;
            }
            SystemRouteRecord systemRouteRecord = new SystemRouteRecord(routeInfo, format);
            MediaRouteDescriptor.Builder builder = new MediaRouteDescriptor.Builder(format, l(routeInfo));
            n(systemRouteRecord, builder);
            systemRouteRecord.f1399c = builder.c();
            this.u.add(systemRouteRecord);
            return true;
        }

        public final int i(MediaRouter.RouteInfo routeInfo) {
            ArrayList arrayList = this.u;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((SystemRouteRecord) arrayList.get(i)).f1398a == routeInfo) {
                    return i;
                }
            }
            return -1;
        }

        public final int j(String str) {
            ArrayList arrayList = this.u;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((SystemRouteRecord) arrayList.get(i)).b.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public final int k(MediaRouter.RouteInfo routeInfo) {
            ArrayList arrayList = this.v;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((UserRouteRecord) arrayList.get(i)).f1400a == routeInfo) {
                    return i;
                }
            }
            return -1;
        }

        public final String l(MediaRouter.RouteInfo routeInfo) {
            int i;
            int i2;
            Context context = this.f1362c;
            CharSequence name = routeInfo.getName(context);
            if (!TextUtils.isEmpty(name)) {
                return name.toString();
            }
            if ((routeInfo.getSupportedTypes() & 8388608) == 0) {
                if (Build.VERSION.SDK_INT >= 24) {
                    i = routeInfo.getDeviceType();
                } else {
                    i = 0;
                }
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            i2 = R.string.mr_route_name_unknown;
                        } else {
                            i2 = R.string.mr_route_name_bluetooth;
                        }
                    } else {
                        i2 = R.string.mr_route_name_speaker;
                    }
                } else {
                    i2 = R.string.mr_route_name_tv;
                }
                return context.getString(i2);
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }

        public void n(SystemRouteRecord systemRouteRecord, MediaRouteDescriptor.Builder builder) {
            boolean z;
            Bundle bundle = builder.f1359a;
            MediaRouter.RouteInfo routeInfo = systemRouteRecord.f1398a;
            int supportedTypes = routeInfo.getSupportedTypes();
            if ((supportedTypes & 1) != 0) {
                builder.a(w);
            }
            if ((supportedTypes & 2) != 0) {
                builder.a(x);
            }
            bundle.putInt("playbackType", routeInfo.getPlaybackType());
            bundle.putInt("playbackStream", routeInfo.getPlaybackStream());
            bundle.putInt("volume", routeInfo.getVolume());
            bundle.putInt("volumeMax", routeInfo.getVolumeMax());
            bundle.putInt("volumeHandling", routeInfo.getVolumeHandling());
            if ((8388608 & supportedTypes) == 0) {
                z = true;
            } else {
                z = false;
            }
            bundle.putBoolean("isSystemRoute", z);
            if (!routeInfo.isEnabled()) {
                bundle.putBoolean("enabled", false);
            }
            if (routeInfo.isConnecting()) {
                bundle.putInt("connectionState", 1);
            }
            Display presentationDisplay = routeInfo.getPresentationDisplay();
            if (presentationDisplay != null) {
                bundle.putInt("presentationDisplayId", presentationDisplay.getDisplayId());
            }
            CharSequence description = routeInfo.getDescription();
            if (description != null) {
                bundle.putString("status", description.toString());
            }
        }

        public final void o(MediaRouter.RouteInfo routeInfo) {
            MediaRouteProvider d = routeInfo.d();
            android.media.MediaRouter mediaRouter = this.n;
            if (d != this) {
                MediaRouter.UserRouteInfo createUserRoute = mediaRouter.createUserRoute(this.q);
                UserRouteRecord userRouteRecord = new UserRouteRecord(routeInfo, createUserRoute);
                createUserRoute.setTag(userRouteRecord);
                createUserRoute.setVolumeCallback(this.p);
                t(userRouteRecord);
                this.v.add(userRouteRecord);
                mediaRouter.addUserRoute(createUserRoute);
                return;
            }
            int i = i(mediaRouter.getSelectedRoute(8388611));
            if (i >= 0 && ((SystemRouteRecord) this.u.get(i)).b.equals(routeInfo.b)) {
                routeInfo.m(false);
            }
        }

        public final void p(MediaRouter.RouteInfo routeInfo) {
            int k;
            if (routeInfo.d() != this && (k = k(routeInfo)) >= 0) {
                MediaRouter.UserRouteInfo userRouteInfo = ((UserRouteRecord) this.v.remove(k)).b;
                userRouteInfo.setTag(null);
                userRouteInfo.setVolumeCallback(null);
                try {
                    this.n.removeUserRoute(userRouteInfo);
                } catch (IllegalArgumentException e) {
                    Log.w("AxSysMediaRouteProvider", "Failed to remove user route", e);
                }
            }
        }

        public final void q(MediaRouter.RouteInfo routeInfo) {
            if (routeInfo.h()) {
                MediaRouteProvider d = routeInfo.d();
                android.media.MediaRouter mediaRouter = this.n;
                if (d != this) {
                    int k = k(routeInfo);
                    if (k >= 0) {
                        mediaRouter.selectRoute(8388611, ((UserRouteRecord) this.v.get(k)).b);
                        return;
                    }
                    return;
                }
                int j = j(routeInfo.b);
                if (j >= 0) {
                    mediaRouter.selectRoute(8388611, ((SystemRouteRecord) this.u.get(j)).f1398a);
                }
            }
        }

        public final void r() {
            MediaRouteProviderDescriptor.Builder builder = new MediaRouteProviderDescriptor.Builder();
            ArrayList arrayList = this.u;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                builder.a(((SystemRouteRecord) arrayList.get(i)).f1399c);
            }
            f(new MediaRouteProviderDescriptor(builder.f1373a, builder.b));
        }

        public final void s() {
            boolean z = this.t;
            MediaRouter.Callback callback = this.o;
            android.media.MediaRouter mediaRouter = this.n;
            if (z) {
                mediaRouter.removeCallback(callback);
            }
            this.t = true;
            mediaRouter.addCallback(this.r, callback, (this.s ? 1 : 0) | 2);
            int routeCount = mediaRouter.getRouteCount();
            ArrayList arrayList = new ArrayList(routeCount);
            boolean z2 = false;
            for (int i = 0; i < routeCount; i++) {
                arrayList.add(mediaRouter.getRouteAt(i));
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                z2 |= h((MediaRouter.RouteInfo) obj);
            }
            if (z2) {
                r();
            }
        }
    }

    /* loaded from: classes.dex */
    public interface SyncCallback {
    }
}
