package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.os.RemoteException;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzijx extends CustomTabsServiceConnection {
    public final WeakReference f;

    public zzijx(zzbhl zzbhlVar) {
        this.f = new WeakReference(zzbhlVar);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void a(CustomTabsClient customTabsClient) {
        zzbhl zzbhlVar = (zzbhl) this.f.get();
        if (zzbhlVar != null) {
            zzbhlVar.b = customTabsClient;
            try {
                customTabsClient.f409a.warmup(0L);
            } catch (RemoteException unused) {
            }
            zzbhk zzbhkVar = zzbhlVar.d;
            if (zzbhkVar != null) {
                zzbhkVar.zza();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbhl zzbhlVar = (zzbhl) this.f.get();
        if (zzbhlVar != null) {
            zzbhlVar.b = null;
            zzbhlVar.f4677a = null;
        }
    }
}
