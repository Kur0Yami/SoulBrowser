package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzag {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f3994a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgtd f3995c;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public zzag(Uri uri, List list, zzgtd zzgtdVar) {
        this.f3994a = uri;
        ArrayList arrayList = zzas.f4380a;
        this.b = list;
        this.f3995c = zzgtdVar;
        zzgvs zzgvsVar = zzgtd.f;
        ?? zzgsxVar = new zzgsx(4);
        if (zzgtdVar.size() <= 0) {
            zzgsxVar.f();
        } else {
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzag)) {
            return false;
        }
        zzag zzagVar = (zzag) obj;
        if (this.f3994a.equals(zzagVar.f3994a) && this.b.equals(zzagVar.b) && this.f3995c.equals(zzagVar.f3995c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) ((((this.f3995c.hashCode() + ((this.b.hashCode() + (this.f3994a.hashCode() * 923521)) * 961)) * 31) * 31) - Long.MAX_VALUE);
    }
}
