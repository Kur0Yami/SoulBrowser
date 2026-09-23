package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgpd {
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgpe f8193c;
    public boolean f;
    public final Intent g;
    public ServiceConnection i;
    public zzgnh j;
    public final ArrayList e = new ArrayList();
    public final String d = "OverlayDisplayService";

    /* renamed from: a, reason: collision with root package name */
    public final zzgqs f8192a = zzgqw.a(new Object());
    public final IBinder.DeathRecipient h = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.zzgoy
        @Override // android.os.IBinder.DeathRecipient
        public final /* synthetic */ void binderDied() {
            zzgpd zzgpdVar = zzgpd.this;
            zzgpdVar.f8193c.a("%s : Binder has died.", zzgpdVar.d);
            ArrayList arrayList = zzgpdVar.e;
            synchronized (arrayList) {
                arrayList.clear();
            }
        }
    };

    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzgqs, java.lang.Object] */
    public zzgpd(Context context, zzgpe zzgpeVar, Intent intent) {
        this.b = context;
        this.f8193c = zzgpeVar;
        this.g = intent;
    }

    public final void a(final Runnable runnable) {
        ((Handler) this.f8192a.zza()).post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgpb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                try {
                    runnable.run();
                } catch (RuntimeException e) {
                    zzgpd.this.f8193c.c("error caused by ", e);
                }
            }
        });
    }
}
