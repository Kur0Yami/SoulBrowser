package androidx.mediarouter.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class RegisteredMediaRouteProviderWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1408a;
    public final Callback b;
    public final PackageManager d;
    public boolean f;
    public boolean g;
    public final ArrayList e = new ArrayList();
    public final BroadcastReceiver h = new BroadcastReceiver() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            RegisteredMediaRouteProviderWatcher.this.a();
        }
    };
    public final Runnable i = new Runnable() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.2
        @Override // java.lang.Runnable
        public final void run() {
            RegisteredMediaRouteProviderWatcher.this.a();
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public final Handler f1409c = new Handler();

    /* loaded from: classes.dex */
    public interface Callback {
    }

    public RegisteredMediaRouteProviderWatcher(Context context, Callback callback) {
        this.f1408a = context;
        this.b = callback;
        this.d = context.getPackageManager();
    }

    public final void a() {
        Callback callback;
        ArrayList arrayList;
        int i;
        if (this.g) {
            ArrayList arrayList2 = new ArrayList();
            int i2 = Build.VERSION.SDK_INT;
            Context context = this.f1408a;
            PackageManager packageManager = this.d;
            if (i2 >= 30) {
                Intent intent = new Intent("android.media.MediaRoute2ProviderService");
                ArrayList arrayList3 = new ArrayList();
                Iterator<ResolveInfo> it = packageManager.queryIntentServices(intent, 0).iterator();
                while (it.hasNext()) {
                    ServiceInfo serviceInfo = it.next().serviceInfo;
                    if (!this.f || TextUtils.equals(context.getPackageName(), serviceInfo.packageName)) {
                        arrayList3.add(serviceInfo);
                    }
                }
                arrayList2 = arrayList3;
            }
            Iterator<ResolveInfo> it2 = packageManager.queryIntentServices(new Intent("android.media.MediaRouteProviderService"), 0).iterator();
            int i3 = 0;
            while (true) {
                boolean hasNext = it2.hasNext();
                callback = this.b;
                arrayList = this.e;
                if (!hasNext) {
                    break;
                }
                ServiceInfo serviceInfo2 = it2.next().serviceInfo;
                if (serviceInfo2 != null) {
                    if (MediaRouter.n() && !arrayList2.isEmpty()) {
                        int size = arrayList2.size();
                        int i4 = 0;
                        while (i4 < size) {
                            Object obj = arrayList2.get(i4);
                            i4++;
                            ServiceInfo serviceInfo3 = (ServiceInfo) obj;
                            if (!serviceInfo2.packageName.equals(serviceInfo3.packageName) || !serviceInfo2.name.equals(serviceInfo3.name)) {
                            }
                        }
                    }
                    String str = serviceInfo2.packageName;
                    String str2 = serviceInfo2.name;
                    int size2 = arrayList.size();
                    int i5 = 0;
                    while (true) {
                        if (i5 < size2) {
                            ComponentName componentName = ((RegisteredMediaRouteProvider) arrayList.get(i5)).m;
                            if (componentName.getPackageName().equals(str) && componentName.getClassName().equals(str2)) {
                                break;
                            } else {
                                i5++;
                            }
                        } else {
                            i5 = -1;
                            break;
                        }
                    }
                    if (i5 < 0) {
                        RegisteredMediaRouteProvider registeredMediaRouteProvider = new RegisteredMediaRouteProvider(context, new ComponentName(serviceInfo2.packageName, serviceInfo2.name));
                        registeredMediaRouteProvider.t = new e(this, registeredMediaRouteProvider);
                        if (!registeredMediaRouteProvider.p) {
                            registeredMediaRouteProvider.p = true;
                            registeredMediaRouteProvider.l();
                        }
                        i = i3 + 1;
                        arrayList.add(i3, registeredMediaRouteProvider);
                        ((GlobalMediaRouter) callback).a(registeredMediaRouteProvider, false);
                    } else if (i5 >= i3) {
                        RegisteredMediaRouteProvider registeredMediaRouteProvider2 = (RegisteredMediaRouteProvider) arrayList.get(i5);
                        if (!registeredMediaRouteProvider2.p) {
                            registeredMediaRouteProvider2.p = true;
                            registeredMediaRouteProvider2.l();
                        }
                        if (registeredMediaRouteProvider2.r == null && registeredMediaRouteProvider2.p && (registeredMediaRouteProvider2.i != null || !registeredMediaRouteProvider2.o.isEmpty())) {
                            registeredMediaRouteProvider2.k();
                            registeredMediaRouteProvider2.h();
                        }
                        i = i3 + 1;
                        Collections.swap(arrayList, i5, i3);
                    }
                    i3 = i;
                }
            }
            if (i3 < arrayList.size()) {
                for (int size3 = arrayList.size() - 1; size3 >= i3; size3--) {
                    RegisteredMediaRouteProvider registeredMediaRouteProvider3 = (RegisteredMediaRouteProvider) arrayList.get(size3);
                    ((GlobalMediaRouter) callback).k(registeredMediaRouteProvider3);
                    arrayList.remove(registeredMediaRouteProvider3);
                    registeredMediaRouteProvider3.t = null;
                    if (registeredMediaRouteProvider3.p) {
                        registeredMediaRouteProvider3.p = false;
                        registeredMediaRouteProvider3.l();
                    }
                }
            }
        }
    }
}
