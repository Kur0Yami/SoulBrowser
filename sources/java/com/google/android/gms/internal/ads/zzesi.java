package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.core.graphics.Insets;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzesi implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzeul f6883a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6884c;
    public final zzcda d;

    public zzesi(zzeul zzeulVar, zzfik zzfikVar, Context context, zzcda zzcdaVar) {
        this.f6883a = zzeulVar;
        this.b = zzfikVar;
        this.f6884c = context;
        this.d = zzcdaVar;
    }

    public static final int b(float f, int i) {
        if (f == 0.0f) {
            return 0;
        }
        return (int) Math.ceil(i / f);
    }

    public static final Insets c(Insets insets, float f) {
        if (f == 0.0f) {
            return Insets.e;
        }
        return Insets.b((int) Math.ceil(insets.f681a / f), (int) Math.ceil(insets.b / f), (int) Math.ceil(insets.f682c / f), (int) Math.ceil(insets.d / f));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v2 com.google.android.gms.internal.ads.zzesj, still in use, count: 4, list:
          (r3v2 com.google.android.gms.internal.ads.zzesj) from 0x0310: MOVE (r21v0 com.google.android.gms.internal.ads.zzesj) = (r3v2 com.google.android.gms.internal.ads.zzesj) (LINE:785)
          (r3v2 com.google.android.gms.internal.ads.zzesj) from 0x01aa: MOVE (r21v3 com.google.android.gms.internal.ads.zzesj) = (r3v2 com.google.android.gms.internal.ads.zzesj) (LINE:427)
          (r3v2 com.google.android.gms.internal.ads.zzesj) from 0x01d1: MOVE (r21v5 com.google.android.gms.internal.ads.zzesj) = (r3v2 com.google.android.gms.internal.ads.zzesj) (LINE:466)
          (r3v2 com.google.android.gms.internal.ads.zzesj) from 0x0181: MOVE (r21v7 com.google.android.gms.internal.ads.zzesj) = (r3v2 com.google.android.gms.internal.ads.zzesj) (LINE:386)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:56)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:447)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final com.google.android.gms.internal.ads.zzesj a() {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzesi.a():com.google.android.gms.internal.ads.zzesj");
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.i(this.f6883a.zza(), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzesh
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                return zzesi.this.a();
            }
        }, zzcdo.g);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 7;
    }
}
