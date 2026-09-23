package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes.dex */
public final class zzber {

    /* renamed from: a, reason: collision with root package name */
    public ScheduledFuture f4597a = null;
    public final Runnable b = new zzben(this);

    /* renamed from: c, reason: collision with root package name */
    public final Object f4598c = new Object();
    public zzbeu d;
    public Context e;
    public zzbex f;

    public final void a(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f4598c) {
            try {
                if (this.e != null) {
                    return;
                }
                this.e = context.getApplicationContext();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d5)).booleanValue()) {
                    e();
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c5)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzg().b(new zzbeo(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbes b(zzbev zzbevVar) {
        synchronized (this.f4598c) {
            if (this.f == null) {
                return new zzbes();
            }
            try {
                if (this.d.d()) {
                    zzbex zzbexVar = this.f;
                    Parcel I1 = zzbexVar.I1();
                    zzbcd.c(I1, zzbevVar);
                    Parcel f2 = zzbexVar.f2(2, I1);
                    zzbes zzbesVar = (zzbes) zzbcd.b(f2, zzbes.CREATOR);
                    f2.recycle();
                    return zzbesVar;
                }
                zzbex zzbexVar2 = this.f;
                Parcel I12 = zzbexVar2.I1();
                zzbcd.c(I12, zzbevVar);
                Parcel f22 = zzbexVar2.f2(1, I12);
                zzbes zzbesVar2 = (zzbes) zzbcd.b(f22, zzbes.CREATOR);
                f22.recycle();
                return zzbesVar2;
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to call into cache service.", e);
                return new zzbes();
            }
        }
    }

    public final synchronized zzbeu c(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzbeu(this.e, com.google.android.gms.ads.internal.zzt.zzs().zza(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    public final /* synthetic */ void d() {
        synchronized (this.f4598c) {
            try {
                zzbeu zzbeuVar = this.d;
                if (zzbeuVar == null) {
                    return;
                }
                if (zzbeuVar.isConnected() || this.d.isConnecting()) {
                    this.d.disconnect();
                }
                this.d = null;
                this.f = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        synchronized (this.f4598c) {
            try {
                if (this.e != null && this.d == null) {
                    zzbeu c2 = c(new zzbep(this), new zzbeq(this));
                    this.d = c2;
                    c2.checkAvailabilityAndConnect();
                }
            } finally {
            }
        }
    }
}
