package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeyr implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7095a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfik f7096c;
    public final VersionInfoParcel d;

    public zzeyr(Context context, zzgyw zzgywVar, zzfik zzfikVar, VersionInfoParcel versionInfoParcel) {
        this.f7095a = context;
        this.b = zzgywVar;
        this.f7096c = zzfikVar;
        this.d = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.b.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyq
            /* JADX WARN: Code restructure failed: missing block: B:12:0x0052, code lost:
            
                if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.P3)).booleanValue() == false) goto L14;
             */
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0068, code lost:
            
                r2 = com.google.android.gms.internal.ads.zzfzj.f(r0).g(((java.lang.Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.a4)).longValue(), com.google.android.gms.ads.internal.zzt.zzh().i().zzx());
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x00ce, code lost:
            
                if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.Q3)).booleanValue() == false) goto L26;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x00e4, code lost:
            
                r2 = com.google.android.gms.internal.ads.zzfzk.f(r0);
                r0 = com.google.android.gms.internal.ads.zzfzg.a(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0100, code lost:
            
                if (r1.d.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.W3)).intValue()) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0102, code lost:
            
                r3 = r2.g(((java.lang.Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.b4)).longValue(), com.google.android.gms.ads.internal.zzt.zzh().i().zzx());
                r2 = r0.c();
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x0128, code lost:
            
                r0.getClass();
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x012d, code lost:
            
                monitor-enter(com.google.android.gms.internal.ads.zzfzg.class);
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x012e, code lost:
            
                r4 = r0.f7744a.b.getBoolean("paidv2_user_option", true);
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x0138, code lost:
            
                monitor-exit(com.google.android.gms.internal.ads.zzfzg.class);
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x0139, code lost:
            
                r7 = r2;
                r6 = r3;
                r8 = r4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x0127, code lost:
            
                r2 = true;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00e2, code lost:
            
                if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.S3)).booleanValue() != false) goto L29;
             */
            /* JADX WARN: Code restructure failed: missing block: B:44:0x0066, code lost:
            
                if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.R3)).booleanValue() != false) goto L17;
             */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    Method dump skipped, instructions count: 364
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeyq.call():java.lang.Object");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 53;
    }
}
