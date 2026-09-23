package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzgqp {

    /* renamed from: a, reason: collision with root package name */
    public final zzgqo f8212a;

    public zzgqp(zzgqo zzgqoVar) {
        this.f8212a = zzgqoVar;
    }

    public static zzgqp a(final zzgpo zzgpoVar) {
        return new zzgqp(new zzgqo() { // from class: com.google.android.gms.internal.ads.zzgqm
            @Override // com.google.android.gms.internal.ads.zzgqo
            public final /* synthetic */ Iterator a(zzgqp zzgqpVar, CharSequence charSequence) {
                return new zzgqg(charSequence, zzgpo.this);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzgqo, java.lang.Object] */
    public static zzgqp b() {
        return new zzgqp(new Object());
    }

    public final Iterable c(String str) {
        str.getClass();
        return new zzgqj(this, str);
    }

    public final List d(CharSequence charSequence) {
        charSequence.getClass();
        Iterator a2 = this.f8212a.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (a2.hasNext()) {
            arrayList.add((String) a2.next());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
