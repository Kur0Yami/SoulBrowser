package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class zzs extends LinkedHashMap {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzv f3295c;

    public zzs(zzv zzvVar) {
        this.f3295c = zzvVar;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        zzv zzvVar = this.f3295c;
        synchronized (zzvVar) {
            try {
                boolean z = false;
                if (size() <= zzvVar.f3297a) {
                    return false;
                }
                zzvVar.f.add(new Pair((String) entry.getKey(), ((zzt) entry.getValue()).zzb));
                if (size() > zzvVar.f3297a) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
