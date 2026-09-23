package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class RegisteredMediaRouteProvider extends MediaRouteProvider implements ServiceConnection {
    public static final /* synthetic */ int u = 0;
    public final ComponentName m;
    public final PrivateHandler n;
    public final ArrayList o;
    public boolean p;
    public boolean q;
    public Connection r;
    public boolean s;
    public e t;

    /* loaded from: classes.dex */
    public final class Connection implements IBinder.DeathRecipient {

        /* renamed from: c, reason: collision with root package name */
        public final Messenger f1401c;
        public final ReceiveHandler f;
        public final Messenger g;
        public int j;
        public int k;
        public int h = 1;
        public int i = 1;
        public final SparseArray l = new SparseArray();

        public Connection(Messenger messenger) {
            this.f1401c = messenger;
            ReceiveHandler receiveHandler = new ReceiveHandler(this);
            this.f = receiveHandler;
            this.g = new Messenger(receiveHandler);
        }

        public final void a(int i) {
            int i2 = this.h;
            this.h = i2 + 1;
            b(5, i2, i, null, null);
        }

        public final boolean b(int i, int i2, int i3, Object obj, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = i2;
            obtain.arg2 = i3;
            obtain.obj = obj;
            obtain.setData(bundle);
            obtain.replyTo = this.g;
            try {
                this.f1401c.send(obtain);
                return true;
            } catch (DeadObjectException unused) {
                return false;
            } catch (RemoteException e) {
                if (i != 2) {
                    Log.e("MediaRouteProviderProxy", "Could not send message to service.", e);
                    return false;
                }
                return false;
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            RegisteredMediaRouteProvider.this.n.post(new Runnable() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProvider.Connection.2
                @Override // java.lang.Runnable
                public final void run() {
                    Connection connection = Connection.this;
                    RegisteredMediaRouteProvider registeredMediaRouteProvider = RegisteredMediaRouteProvider.this;
                    if (registeredMediaRouteProvider.r == connection) {
                        registeredMediaRouteProvider.j();
                    }
                }
            });
        }

        public final void c(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i2);
            int i3 = this.h;
            this.h = i3 + 1;
            b(7, i3, i, null, bundle);
        }

        public final void d(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i2);
            int i3 = this.h;
            this.h = i3 + 1;
            b(8, i3, i, null, bundle);
        }
    }

    /* loaded from: classes.dex */
    public interface ControllerCallback {
    }

    /* loaded from: classes.dex */
    public interface ControllerConnection {
        int a();

        void b();

        void c(Connection connection);
    }

    /* loaded from: classes.dex */
    public static final class PrivateHandler extends Handler {
    }

    /* loaded from: classes.dex */
    public static final class ReceiveHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f1404a;

        public ReceiveHandler(Connection connection) {
            this.f1404a = new WeakReference(connection);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MediaRouteDescriptor mediaRouteDescriptor;
            MediaRouteDescriptor mediaRouteDescriptor2;
            MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor;
            Connection connection = (Connection) this.f1404a.get();
            if (connection != null) {
                SparseArray sparseArray = connection.l;
                RegisteredMediaRouteProvider registeredMediaRouteProvider = RegisteredMediaRouteProvider.this;
                ArrayList arrayList = registeredMediaRouteProvider.o;
                int i = message.what;
                int i2 = message.arg1;
                int i3 = message.arg2;
                Object obj = message.obj;
                Bundle peekData = message.peekData();
                int i4 = 0;
                String str = null;
                ControllerConnection controllerConnection = null;
                ControllerConnection controllerConnection2 = null;
                switch (i) {
                    case 0:
                        if (i2 == connection.k) {
                            connection.k = 0;
                            if (registeredMediaRouteProvider.r == connection) {
                                registeredMediaRouteProvider.k();
                            }
                        }
                        MediaRouter.ControlRequestCallback controlRequestCallback = (MediaRouter.ControlRequestCallback) sparseArray.get(i2);
                        if (controlRequestCallback != null) {
                            sparseArray.remove(i2);
                            controlRequestCallback.a(null, null);
                            return;
                        }
                        return;
                    case 1:
                        return;
                    case 2:
                        if (obj == null || (obj instanceof Bundle)) {
                            Bundle bundle = (Bundle) obj;
                            if (connection.j == 0 && i2 == connection.k && i3 >= 1) {
                                connection.k = 0;
                                connection.j = i3;
                                MediaRouteProviderDescriptor a2 = MediaRouteProviderDescriptor.a(bundle);
                                if (registeredMediaRouteProvider.r == connection) {
                                    registeredMediaRouteProvider.f(a2);
                                }
                                if (registeredMediaRouteProvider.r == connection) {
                                    registeredMediaRouteProvider.s = true;
                                    int size = arrayList.size();
                                    while (i4 < size) {
                                        ((ControllerConnection) arrayList.get(i4)).c(registeredMediaRouteProvider.r);
                                        i4++;
                                    }
                                    MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = registeredMediaRouteProvider.i;
                                    if (mediaRouteDiscoveryRequest != null) {
                                        Connection connection2 = registeredMediaRouteProvider.r;
                                        int i5 = connection2.h;
                                        connection2.h = i5 + 1;
                                        connection2.b(10, i5, 0, mediaRouteDiscoveryRequest.f1361a, null);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                        break;
                    case 3:
                        if (obj == null || (obj instanceof Bundle)) {
                            Bundle bundle2 = (Bundle) obj;
                            MediaRouter.ControlRequestCallback controlRequestCallback2 = (MediaRouter.ControlRequestCallback) sparseArray.get(i2);
                            if (controlRequestCallback2 != null) {
                                sparseArray.remove(i2);
                                controlRequestCallback2.b(bundle2);
                                return;
                            }
                        }
                        break;
                    case 4:
                        if (obj == null || (obj instanceof Bundle)) {
                            if (peekData != null) {
                                str = peekData.getString("error");
                            }
                            Bundle bundle3 = (Bundle) obj;
                            MediaRouter.ControlRequestCallback controlRequestCallback3 = (MediaRouter.ControlRequestCallback) sparseArray.get(i2);
                            if (controlRequestCallback3 != null) {
                                sparseArray.remove(i2);
                                controlRequestCallback3.a(str, bundle3);
                                return;
                            }
                        }
                        break;
                    case 5:
                        if (obj == null || (obj instanceof Bundle)) {
                            Bundle bundle4 = (Bundle) obj;
                            if (connection.j != 0) {
                                MediaRouteProviderDescriptor a3 = MediaRouteProviderDescriptor.a(bundle4);
                                if (registeredMediaRouteProvider.r == connection) {
                                    registeredMediaRouteProvider.f(a3);
                                    return;
                                }
                                return;
                            }
                        }
                        break;
                    case 6:
                        if (obj instanceof Bundle) {
                            Bundle bundle5 = (Bundle) obj;
                            MediaRouter.ControlRequestCallback controlRequestCallback4 = (MediaRouter.ControlRequestCallback) sparseArray.get(i2);
                            if (bundle5.containsKey("routeId")) {
                                sparseArray.remove(i2);
                                controlRequestCallback4.b(bundle5);
                                break;
                            } else {
                                controlRequestCallback4.a("DynamicGroupRouteController is created without valid route id.", bundle5);
                                break;
                            }
                        } else {
                            Log.w("MediaRouteProviderProxy", "No further information on the dynamic group controller");
                            break;
                        }
                    case 7:
                        if (obj == null || (obj instanceof Bundle)) {
                            Bundle bundle6 = (Bundle) obj;
                            if (connection.j != 0) {
                                Bundle bundle7 = (Bundle) bundle6.getParcelable("groupRoute");
                                if (bundle7 != null) {
                                    mediaRouteDescriptor = new MediaRouteDescriptor(bundle7);
                                } else {
                                    mediaRouteDescriptor = null;
                                }
                                ArrayList parcelableArrayList = bundle6.getParcelableArrayList("dynamicRoutes");
                                ArrayList arrayList2 = new ArrayList();
                                int size2 = parcelableArrayList.size();
                                int i6 = 0;
                                while (i6 < size2) {
                                    Object obj2 = parcelableArrayList.get(i6);
                                    i6++;
                                    Bundle bundle8 = (Bundle) obj2;
                                    if (bundle8 == null) {
                                        dynamicRouteDescriptor = null;
                                    } else {
                                        Bundle bundle9 = bundle8.getBundle("mrDescriptor");
                                        if (bundle9 != null) {
                                            mediaRouteDescriptor2 = new MediaRouteDescriptor(bundle9);
                                        } else {
                                            mediaRouteDescriptor2 = null;
                                        }
                                        dynamicRouteDescriptor = new MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor(mediaRouteDescriptor2, bundle8.getInt("selectionState", 1), bundle8.getBoolean("isUnselectable", false), bundle8.getBoolean("isGroupable", false), bundle8.getBoolean("isTransferable", false));
                                    }
                                    arrayList2.add(dynamicRouteDescriptor);
                                }
                                if (registeredMediaRouteProvider.r == connection) {
                                    int size3 = arrayList.size();
                                    while (true) {
                                        if (i4 < size3) {
                                            Object obj3 = arrayList.get(i4);
                                            i4++;
                                            ControllerConnection controllerConnection3 = (ControllerConnection) obj3;
                                            if (controllerConnection3.a() == i3) {
                                                controllerConnection2 = controllerConnection3;
                                            }
                                        }
                                    }
                                    if (controllerConnection2 instanceof RegisteredDynamicController) {
                                        ((RegisteredDynamicController) controllerConnection2).l(mediaRouteDescriptor, arrayList2);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                        break;
                    case 8:
                        if (registeredMediaRouteProvider.r == connection) {
                            int size4 = arrayList.size();
                            while (true) {
                                if (i4 < size4) {
                                    Object obj4 = arrayList.get(i4);
                                    i4++;
                                    ControllerConnection controllerConnection4 = (ControllerConnection) obj4;
                                    if (controllerConnection4.a() == i3) {
                                        controllerConnection = controllerConnection4;
                                    }
                                }
                            }
                            e eVar = registeredMediaRouteProvider.t;
                            if (eVar != null && (controllerConnection instanceof MediaRouteProvider.RouteController)) {
                                MediaRouteProvider.RouteController routeController = (MediaRouteProvider.RouteController) controllerConnection;
                                GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) eVar.f1424a.b;
                                if (globalMediaRouter.e == routeController) {
                                    globalMediaRouter.l(globalMediaRouter.c(), 2, true);
                                }
                            }
                            if (controllerConnection != null) {
                                arrayList.remove(controllerConnection);
                                controllerConnection.b();
                                registeredMediaRouteProvider.l();
                                break;
                            }
                        }
                        break;
                }
                int i7 = RegisteredMediaRouteProvider.u;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class RegisteredDynamicController extends MediaRouteProvider.DynamicGroupRouteController implements ControllerConnection {
        public final String f;
        public final MediaRouteProvider.RouteControllerOptions g;
        public String h;
        public String i;
        public boolean j;
        public int l;
        public Connection m;
        public int k = -1;
        public int n = -1;

        public RegisteredDynamicController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            this.f = str;
            this.g = routeControllerOptions;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public final int a() {
            return this.n;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public final void b() {
            Connection connection = this.m;
            if (connection != null) {
                int i = this.n;
                int i2 = connection.h;
                connection.h = i2 + 1;
                connection.b(4, i2, i, null, null);
                this.m = null;
                this.n = 0;
            }
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public final void c(Connection connection) {
            MediaRouter.ControlRequestCallback controlRequestCallback = new MediaRouter.ControlRequestCallback() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProvider.RegisteredDynamicController.1
                @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                public final void a(String str, Bundle bundle) {
                    Log.d("MediaRouteProviderProxy", "Error: " + str + ", data: " + bundle);
                }

                @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                public final void b(Bundle bundle) {
                    String string = bundle.getString("groupableTitle");
                    RegisteredDynamicController registeredDynamicController = RegisteredDynamicController.this;
                    registeredDynamicController.h = string;
                    registeredDynamicController.i = bundle.getString("transferableTitle");
                }
            };
            this.m = connection;
            int i = connection.i;
            connection.i = i + 1;
            int i2 = connection.h;
            connection.h = i2 + 1;
            Bundle bundle = new Bundle();
            bundle.putString("memberRouteId", this.f);
            bundle.putParcelable("routeControllerOptions", this.g.f1370a);
            connection.b(11, i2, i, null, bundle);
            connection.l.put(i2, controlRequestCallback);
            this.n = i;
            if (this.j) {
                connection.a(i);
                int i3 = this.k;
                if (i3 >= 0) {
                    connection.c(this.n, i3);
                    this.k = -1;
                }
                int i4 = this.l;
                if (i4 != 0) {
                    connection.d(this.n, i4);
                    this.l = 0;
                }
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void d() {
            RegisteredMediaRouteProvider registeredMediaRouteProvider = RegisteredMediaRouteProvider.this;
            registeredMediaRouteProvider.o.remove(this);
            b();
            registeredMediaRouteProvider.l();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void e() {
            this.j = true;
            Connection connection = this.m;
            if (connection != null) {
                connection.a(this.n);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void f(int i) {
            Connection connection = this.m;
            if (connection != null) {
                connection.c(this.n, i);
            } else {
                this.k = i;
                this.l = 0;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void g() {
            h(0);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void h(int i) {
            this.j = false;
            Connection connection = this.m;
            if (connection != null) {
                int i2 = this.n;
                Bundle bundle = new Bundle();
                bundle.putInt("unselectReason", i);
                int i3 = connection.h;
                connection.h = i3 + 1;
                connection.b(6, i3, i2, null, bundle);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void i(int i) {
            Connection connection = this.m;
            if (connection != null) {
                connection.d(this.n, i);
            } else {
                this.l += i;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final String j() {
            return this.h;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final String k() {
            return this.i;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void m(String str) {
            Connection connection = this.m;
            if (connection != null) {
                int i = this.n;
                connection.getClass();
                Bundle bundle = new Bundle();
                bundle.putString("memberRouteId", str);
                int i2 = connection.h;
                connection.h = i2 + 1;
                connection.b(12, i2, i, null, bundle);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void n(String str) {
            Connection connection = this.m;
            if (connection != null) {
                int i = this.n;
                connection.getClass();
                Bundle bundle = new Bundle();
                bundle.putString("memberRouteId", str);
                int i2 = connection.h;
                connection.h = i2 + 1;
                connection.b(13, i2, i, null, bundle);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public final void o(ArrayList arrayList) {
            Connection connection = this.m;
            if (connection != null) {
                int i = this.n;
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("memberRouteIds", new ArrayList<>(arrayList));
                int i2 = connection.h;
                connection.h = i2 + 1;
                connection.b(14, i2, i, null, bundle);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class RegisteredRouteController extends MediaRouteProvider.RouteController implements ControllerConnection {

        /* renamed from: a, reason: collision with root package name */
        public final String f1406a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final MediaRouteProvider.RouteControllerOptions f1407c;
        public boolean d;
        public int e = -1;
        public int f;
        public Connection g;
        public int h;

        public RegisteredRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            this.f1406a = str;
            this.b = str2;
            this.f1407c = routeControllerOptions;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public final int a() {
            return this.h;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public final void b() {
            Connection connection = this.g;
            if (connection != null) {
                int i = this.h;
                int i2 = connection.h;
                connection.h = i2 + 1;
                connection.b(4, i2, i, null, null);
                this.g = null;
                this.h = 0;
            }
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public final void c(Connection connection) {
            this.g = connection;
            int i = connection.i;
            connection.i = i + 1;
            Bundle bundle = new Bundle();
            bundle.putString("routeId", this.f1406a);
            bundle.putString("routeGroupId", this.b);
            bundle.putParcelable("routeControllerOptions", this.f1407c.f1370a);
            int i2 = connection.h;
            connection.h = i2 + 1;
            connection.b(3, i2, i, null, bundle);
            this.h = i;
            if (this.d) {
                connection.a(i);
                int i3 = this.e;
                if (i3 >= 0) {
                    connection.c(this.h, i3);
                    this.e = -1;
                }
                int i4 = this.f;
                if (i4 != 0) {
                    connection.d(this.h, i4);
                    this.f = 0;
                }
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void d() {
            RegisteredMediaRouteProvider registeredMediaRouteProvider = RegisteredMediaRouteProvider.this;
            registeredMediaRouteProvider.o.remove(this);
            b();
            registeredMediaRouteProvider.l();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void e() {
            this.d = true;
            Connection connection = this.g;
            if (connection != null) {
                connection.a(this.h);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void f(int i) {
            Connection connection = this.g;
            if (connection != null) {
                connection.c(this.h, i);
            } else {
                this.e = i;
                this.f = 0;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void g() {
            h(0);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void h(int i) {
            this.d = false;
            Connection connection = this.g;
            if (connection != null) {
                int i2 = this.h;
                Bundle bundle = new Bundle();
                bundle.putInt("unselectReason", i);
                int i3 = connection.h;
                connection.h = i3 + 1;
                connection.b(6, i3, i2, null, bundle);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public final void i(int i) {
            Connection connection = this.g;
            if (connection != null) {
                connection.d(this.h, i);
            } else {
                this.f += i;
            }
        }
    }

    static {
        Log.isLoggable("MediaRouteProviderProxy", 3);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.mediarouter.media.RegisteredMediaRouteProvider$PrivateHandler, android.os.Handler] */
    public RegisteredMediaRouteProvider(Context context, ComponentName componentName) {
        super(context, new MediaRouteProvider.ProviderMetadata(componentName));
        this.o = new ArrayList();
        this.m = componentName;
        this.n = new Handler();
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final MediaRouteProvider.DynamicGroupRouteController a(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        if (str != null) {
            MediaRouteProviderDescriptor mediaRouteProviderDescriptor = this.k;
            if (mediaRouteProviderDescriptor != null) {
                List list = mediaRouteProviderDescriptor.f1372a;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    if (((MediaRouteDescriptor) list.get(i)).f().equals(str)) {
                        RegisteredDynamicController registeredDynamicController = new RegisteredDynamicController(str, routeControllerOptions);
                        this.o.add(registeredDynamicController);
                        if (this.s) {
                            registeredDynamicController.c(this.r);
                        }
                        l();
                        return registeredDynamicController;
                    }
                }
                return null;
            }
            return null;
        }
        throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final MediaRouteProvider.RouteController c(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        if (str != null) {
            return i(str, null, routeControllerOptions);
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final MediaRouteProvider.RouteController d(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                return i(str, str2, MediaRouteProvider.RouteControllerOptions.b);
            }
            throw new IllegalArgumentException("routeGroupId cannot be null");
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public final void e(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        Bundle bundle;
        if (this.s) {
            Connection connection = this.r;
            int i = connection.h;
            connection.h = i + 1;
            if (mediaRouteDiscoveryRequest != null) {
                bundle = mediaRouteDiscoveryRequest.f1361a;
            } else {
                bundle = null;
            }
            connection.b(10, i, 0, bundle, null);
        }
        l();
    }

    public final void h() {
        int i;
        if (!this.q) {
            Intent intent = new Intent("android.media.MediaRouteProviderService");
            intent.setComponent(this.m);
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    i = 4097;
                } else {
                    i = 1;
                }
                this.q = this.f1362c.bindService(intent, this, i);
            } catch (SecurityException unused) {
            }
        }
    }

    public final MediaRouteProvider.RouteController i(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        MediaRouteProviderDescriptor mediaRouteProviderDescriptor = this.k;
        if (mediaRouteProviderDescriptor != null) {
            List list = mediaRouteProviderDescriptor.f1372a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (((MediaRouteDescriptor) list.get(i)).f().equals(str)) {
                    RegisteredRouteController registeredRouteController = new RegisteredRouteController(str, str2, routeControllerOptions);
                    this.o.add(registeredRouteController);
                    if (this.s) {
                        registeredRouteController.c(this.r);
                    }
                    l();
                    return registeredRouteController;
                }
            }
            return null;
        }
        return null;
    }

    public final void j() {
        if (this.r != null) {
            f(null);
            this.s = false;
            ArrayList arrayList = this.o;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((ControllerConnection) arrayList.get(i)).b();
            }
            final Connection connection = this.r;
            connection.b(2, 0, 0, null, null);
            connection.f.f1404a.clear();
            connection.f1401c.getBinder().unlinkToDeath(connection, 0);
            RegisteredMediaRouteProvider.this.n.post(new Runnable() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProvider.Connection.1
                @Override // java.lang.Runnable
                public final void run() {
                    SparseArray sparseArray = Connection.this.l;
                    int size2 = sparseArray.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((MediaRouter.ControlRequestCallback) sparseArray.valueAt(i2)).a(null, null);
                    }
                    sparseArray.clear();
                }
            });
            this.r = null;
        }
    }

    public final void k() {
        if (this.q) {
            this.q = false;
            j();
            try {
                this.f1362c.unbindService(this);
            } catch (IllegalArgumentException e) {
                Log.e("MediaRouteProviderProxy", this + ": unbindService failed", e);
            }
        }
    }

    public final void l() {
        if (this.p && (this.i != null || !this.o.isEmpty())) {
            h();
        } else {
            k();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Messenger messenger;
        if (this.q) {
            j();
            if (iBinder != null) {
                messenger = new Messenger(iBinder);
            } else {
                messenger = null;
            }
            if (messenger != null) {
                try {
                    if (messenger.getBinder() != null) {
                        Connection connection = new Connection(messenger);
                        int i = connection.h;
                        connection.h = i + 1;
                        connection.k = i;
                        if (connection.b(1, i, 4, null, null)) {
                            try {
                                connection.f1401c.getBinder().linkToDeath(connection, 0);
                                this.r = connection;
                                return;
                            } catch (RemoteException unused) {
                                connection.binderDied();
                                return;
                            }
                        }
                        return;
                    }
                } catch (NullPointerException unused2) {
                }
            }
            Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        j();
    }

    public final String toString() {
        return "Service connection " + this.m.flattenToShortString();
    }
}
