package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzbhj extends CustomTabsServiceConnection {
    public final AtomicBoolean f = new AtomicBoolean(false);
    public Context g;
    public zzdxe h;
    public CustomTabsSession i;
    public CustomTabsClient j;

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void a(CustomTabsClient customTabsClient) {
        this.j = customTabsClient;
        try {
            customTabsClient.f409a.warmup(0L);
        } catch (RemoteException unused) {
        }
        this.i = customTabsClient.c(new zzbhg(this));
    }

    public final CustomTabsSession b() {
        if (this.i == null) {
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbhi
                @Override // java.lang.Runnable
                public final void run() {
                    String b;
                    zzbhj zzbhjVar = zzbhj.this;
                    Context context = zzbhjVar.g;
                    if (zzbhjVar.j == null && context != null && (b = CustomTabsClient.b(context)) != null && !b.equals(context.getPackageName())) {
                        CustomTabsClient.a(context, b, zzbhjVar);
                    }
                }
            });
        }
        return this.i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.j = null;
        this.i = null;
    }
}
