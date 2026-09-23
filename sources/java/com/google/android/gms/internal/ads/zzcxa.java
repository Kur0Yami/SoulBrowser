package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzbfp;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class zzcxa implements zzdby, com.google.android.gms.ads.internal.client.zza, zzddq, zzdbe, zzdak, zzdgb {

    /* renamed from: c, reason: collision with root package name */
    public final Clock f5555c;
    public final zzccu f;

    public zzcxa(Clock clock, zzccu zzccuVar) {
        this.f5555c = clock;
        this.f = zzccuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void B(zzbfp.zzb zzbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void K(zzbfp.zzb zzbVar) {
        zzccu zzccuVar = this.f;
        synchronized (zzccuVar.d) {
            zzccuVar.b.f();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
        Clock clock = this.f5555c;
        zzccu zzccuVar = this.f;
        long elapsedRealtime = clock.elapsedRealtime();
        synchronized (zzccuVar.d) {
            try {
                zzccuVar.k = elapsedRealtime;
                if (elapsedRealtime != -1) {
                    zzccuVar.b.a(zzccuVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void Z(zzbfp.zzb zzbVar) {
        zzccu zzccuVar = this.f;
        synchronized (zzccuVar.d) {
            zzccuVar.b.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        zzccu zzccuVar = this.f;
        synchronized (zzccuVar.d) {
            try {
                if (zzccuVar.k != -1 && zzccuVar.g == -1) {
                    zzccuVar.g = zzccuVar.f5043a.elapsedRealtime();
                    zzccuVar.b.a(zzccuVar);
                }
                zzccuVar.b.d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
        zzccu zzccuVar = this.f;
        synchronized (zzccuVar.d) {
            try {
                if (zzccuVar.k != -1) {
                    LinkedList linkedList = zzccuVar.f5044c;
                    if (!linkedList.isEmpty()) {
                        zzcct zzcctVar = (zzcct) linkedList.getLast();
                        if (zzcctVar.b == -1) {
                            zzcctVar.b = zzcctVar.f5042c.f5043a.elapsedRealtime();
                            zzccuVar.b.a(zzccuVar);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzccu zzccuVar = this.f;
        synchronized (zzccuVar.d) {
            try {
                if (zzccuVar.k != -1) {
                    zzcct zzcctVar = new zzcct(zzccuVar);
                    zzcctVar.f5041a = zzcctVar.f5042c.f5043a.elapsedRealtime();
                    zzccuVar.f5044c.add(zzcctVar);
                    zzccuVar.i++;
                    zzcdf zzcdfVar = zzccuVar.b;
                    zzcdfVar.c();
                    zzcdfVar.a(zzccuVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void q(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        zzccu zzccuVar = this.f;
        synchronized (zzccuVar.d) {
            try {
                if (zzccuVar.k != -1) {
                    zzccuVar.h = zzccuVar.f5043a.elapsedRealtime();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(zzbzj zzbzjVar, String str, String str2) {
    }
}
