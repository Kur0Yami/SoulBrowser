package androidx.mediarouter.media;

import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.MediaRouter2$TransferCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.mediarouter.R;
import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderDescriptor;
import androidx.mediarouter.media.MediaRouter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public class MediaRoute2Provider extends MediaRouteProvider {
    public final MediaRouter2 m;
    public final GlobalMediaRouter.Mr2ProviderCallback n;
    public final ArrayMap o;
    public final MediaRouter2$RouteCallback p;
    public final MediaRouter2$TransferCallback q;
    public final MediaRouter2$ControllerCallback r;
    public final c s;
    public boolean t;
    public ArrayList u;
    public final ArrayMap v;
    public String w;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static void a(MediaRouter2 mediaRouter2, android.media.RouteListingPreference routeListingPreference) {
            mediaRouter2.setRouteListingPreference(routeListingPreference);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
    }

    /* loaded from: classes.dex */
    public class ControllerCallback extends MediaRouter2$ControllerCallback {
        public ControllerCallback() {
        }

        public final void onControllerUpdated(MediaRouter2.RoutingController routingController) {
            MediaRoute2Provider.this.l(routingController);
        }
    }

    /* loaded from: classes.dex */
    public class GroupRouteController extends MediaRouteProvider.DynamicGroupRouteController {
        public final String f;
        public final MediaRouter2.RoutingController g;
        public final Messenger h;
        public final Messenger i;
        public final Handler k;
        public MediaRouteDescriptor o;
        public final SparseArray j = new SparseArray();
        public final AtomicInteger l = new AtomicInteger(1);
        public final a m = new a(1, this);
        public int n = -1;

        /* loaded from: classes.dex */
        public class ReceiveHandler extends Handler {
            public ReceiveHandler() {
                super(Looper.getMainLooper());
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                String string;
                int i = message.what;
                int i2 = message.arg1;
                Object obj = message.obj;
                Bundle peekData = message.peekData();
                GroupRouteController groupRouteController = GroupRouteController.this;
                MediaRouter.ControlRequestCallback controlRequestCallback = (MediaRouter.ControlRequestCallback) groupRouteController.j.get(i2);
                if (controlRequestCallback == null) {
                    Log.w("MR2Provider", "Pending callback not found for control request.");
                    return;
                }
                groupRouteController.j.remove(i2);
                if (i != 3) {
                    if (i != 4) {
                        return;
                    }
                    if (peekData == null) {
                        string = null;
                    } else {
                        string = peekData.getString("error");
                    }
                    controlRequestCallback.a(string, (Bundle) obj);
                    return;
                }
                controlRequestCallback.b((Bundle) obj);
            }
        }

        public GroupRouteController(MediaRouter2.RoutingController routingController, String str) {
            Messenger messenger;
            this.g = routingController;
            this.f = str;
            Messenger h = MediaRoute2Provider.h(routingController);
            this.h = h;
            if (h == null) {
                messenger = null;
            } else {
                messenger = new Messenger(new ReceiveHandler());
            }
            this.i = messenger;
            this.k = new Handler(Looper.getMainLooper());
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void d() {
            this.g.release();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void f(int i) {
            MediaRouter2.RoutingController routingController = this.g;
            if (routingController == null) {
                return;
            }
            routingController.setVolume(i);
            this.n = i;
            Handler handler = this.k;
            a aVar = this.m;
            handler.removeCallbacks(aVar);
            handler.postDelayed(aVar, 1000L);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void i(int i) {
            MediaRouter2.RoutingController routingController = this.g;
            if (routingController == null) {
                return;
            }
            int i2 = this.n;
            if (i2 < 0) {
                i2 = routingController.getVolume();
            }
            int max = Math.max(0, Math.min(i2 + i, this.g.getVolumeMax()));
            this.n = max;
            this.g.setVolume(max);
            Handler handler = this.k;
            a aVar = this.m;
            handler.removeCallbacks(aVar);
            handler.postDelayed(aVar, 1000L);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void m(String str) {
            if (str != null && !str.isEmpty()) {
                MediaRoute2Info i = MediaRoute2Provider.this.i(str);
                if (i == null) {
                    Log.w("MR2Provider", "onAddMemberRoute: Specified route not found. routeId=".concat(str));
                    return;
                } else {
                    this.g.selectRoute(i);
                    return;
                }
            }
            Log.w("MR2Provider", "onAddMemberRoute: Ignoring null or empty routeId.");
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void n(String str) {
            if (str != null && !str.isEmpty()) {
                MediaRoute2Info i = MediaRoute2Provider.this.i(str);
                if (i == null) {
                    Log.w("MR2Provider", "onRemoveMemberRoute: Specified route not found. routeId=".concat(str));
                    return;
                } else {
                    this.g.deselectRoute(i);
                    return;
                }
            }
            Log.w("MR2Provider", "onRemoveMemberRoute: Ignoring null or empty routeId.");
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void o(ArrayList arrayList) {
            if (arrayList.isEmpty()) {
                Log.w("MR2Provider", "onUpdateMemberRoutes: Ignoring null or empty routeIds.");
                return;
            }
            String str = (String) arrayList.get(0);
            MediaRoute2Provider mediaRoute2Provider = MediaRoute2Provider.this;
            MediaRoute2Info i = mediaRoute2Provider.i(str);
            if (i == null) {
                Log.w("MR2Provider", "onUpdateMemberRoutes: Specified route not found. routeId=" + str);
                return;
            }
            mediaRoute2Provider.m.transferTo(i);
        }

        public final String p() {
            MediaRouteDescriptor mediaRouteDescriptor = this.o;
            if (mediaRouteDescriptor != null) {
                return mediaRouteDescriptor.f();
            }
            return this.g.getId();
        }

        public final void q(int i, String str) {
            Messenger messenger;
            MediaRouter2.RoutingController routingController = this.g;
            if (routingController != null && !routingController.isReleased() && (messenger = this.h) != null) {
                int andIncrement = this.l.getAndIncrement();
                Message obtain = Message.obtain();
                obtain.what = 7;
                obtain.arg1 = andIncrement;
                Bundle bundle = new Bundle();
                bundle.putInt("volume", i);
                bundle.putString("routeId", str);
                obtain.setData(bundle);
                obtain.replyTo = this.i;
                try {
                    messenger.send(obtain);
                } catch (DeadObjectException unused) {
                } catch (RemoteException e) {
                    Log.e("MR2Provider", "Could not send control request to service.", e);
                }
            }
        }

        public final void r(int i, String str) {
            Messenger messenger;
            MediaRouter2.RoutingController routingController = this.g;
            if (routingController != null && !routingController.isReleased() && (messenger = this.h) != null) {
                int andIncrement = this.l.getAndIncrement();
                Message obtain = Message.obtain();
                obtain.what = 8;
                obtain.arg1 = andIncrement;
                Bundle bundle = new Bundle();
                bundle.putInt("volume", i);
                bundle.putString("routeId", str);
                obtain.setData(bundle);
                obtain.replyTo = this.i;
                try {
                    messenger.send(obtain);
                } catch (DeadObjectException unused) {
                } catch (RemoteException e) {
                    Log.e("MR2Provider", "Could not send control request to service.", e);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class MemberRouteController extends MediaRouteProvider.RouteController {

        /* renamed from: a, reason: collision with root package name */
        public final String f1353a;
        public final GroupRouteController b;

        public MemberRouteController(String str, GroupRouteController groupRouteController) {
            this.f1353a = str;
            this.b = groupRouteController;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void f(int i) {
            GroupRouteController groupRouteController;
            String str = this.f1353a;
            if (str != null && (groupRouteController = this.b) != null) {
                groupRouteController.q(i, str);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void i(int i) {
            GroupRouteController groupRouteController;
            String str = this.f1353a;
            if (str != null && (groupRouteController = this.b) != null) {
                groupRouteController.r(i, str);
            }
        }
    }

    /* loaded from: classes.dex */
    public class RouteCallback extends MediaRouter2$RouteCallback {
        public RouteCallback() {
        }

        public final void onRoutesAdded(List list) {
            MediaRoute2Provider.this.k();
        }

        public final void onRoutesChanged(List list) {
            MediaRoute2Provider.this.k();
        }

        public final void onRoutesRemoved(List list) {
            MediaRoute2Provider.this.k();
        }
    }

    /* loaded from: classes.dex */
    public class RouteCallbackUpsideDownCake extends MediaRouter2$RouteCallback {
        public RouteCallbackUpsideDownCake() {
        }

        public final void onRoutesUpdated(List list) {
            MediaRoute2Provider.this.k();
        }
    }

    /* loaded from: classes.dex */
    public class TransferCallback extends MediaRouter2$TransferCallback {
        public TransferCallback() {
        }

        public final void onStop(MediaRouter2.RoutingController routingController) {
            MediaRoute2Provider mediaRoute2Provider = MediaRoute2Provider.this;
            mediaRoute2Provider.w = null;
            MediaRouteProvider.RouteController routeController = (MediaRouteProvider.RouteController) mediaRoute2Provider.o.remove(routingController);
            if (routeController != null) {
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                if (routeController == globalMediaRouter.e) {
                    MediaRouter.RouteInfo c2 = globalMediaRouter.c();
                    if (globalMediaRouter.h() != c2) {
                        globalMediaRouter.m(c2, 2, true);
                        return;
                    }
                    return;
                }
                int i = GlobalMediaRouter.F;
                return;
            }
            Log.w("MR2Provider", "onStop: No matching routeController found. routingController=" + routingController);
        }

        public final void onTransfer(MediaRouter2.RoutingController routingController, MediaRouter2.RoutingController routingController2) {
            MediaRoute2Provider mediaRoute2Provider = MediaRoute2Provider.this;
            MediaRouter.RouteInfo routeInfo = null;
            mediaRoute2Provider.w = null;
            mediaRoute2Provider.o.remove(routingController);
            if (routingController2 == MediaRoute2Provider.this.m.getSystemController()) {
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                MediaRouter.RouteInfo c2 = globalMediaRouter.c();
                if (globalMediaRouter.h() != c2) {
                    globalMediaRouter.m(c2, 3, true);
                    return;
                }
                return;
            }
            List<MediaRoute2Info> selectedRoutes = routingController2.getSelectedRoutes();
            if (selectedRoutes.isEmpty()) {
                Log.w("MR2Provider", "Selected routes are empty. This shouldn't happen.");
                return;
            }
            int i = 0;
            String id = androidx.core.view.accessibility.a.e(selectedRoutes.get(0)).getId();
            MediaRoute2Provider.this.o.put(routingController2, new GroupRouteController(routingController2, id));
            GlobalMediaRouter globalMediaRouter2 = GlobalMediaRouter.this;
            ArrayList arrayList = globalMediaRouter2.i;
            int size = arrayList.size();
            while (true) {
                if (i >= size) {
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) obj;
                if (routeInfo2.d() == globalMediaRouter2.r && TextUtils.equals(id, routeInfo2.b)) {
                    routeInfo = routeInfo2;
                    break;
                }
            }
            if (routeInfo == null) {
                Log.w("AxMediaRouter", "onSelectRoute: The target RouteInfo is not found for descriptorId=" + id);
            } else {
                globalMediaRouter2.m(routeInfo, 3, true);
            }
            MediaRoute2Provider.this.l(routingController2);
        }

        public final void onTransferFailure(MediaRoute2Info mediaRoute2Info) {
            MediaRoute2Provider.this.w = null;
            Log.w("MR2Provider", "Transfer failed. requestedRoute=" + mediaRoute2Info);
        }
    }

    static {
        Log.isLoggable("MR2Provider", 3);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.mediarouter.media.c] */
    public MediaRoute2Provider(Context context, GlobalMediaRouter.Mr2ProviderCallback mr2ProviderCallback) {
        super(context, null);
        this.o = new ArrayMap();
        this.q = new TransferCallback();
        this.r = new ControllerCallback();
        this.u = new ArrayList();
        this.v = new ArrayMap();
        this.m = MediaRouter2.getInstance(context);
        this.n = mr2ProviderCallback;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.s = new Executor() { // from class: androidx.mediarouter.media.c
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
        if (Build.VERSION.SDK_INT >= 34) {
            this.p = new RouteCallbackUpsideDownCake();
        } else {
            this.p = new RouteCallback();
        }
    }

    public static Messenger h(MediaRouter2.RoutingController routingController) {
        Bundle controlHints = routingController.getControlHints();
        if (controlHints == null) {
            return null;
        }
        return (Messenger) controlHints.getParcelable("androidx.mediarouter.media.KEY_MESSENGER");
    }

    public static String j(MediaRouteProvider.RouteController routeController) {
        MediaRouter2.RoutingController routingController;
        if (!(routeController instanceof GroupRouteController) || (routingController = ((GroupRouteController) routeController).g) == null) {
            return null;
        }
        return routingController.getId();
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final MediaRouteProvider.DynamicGroupRouteController a(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        Iterator it = this.o.entrySet().iterator();
        while (it.hasNext()) {
            GroupRouteController groupRouteController = (GroupRouteController) ((Map.Entry) it.next()).getValue();
            if (TextUtils.equals(str, groupRouteController.f)) {
                return groupRouteController;
            }
        }
        return null;
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final MediaRouteProvider.RouteController b(String str) {
        return new MemberRouteController((String) this.v.get(str), null);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final MediaRouteProvider.RouteController d(String str, String str2) {
        String str3 = (String) this.v.get(str);
        for (GroupRouteController groupRouteController : this.o.values()) {
            if (TextUtils.equals(str2, groupRouteController.p())) {
                return new MemberRouteController(str3, groupRouteController);
            }
        }
        Log.w("MR2Provider", "Could not find the matching GroupRouteController. routeId=" + str + ", routeGroupId=" + str2);
        return new MemberRouteController(str3, null);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x00a7. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.mediarouter.media.MediaRouteSelector$Builder, java.lang.Object] */
    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final void e(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        int i;
        boolean z;
        RouteDiscoveryPreference build;
        if (MediaRouter.f1378c == null) {
            i = 0;
        } else {
            i = MediaRouter.g().B;
        }
        MediaRouter2$ControllerCallback mediaRouter2$ControllerCallback = this.r;
        MediaRouter2$TransferCallback mediaRouter2$TransferCallback = this.q;
        MediaRouter2$RouteCallback mediaRouter2$RouteCallback = this.p;
        if (i > 0) {
            MediaRouterParams mediaRouterParams = MediaRouter.g().u;
            if (mediaRouterParams == null) {
                z = false;
            } else {
                z = mediaRouterParams.f1391c;
            }
            if (mediaRouteDiscoveryRequest == null) {
                mediaRouteDiscoveryRequest = new MediaRouteDiscoveryRequest(MediaRouteSelector.f1375c, false);
            }
            mediaRouteDiscoveryRequest.a();
            ArrayList c2 = mediaRouteDiscoveryRequest.b.c();
            if (z) {
                if (!c2.contains("android.media.intent.category.LIVE_AUDIO")) {
                    c2.add("android.media.intent.category.LIVE_AUDIO");
                }
            } else {
                c2.remove("android.media.intent.category.LIVE_AUDIO");
            }
            ?? obj = new Object();
            obj.a(c2);
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest2 = new MediaRouteDiscoveryRequest(obj.c(), mediaRouteDiscoveryRequest.b());
            MediaRouter2 mediaRouter2 = this.m;
            mediaRouteDiscoveryRequest2.a();
            MediaRouteSelector mediaRouteSelector = mediaRouteDiscoveryRequest2.b;
            mediaRouteSelector.a();
            if (mediaRouteSelector.b.contains(null)) {
                build = new RouteDiscoveryPreference.Builder(new ArrayList(), false).build();
            } else {
                boolean b = mediaRouteDiscoveryRequest2.b();
                ArrayList arrayList = new ArrayList();
                mediaRouteDiscoveryRequest2.a();
                ArrayList c3 = mediaRouteDiscoveryRequest2.b.c();
                int size = c3.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = c3.get(i2);
                    i2++;
                    String str = (String) obj2;
                    str.getClass();
                    char c4 = 65535;
                    switch (str.hashCode()) {
                        case -2065577523:
                            if (str.equals("android.media.intent.category.REMOTE_PLAYBACK")) {
                                c4 = 0;
                                break;
                            }
                            break;
                        case 956939050:
                            if (str.equals("android.media.intent.category.LIVE_AUDIO")) {
                                c4 = 1;
                                break;
                            }
                            break;
                        case 975975375:
                            if (str.equals("android.media.intent.category.LIVE_VIDEO")) {
                                c4 = 2;
                                break;
                            }
                            break;
                        case 1601181366:
                            if (str.equals("android.media.intent.category.REMOTE_AUDIO_PLAYBACK")) {
                                c4 = 3;
                                break;
                            }
                            break;
                        case 1693091761:
                            if (str.equals("android.media.intent.category.REMOTE_VIDEO_PLAYBACK")) {
                                c4 = 4;
                                break;
                            }
                            break;
                    }
                    switch (c4) {
                        case 0:
                            str = "android.media.route.feature.REMOTE_PLAYBACK";
                            break;
                        case 1:
                            str = "android.media.route.feature.LIVE_AUDIO";
                            break;
                        case 2:
                            str = "android.media.route.feature.LIVE_VIDEO";
                            break;
                        case 3:
                            str = "android.media.route.feature.REMOTE_AUDIO_PLAYBACK";
                            break;
                        case 4:
                            str = "android.media.route.feature.REMOTE_VIDEO_PLAYBACK";
                            break;
                    }
                    arrayList.add(str);
                }
                build = new RouteDiscoveryPreference.Builder(arrayList, b).build();
            }
            c cVar = this.s;
            mediaRouter2.registerRouteCallback(cVar, mediaRouter2$RouteCallback, build);
            this.m.registerTransferCallback(cVar, mediaRouter2$TransferCallback);
            this.m.registerControllerCallback(cVar, mediaRouter2$ControllerCallback);
            return;
        }
        this.m.unregisterRouteCallback(mediaRouter2$RouteCallback);
        this.m.unregisterTransferCallback(mediaRouter2$TransferCallback);
        this.m.unregisterControllerCallback(mediaRouter2$ControllerCallback);
    }

    public final MediaRoute2Info i(String str) {
        if (str != null) {
            ArrayList arrayList = this.u;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                MediaRoute2Info e = androidx.core.view.accessibility.a.e(obj);
                if (TextUtils.equals(e.getId(), str)) {
                    return e;
                }
            }
            return null;
        }
        return null;
    }

    public final void k() {
        ArrayList arrayList = new ArrayList();
        ArraySet arraySet = new ArraySet();
        Iterator<MediaRoute2Info> it = this.m.getRoutes().iterator();
        while (it.hasNext()) {
            MediaRoute2Info e = androidx.core.view.accessibility.a.e(it.next());
            if (e != null && !arraySet.contains(e) && !e.isSystemRoute()) {
                if (this.t) {
                    if (!e.getId().startsWith(this.f1362c.getPackageName() + "/")) {
                    }
                }
                arraySet.add(e);
                arrayList.add(e);
            }
        }
        if (arrayList.equals(this.u)) {
            return;
        }
        this.u = arrayList;
        ArrayMap arrayMap = this.v;
        arrayMap.clear();
        ArrayList arrayList2 = this.u;
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            MediaRoute2Info e2 = androidx.core.view.accessibility.a.e(obj);
            Bundle extras = e2.getExtras();
            if (extras != null && extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID") != null) {
                arrayMap.put(e2.getId(), extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"));
            } else {
                Log.w("MR2Provider", "Cannot find the original route Id. route=" + e2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = this.u;
        int size2 = arrayList4.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList4.get(i3);
            i3++;
            MediaRouteDescriptor b = MediaRouter2Utils.b(androidx.core.view.accessibility.a.e(obj2));
            if (b != null) {
                arrayList3.add(b);
            }
        }
        MediaRouteProviderDescriptor.Builder builder = new MediaRouteProviderDescriptor.Builder();
        builder.b = true;
        if (!arrayList3.isEmpty()) {
            int size3 = arrayList3.size();
            while (i < size3) {
                Object obj3 = arrayList3.get(i);
                i++;
                builder.a((MediaRouteDescriptor) obj3);
            }
        }
        f(new MediaRouteProviderDescriptor(builder.f1373a, builder.b));
    }

    /* JADX WARN: Type inference failed for: r11v2, types: [androidx.mediarouter.media.MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor$Builder, java.lang.Object] */
    public final void l(MediaRouter2.RoutingController routingController) {
        MediaRouteDescriptor.Builder builder;
        int i;
        GroupRouteController groupRouteController = (GroupRouteController) this.o.get(routingController);
        if (groupRouteController == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No matching routeController found. routingController=" + routingController);
            return;
        }
        List<MediaRoute2Info> selectedRoutes = routingController.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController=" + routingController);
            return;
        }
        ArrayList a2 = MediaRouter2Utils.a(selectedRoutes);
        MediaRouteDescriptor b = MediaRouter2Utils.b(androidx.core.view.accessibility.a.e(selectedRoutes.get(0)));
        Bundle controlHints = routingController.getControlHints();
        String string = this.f1362c.getString(R.string.mr_dialog_default_group_name);
        MediaRouteDescriptor mediaRouteDescriptor = null;
        if (controlHints != null) {
            try {
                String string2 = controlHints.getString("androidx.mediarouter.media.KEY_SESSION_NAME");
                if (!TextUtils.isEmpty(string2)) {
                    string = string2;
                }
                Bundle bundle = controlHints.getBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE");
                if (bundle != null) {
                    mediaRouteDescriptor = new MediaRouteDescriptor(bundle);
                }
            } catch (Exception e) {
                Log.w("MR2Provider", "Exception while unparceling control hints.", e);
            }
        }
        if (mediaRouteDescriptor == null) {
            builder = new MediaRouteDescriptor.Builder(routingController.getId(), string);
            Bundle bundle2 = builder.f1359a;
            bundle2.putInt("connectionState", 2);
            bundle2.putInt("playbackType", 1);
        } else {
            builder = new MediaRouteDescriptor.Builder(mediaRouteDescriptor);
        }
        int volume = routingController.getVolume();
        Bundle bundle3 = builder.f1359a;
        bundle3.putInt("volume", volume);
        bundle3.putInt("volumeMax", routingController.getVolumeMax());
        bundle3.putInt("volumeHandling", routingController.getVolumeHandling());
        builder.f1360c.clear();
        builder.a(b.b());
        builder.b.clear();
        builder.b(a2);
        MediaRouteDescriptor c2 = builder.c();
        ArrayList a3 = MediaRouter2Utils.a(routingController.getSelectableRoutes());
        ArrayList a4 = MediaRouter2Utils.a(routingController.getDeselectableRoutes());
        MediaRouteProviderDescriptor mediaRouteProviderDescriptor = this.k;
        if (mediaRouteProviderDescriptor == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: providerDescriptor is not set.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<MediaRouteDescriptor> list = mediaRouteProviderDescriptor.f1372a;
        if (!list.isEmpty()) {
            for (MediaRouteDescriptor mediaRouteDescriptor2 : list) {
                String f = mediaRouteDescriptor2.f();
                ?? obj = new Object();
                obj.f1367a = 1;
                obj.b = false;
                if (a2.contains(f)) {
                    i = 3;
                } else {
                    i = 1;
                }
                obj.f1367a = i;
                obj.b = a3.contains(f);
                arrayList.add(new MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor(mediaRouteDescriptor2, obj.f1367a, a4.contains(f), obj.b, true));
            }
        }
        groupRouteController.o = c2;
        groupRouteController.l(c2, arrayList);
    }

    public final void m(String str) {
        MediaRoute2Info i = i(str);
        if (i == null) {
            Log.w("MR2Provider", "transferTo: Specified route not found. routeId=" + str);
        } else if (TextUtils.equals(this.w, str)) {
            Log.w("MR2Provider", "Ignoring attempt to transfer to pending transfer route: " + i);
        } else {
            this.w = str;
            this.m.transferTo(i);
        }
    }
}
