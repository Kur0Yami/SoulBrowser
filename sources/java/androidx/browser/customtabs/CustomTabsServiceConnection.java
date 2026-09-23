package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsService;

/* loaded from: classes.dex */
public abstract class CustomTabsServiceConnection implements ServiceConnection {

    /* renamed from: c, reason: collision with root package name */
    public Context f424c;

    /* renamed from: androidx.browser.customtabs.CustomTabsServiceConnection$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends CustomTabsClient {
    }

    public abstract void a(CustomTabsClient customTabsClient);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f424c != null) {
            a(new CustomTabsClient(ICustomTabsService.Stub.asInterface(iBinder), componentName));
            return;
        }
        throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
    }
}
