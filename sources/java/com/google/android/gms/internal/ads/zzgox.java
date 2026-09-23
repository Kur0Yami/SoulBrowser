package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgox implements ServiceConnection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgpd f8187c;

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        Object[] objArr = {componentName};
        zzgpd zzgpdVar = this.f8187c;
        zzgpdVar.f8193c.a("LmdServiceConnectionManager.onServiceConnected(%s)", objArr);
        zzgpdVar.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgow
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v10 */
            /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzgnh] */
            /* JADX WARN: Type inference failed for: r3v8 */
            /* JADX WARN: Type inference failed for: r3v9 */
            @Override // java.lang.Runnable
            public final void run() {
                ?? r3;
                zzgnh zzgnhVar;
                IBinder iBinder2 = iBinder;
                int i = zzgng.f8155c;
                if (iBinder2 == null) {
                    r3 = 0;
                } else {
                    IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.play.core.lmd.protocol.ILmdOverlayService");
                    if (queryLocalInterface instanceof zzgnh) {
                        r3 = (zzgnh) queryLocalInterface;
                    } else {
                        r3 = new zzbcb(iBinder2, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
                    }
                }
                zzgox zzgoxVar = zzgox.this;
                zzgpd zzgpdVar2 = zzgoxVar.f8187c;
                zzgpdVar2.j = r3;
                int i2 = 0;
                zzgpdVar2.f8193c.a("linkToDeath", new Object[0]);
                try {
                    zzgnhVar = zzgpdVar2.j;
                } catch (RemoteException e) {
                    zzgoxVar.f8187c.f8193c.d(e, "linkToDeath failed", new Object[0]);
                }
                if (zzgnhVar != null) {
                    zzgnhVar.asBinder().linkToDeath(zzgpdVar2.h, 0);
                    zzgpd zzgpdVar3 = zzgoxVar.f8187c;
                    zzgpdVar3.f = false;
                    synchronized (zzgpdVar3.e) {
                        try {
                            ArrayList arrayList = zzgpdVar3.e;
                            int size = arrayList.size();
                            while (i2 < size) {
                                Object obj = arrayList.get(i2);
                                i2++;
                                ((Runnable) obj).run();
                            }
                            zzgpdVar3.e.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                }
                throw null;
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object[] objArr = {componentName};
        zzgpd zzgpdVar = this.f8187c;
        zzgpdVar.f8193c.a("LmdServiceConnectionManager.onServiceDisconnected(%s)", objArr);
        zzgpdVar.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgov
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgpd zzgpdVar2 = zzgox.this.f8187c;
                zzgpdVar2.f8193c.a("unlinkToDeath", new Object[0]);
                zzgnh zzgnhVar = zzgpdVar2.j;
                zzgnhVar.getClass();
                zzgnhVar.asBinder().unlinkToDeath(zzgpdVar2.h, 0);
                zzgpdVar2.j = null;
                zzgpdVar2.f = false;
            }
        });
    }
}
