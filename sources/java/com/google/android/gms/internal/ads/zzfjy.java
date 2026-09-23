package com.google.android.gms.internal.ads;

import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfjy {
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7424c;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList f7423a = new LinkedList();
    public final zzfkx d = new zzfkx();

    public zzfjy(int i, int i2) {
        this.b = i;
        this.f7424c = i2;
    }

    public final void a() {
        while (true) {
            LinkedList linkedList = this.f7423a;
            if (!linkedList.isEmpty()) {
                if (com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - ((zzfki) linkedList.getFirst()).d >= this.f7424c) {
                    zzfkx zzfkxVar = this.d;
                    zzfkxVar.f++;
                    zzfkxVar.b.f++;
                    linkedList.remove();
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
