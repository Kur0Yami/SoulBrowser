package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzgdx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7861a;
    public final zzgec b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f7862c;
    public final String d;
    public final zzavs e;
    public final zzgev f;
    public final zzgnc g;

    public zzgdx(zzgyw zzgywVar, zzgec zzgecVar, zzgev zzgevVar, zzgba zzgbaVar, String str, zzavs zzavsVar, zzijs zzijsVar, zzijs zzijsVar2, zzijs zzijsVar3, zzgnc zzgncVar) {
        this.f7861a = zzgywVar;
        this.b = zzgecVar;
        this.d = str;
        this.f = zzgevVar;
        this.e = zzavsVar;
        this.g = zzgncVar;
        int ordinal = zzgbaVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    this.f7862c = zzijsVar3.zzb();
                    return;
                }
                throw new IllegalStateException();
            }
            this.f7862c = zzijsVar2.zzb();
            return;
        }
        this.f7862c = zzijsVar.zzb();
    }

    public final ListenableFuture a() {
        if (!this.b.b()) {
            return zzgym.a(Integer.toString(7));
        }
        boolean zzb = this.f.zzb();
        zzgyw zzgywVar = this.f7861a;
        if (!zzb) {
            return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgdw
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzgdx zzgdxVar = zzgdx.this;
                    String str = zzgdxVar.d;
                    zzgec zzgecVar = zzgdxVar.b;
                    zzgecVar.getClass();
                    zzavs F0 = zzawp.F0();
                    F0.p(16384);
                    return Base64.encodeToString(zzgecVar.c(str, true, ((zzawp) F0.m()).h()), 11);
                }
            }, zzgywVar);
        }
        Set set = this.f7862c;
        ArrayList arrayList = new ArrayList(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(zzgywVar.v0((zzgfy) it.next()));
        }
        return new zzgyl(zzgtd.v(arrayList), false).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzgdu
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                final zzgdx zzgdxVar = zzgdx.this;
                Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzgdv
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzgdx zzgdxVar2 = zzgdx.this;
                        zzawp zzawpVar = (zzawp) zzgdxVar2.e.m();
                        String str = zzgdxVar2.d;
                        zzgec zzgecVar = zzgdxVar2.b;
                        try {
                            return Base64.encodeToString(((zzaxg) zzgecVar.e(str, zzawpVar.h()).m()).h(), 11);
                        } catch (IllegalArgumentException unused) {
                            zzgecVar.getClass();
                            zzavs F0 = zzawp.F0();
                            F0.p(ConstantsKt.DEFAULT_BLOCK_SIZE);
                            return Base64.encodeToString(zzgecVar.c(str, true, ((zzawp) F0.m()).h()), 11);
                        }
                    }
                };
                zzgna a2 = zzgdxVar.g.a(101);
                try {
                    a2.a();
                    Object call = callable.call();
                    a2.c();
                    return (String) call;
                } finally {
                }
            }
        }, zzgyb.f8301c);
    }
}
