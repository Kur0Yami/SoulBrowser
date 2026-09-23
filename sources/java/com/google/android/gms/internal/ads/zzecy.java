package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzecy implements zzeee {
    public static final Pattern h = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a, reason: collision with root package name */
    public final zzebz f6383a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfik f6384c;
    public final ScheduledExecutorService d;
    public final zzegr e;
    public final zzfno f;
    public final Context g;

    public zzecy(Context context, zzfik zzfikVar, zzebz zzebzVar, zzgyw zzgywVar, ScheduledExecutorService scheduledExecutorService, zzegr zzegrVar, zzfno zzfnoVar) {
        this.g = context;
        this.f6384c = zzfikVar;
        this.f6383a = zzebzVar;
        this.b = zzgywVar;
        this.d = scheduledExecutorService;
        this.e = zzegrVar;
        this.f = zzfnoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeee
    public final ListenableFuture a(final zzbza zzbzaVar) {
        ListenableFuture f;
        final zzebz zzebzVar = this.f6383a;
        zzgyw zzgywVar = zzebzVar.b;
        String str = zzbzaVar.h;
        com.google.android.gms.ads.internal.zzt.zzc();
        if (com.google.android.gms.ads.internal.util.zzs.zzH(str)) {
            f = zzgym.b(new zzebr(1));
        } else {
            f = zzgym.f(zzebzVar.f6354a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeby
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzcdt zzcdtVar;
                    zzebz zzebzVar2 = zzebz.this;
                    zzbza zzbzaVar2 = zzbzaVar;
                    final zzedj zzedjVar = zzebzVar2.f6355c;
                    synchronized (zzedjVar.b) {
                        try {
                            if (zzedjVar.f6404c) {
                                zzcdtVar = zzedjVar.f6403a;
                            } else {
                                zzedjVar.f6404c = true;
                                zzedjVar.e = zzbzaVar2;
                                zzedjVar.f.checkAvailabilityAndConnect();
                                zzcdt zzcdtVar2 = zzedjVar.f6403a;
                                zzcdtVar2.f5072c.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedi
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        zzedj.this.a();
                                    }
                                }, zzcdo.g);
                                zzedq.b(zzedjVar.g, zzcdtVar2, zzedjVar.h);
                                zzcdtVar = zzcdtVar2;
                            }
                        } finally {
                        }
                    }
                    return (zzeeg) zzcdtVar.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x6)).intValue(), TimeUnit.SECONDS);
                }
            }), ExecutionException.class, zzebv.f6349a, zzgywVar);
        }
        final int callingUid = Binder.getCallingUid();
        ListenableFuture f2 = zzgym.f(f, zzeef.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzebw
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                Bundle bundle;
                final zzbza zzbzaVar2 = zzbzaVar;
                if (zzbzaVar2 != null && (bundle = zzbzaVar2.q) != null) {
                    bundle.putBoolean("ls", true);
                }
                zzebz zzebzVar2 = zzebz.this;
                return zzgym.h(((zzefw) zzebzVar2.d.zzb()).c5(zzbzaVar2, callingUid), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzebx
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final /* synthetic */ ListenableFuture zza(Object obj2) {
                        return zzgym.a(new zzeeg((InputStream) obj2, zzbza.this));
                    }
                }, zzebzVar2.b);
            }
        }, zzgywVar);
        zzfne o = a.o(this.g, 11);
        zzfnn.a(f2, o);
        ListenableFuture h2 = zzgym.h(f2, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzecx
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzeeg zzeegVar = (zzeeg) obj;
                return zzgym.a(new zzfic(new zzfhz(zzecy.this.f6384c), zzfib.a(new InputStreamReader(zzeegVar.f6418a), zzeegVar.b.q)));
            }
        }, this.b);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w6)).booleanValue()) {
            h2 = zzgym.f(zzgym.g(h2, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x6)).intValue(), TimeUnit.SECONDS, this.d), TimeoutException.class, zzecw.f6381a, zzcdo.g);
        }
        zzfnn.c(h2, this.f, o, false);
        zzecv zzecvVar = new zzecv(this);
        ((zzgxf) h2).k(new zzgyk(h2, zzecvVar), zzcdo.g);
        return h2;
    }
}
