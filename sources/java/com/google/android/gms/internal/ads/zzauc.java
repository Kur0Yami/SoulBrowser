package com.google.android.gms.internal.ads;

import java.util.function.Supplier;

/* loaded from: classes.dex */
public final /* synthetic */ class zzauc implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4418c;
    public static final /* synthetic */ zzauc g = new zzauc(1);
    public static final /* synthetic */ zzauc f = new zzauc(0);

    public /* synthetic */ zzauc(int i) {
        this.f4418c = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f4418c != 0) {
            return zzaus.a(null);
        }
        return new Exception();
    }
}
