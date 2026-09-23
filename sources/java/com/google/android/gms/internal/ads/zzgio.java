package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgio implements zzgid {

    /* renamed from: a, reason: collision with root package name */
    public final zzfvy f7994a;
    public final zzgjw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgls f7995c;
    public final zzgnc d;
    public final ExecutorService e;
    public final AtomicReference f = new AtomicReference("2.815976881.-1");

    public zzgio(zzfvy zzfvyVar, zzgjw zzgjwVar, zzgls zzglsVar, zzgnc zzgncVar, ExecutorService executorService) {
        this.f7994a = zzfvyVar;
        this.b = zzgjwVar;
        this.f7995c = zzglsVar;
        this.d = zzgncVar;
        this.e = executorService;
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final ListenableFuture a(final Context context, final View view, final Activity activity) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgik
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgio zzgioVar = zzgio.this;
                zzgnc zzgncVar = zzgioVar.d;
                zzfui b = zzgioVar.f7994a.b();
                if (b == null) {
                    zzgncVar.b(15004);
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                String b2 = ((zzfvn) b).b(context, view, activity);
                if (b2 != null) {
                    return b2;
                }
                zzgncVar.b(15007);
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }, this.e);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final ListenableFuture b(final Context context) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgij
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgio zzgioVar = zzgio.this;
                zzgnc zzgncVar = zzgioVar.d;
                zzfui b = zzgioVar.f7994a.b();
                if (b == null) {
                    zzgncVar.b(15004);
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                String a2 = ((zzfvn) b).a(context);
                if (a2 != null) {
                    return a2;
                }
                zzgncVar.b(15006);
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }, this.e);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final void c(InputEvent inputEvent) {
        zzfui b = this.f7994a.b();
        zzgnc zzgncVar = this.d;
        if (b == null) {
            zzgncVar.b(15004);
            return;
        }
        if (!(inputEvent instanceof MotionEvent)) {
            return;
        }
        try {
            ((zzfvn) b).d((MotionEvent) inputEvent);
        } catch (zzfvx e) {
            zzgncVar.d(15005, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final ListenableFuture d(final Context context, final String str, final View view) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgil
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgio zzgioVar = zzgio.this;
                zzgnc zzgncVar = zzgioVar.d;
                zzfui b = zzgioVar.f7994a.b();
                if (b == null) {
                    zzgncVar.b(15004);
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                String c2 = ((zzfvn) b).c(context, str, view, null);
                if (c2 != null) {
                    return c2;
                }
                zzgncVar.b(15008);
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }, this.e);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final String zza() {
        return (String) this.f.get();
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final zzgye zzb() {
        zzgye r = zzgye.r(this.b.zzb());
        zzgin zzginVar = zzgin.f7993a;
        zzgyb zzgybVar = zzgyb.f8301c;
        return (zzgye) zzgym.i((zzgye) zzgym.i((zzgye) zzgym.h((zzgye) zzgym.i((zzgye) zzgym.e(r, Throwable.class, zzginVar, zzgybVar), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgif
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                zzgcs zzgcsVar = (zzgcs) obj;
                zzgio zzgioVar = zzgio.this;
                if (zzgioVar.f7995c.a(zzgcsVar) && zzgcsVar != null) {
                    return new Boolean(true);
                }
                zzgioVar.d.b(15003);
                throw new zzgie(1);
            }
        }, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzgig
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgio.this.b.zze();
            }
        }, zzgybVar), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgih
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final Object apply(Object obj) {
                final zzfvo zzfvoVar = (zzfvo) obj;
                if (zzfvoVar != null) {
                    File file = zzfvoVar.b;
                    if (Build.VERSION.SDK_INT >= 34) {
                        file.setReadOnly();
                    }
                    final zzgio zzgioVar = zzgio.this;
                    zzgioVar.d.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgim
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzgio zzgioVar2 = zzgio.this;
                            zzfvy zzfvyVar = zzgioVar2.f7994a;
                            zzfvo zzfvoVar2 = zzfvoVar;
                            if (zzfvyVar.a(zzfvoVar2)) {
                                zzgioVar2.f.set("2.815976881.".concat(String.valueOf(zzfvoVar2.f7686a.D())));
                                return;
                            }
                            throw new zzgie(2);
                        }
                    }, 15002);
                    return new Boolean(true);
                }
                throw new zzgie(3);
            }
        }, zzgybVar), zzgii.f7986a, zzgybVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final int zzg() {
        return 3;
    }
}
