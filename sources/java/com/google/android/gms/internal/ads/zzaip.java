package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzaip implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4071a;

    public zzaip(ArrayList arrayList) {
        this.f4071a = arrayList;
        boolean z = false;
        if (!arrayList.isEmpty()) {
            long j = ((zzaio) arrayList.get(0)).b;
            int i = 1;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                if (((zzaio) arrayList.get(i)).f4069a < j) {
                    z = true;
                    break;
                } else {
                    j = ((zzaio) arrayList.get(i)).b;
                    i++;
                }
            }
        }
        zzgqa.a(!z);
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaip.class == obj.getClass()) {
            return this.f4071a.equals(((zzaip) obj).f4071a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4071a.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=".concat(this.f4071a.toString());
    }
}
