package androidx.mediarouter.media;

import android.media.MediaRouter;
import android.view.Display;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;

/* loaded from: classes.dex */
class MediaRouterUtils {

    /* loaded from: classes.dex */
    public interface Callback {
    }

    /* loaded from: classes.dex */
    public static class CallbackProxy<T extends Callback> extends MediaRouter.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final Callback f1394a;

        public CallbackProxy(Callback callback) {
            this.f1394a = callback;
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteAdded(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1394a;
            if (jellybeanMr2Impl.h(routeInfo)) {
                jellybeanMr2Impl.r();
            }
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteChanged(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            int i;
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1394a;
            jellybeanMr2Impl.getClass();
            if (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.m(routeInfo) == null && (i = jellybeanMr2Impl.i(routeInfo)) >= 0) {
                PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord systemRouteRecord = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord) jellybeanMr2Impl.u.get(i);
                MediaRouteDescriptor.Builder builder = new MediaRouteDescriptor.Builder(systemRouteRecord.b, jellybeanMr2Impl.l(systemRouteRecord.f1398a));
                jellybeanMr2Impl.n(systemRouteRecord, builder);
                systemRouteRecord.f1399c = builder.c();
                jellybeanMr2Impl.r();
            }
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteGrouped(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i) {
            this.f1394a.getClass();
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRoutePresentationDisplayChanged(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            int i;
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1394a;
            int i2 = jellybeanMr2Impl.i(routeInfo);
            if (i2 >= 0) {
                PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord systemRouteRecord = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord) jellybeanMr2Impl.u.get(i2);
                Display presentationDisplay = routeInfo.getPresentationDisplay();
                if (presentationDisplay != null) {
                    i = presentationDisplay.getDisplayId();
                } else {
                    i = -1;
                }
                if (i != systemRouteRecord.f1399c.f1358a.getInt("presentationDisplayId", -1)) {
                    MediaRouteDescriptor.Builder builder = new MediaRouteDescriptor.Builder(systemRouteRecord.f1399c);
                    builder.f1359a.putInt("presentationDisplayId", i);
                    systemRouteRecord.f1399c = builder.c();
                    jellybeanMr2Impl.r();
                }
            }
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteRemoved(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            int i;
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1394a;
            jellybeanMr2Impl.getClass();
            if (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.m(routeInfo) == null && (i = jellybeanMr2Impl.i(routeInfo)) >= 0) {
                jellybeanMr2Impl.u.remove(i);
                jellybeanMr2Impl.r();
            }
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteSelected(android.media.MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
            MediaRouter.RouteInfo a2;
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1394a;
            if (routeInfo == jellybeanMr2Impl.n.getSelectedRoute(8388611)) {
                PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.UserRouteRecord m = PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.m(routeInfo);
                if (m != null) {
                    m.f1400a.m(false);
                    return;
                }
                int i2 = jellybeanMr2Impl.i(routeInfo);
                if (i2 >= 0) {
                    PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord systemRouteRecord = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord) jellybeanMr2Impl.u.get(i2);
                    PlatformMediaRouter1RouteProvider.SyncCallback syncCallback = jellybeanMr2Impl.m;
                    String str = systemRouteRecord.b;
                    GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) syncCallback;
                    globalMediaRouter.f1340a.removeMessages(262);
                    MediaRouter.ProviderInfo d = globalMediaRouter.d(globalMediaRouter.s);
                    if (d != null && (a2 = d.a(str)) != null) {
                        a2.m(false);
                    }
                }
            }
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteUngrouped(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
            this.f1394a.getClass();
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteUnselected(android.media.MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
            this.f1394a.getClass();
        }

        @Override // android.media.MediaRouter.Callback
        public final void onRouteVolumeChanged(android.media.MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            int i;
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl jellybeanMr2Impl = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1394a;
            jellybeanMr2Impl.getClass();
            if (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.m(routeInfo) == null && (i = jellybeanMr2Impl.i(routeInfo)) >= 0) {
                PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord systemRouteRecord = (PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.SystemRouteRecord) jellybeanMr2Impl.u.get(i);
                int volume = routeInfo.getVolume();
                if (volume != systemRouteRecord.f1399c.h()) {
                    MediaRouteDescriptor.Builder builder = new MediaRouteDescriptor.Builder(systemRouteRecord.f1399c);
                    builder.f1359a.putInt("volume", volume);
                    systemRouteRecord.f1399c = builder.c();
                    jellybeanMr2Impl.r();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface VolumeCallback {
    }

    /* loaded from: classes.dex */
    public static class VolumeCallbackProxy<T extends VolumeCallback> extends MediaRouter.VolumeCallback {

        /* renamed from: a, reason: collision with root package name */
        public final VolumeCallback f1395a;

        public VolumeCallbackProxy(VolumeCallback volumeCallback) {
            this.f1395a = volumeCallback;
        }

        @Override // android.media.MediaRouter.VolumeCallback
        public final void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i) {
            ((PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1395a).getClass();
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.UserRouteRecord m = PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.m(routeInfo);
            if (m != null) {
                m.f1400a.k(i);
            }
        }

        @Override // android.media.MediaRouter.VolumeCallback
        public final void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i) {
            ((PlatformMediaRouter1RouteProvider.JellybeanMr2Impl) this.f1395a).getClass();
            PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.UserRouteRecord m = PlatformMediaRouter1RouteProvider.JellybeanMr2Impl.m(routeInfo);
            if (m != null) {
                m.f1400a.l(i);
            }
        }
    }
}
