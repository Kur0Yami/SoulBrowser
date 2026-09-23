package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class zzaom {

    /* renamed from: a, reason: collision with root package name */
    public final zzaga f4280a;
    public final SparseArray b = new SparseArray();

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f4281c = new SparseArray();
    public int d;
    public long e;
    public long f;
    public boolean g;
    public long h;
    public long i;
    public boolean j;
    public boolean k;

    public zzaom(zzaga zzagaVar) {
        this.f4280a = zzagaVar;
        new zzgn(new byte[Uuid.SIZE_BITS], 0, 0);
        this.g = false;
    }
}
