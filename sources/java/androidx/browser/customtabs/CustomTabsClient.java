package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.customtabs.IAuthTabCallback;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CustomTabsClient {

    /* renamed from: a, reason: collision with root package name */
    public final ICustomTabsService f409a;
    public final ComponentName b;

    /* renamed from: androidx.browser.customtabs.CustomTabsClient$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends CustomTabsServiceConnection {
        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public final void a(CustomTabsClient customTabsClient) {
            try {
                customTabsClient.f409a.warmup(0L);
            } catch (RemoteException unused) {
            }
            throw null;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: androidx.browser.customtabs.CustomTabsClient$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends IAuthTabCallback.Stub {
        @Override // android.support.customtabs.IAuthTabCallback
        public final void onExtraCallback(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.IAuthTabCallback
        public final Bundle onExtraCallbackWithResult(String str, Bundle bundle) {
            return Bundle.EMPTY;
        }

        @Override // android.support.customtabs.IAuthTabCallback
        public final void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // android.support.customtabs.IAuthTabCallback
        public final void onWarmupCompleted(Bundle bundle) {
        }
    }

    public CustomTabsClient(ICustomTabsService iCustomTabsService, ComponentName componentName) {
        this.f409a = iCustomTabsService;
        this.b = componentName;
    }

    public static void a(Context context, String str, CustomTabsServiceConnection customTabsServiceConnection) {
        customTabsServiceConnection.f424c = context.getApplicationContext();
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!str.isEmpty()) {
            intent.setPackage(str);
            context.bindService(intent, customTabsServiceConnection, 33);
            return;
        }
        throw new IllegalArgumentException("Service Intents must be explicit");
    }

    public static String b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://")), 0);
        if (resolveActivity != null) {
            String str = resolveActivity.activityInfo.packageName;
            ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
            arrayList2.add(str);
            arrayList = arrayList2;
        }
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str2 = (String) obj;
            intent.setPackage(str2);
            if (packageManager.resolveService(intent, 0) != null) {
                return str2;
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            Log.w("CustomTabsClient", "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName.");
            return null;
        }
        return null;
    }

    public final CustomTabsSession c(final CustomTabsCallback customTabsCallback) {
        ICustomTabsService iCustomTabsService = this.f409a;
        ICustomTabsCallback.Stub stub = new ICustomTabsCallback.Stub() { // from class: androidx.browser.customtabs.CustomTabsClient.3

            /* renamed from: c, reason: collision with root package name */
            public final Handler f410c = new Handler(Looper.getMainLooper());

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void extraCallback(final String str, final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.a(str, bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
                CustomTabsCallback customTabsCallback2 = CustomTabsCallback.this;
                if (customTabsCallback2 == null) {
                    return null;
                }
                return customTabsCallback2.b(str, bundle);
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onActivityLayout(final int i, final int i2, final int i3, final int i4, final int i5, final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.c(i, i2, i3, i4, i5, bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onActivityResized(final int i, final int i2, final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.d(i, i2, bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onMessageChannelReady(final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.e(bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onMinimized(final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.f(bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onNavigationEvent(final int i, final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.g(i, bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onPostMessage(final String str, final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.h(str, bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onRelationshipValidationResult(final int i, final Uri uri, final boolean z, final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.i(i, uri, z, bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onUnminimized(final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.j(bundle);
                    }
                });
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public final void onWarmupCompleted(final Bundle bundle) {
                if (CustomTabsCallback.this == null) {
                    return;
                }
                this.f410c.post(new Runnable() { // from class: androidx.browser.customtabs.CustomTabsClient.3.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomTabsCallback.this.k(bundle);
                    }
                });
            }
        };
        try {
            if (!iCustomTabsService.newSession(stub)) {
                return null;
            }
            return new CustomTabsSession(iCustomTabsService, stub, this.b);
        } catch (RemoteException unused) {
            return null;
        }
    }
}
