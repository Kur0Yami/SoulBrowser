package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import java.util.concurrent.CopyOnWriteArraySet;

@RestrictTo
/* loaded from: classes.dex */
public final class zzaci implements zzbt {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3898a;
    public final zzbs b;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f3899c;
    public final boolean d;
    public final zzadl e;
    public final zzdn f;
    public final CopyOnWriteArraySet g;
    public final long h;
    public final zzacn i;
    public zzff j = new zzff();
    public zzdx k;
    public Pair l;
    public int m;
    public int n;
    public long o;
    public int p;

    public zzaci(zzaca zzacaVar) {
        long j;
        this.f3898a = zzacaVar.f3889a;
        zzbs zzbsVar = zzacaVar.f3890c;
        zzbsVar.getClass();
        this.b = zzbsVar;
        this.f3899c = new SparseArray();
        zzgvs zzgvsVar = zzgtd.f;
        zzgtd zzgtdVar = zzguy.i;
        this.d = zzacaVar.d;
        zzdn zzdnVar = zzacaVar.e;
        this.f = zzdnVar;
        long j2 = zzacaVar.g;
        if (j2 != -9223372036854775807L) {
            j = -j2;
        } else {
            j = -9223372036854775807L;
        }
        this.h = j;
        zzacn zzacnVar = zzacaVar.h;
        this.i = zzacnVar;
        this.e = new zzabn(zzacaVar.b, zzacnVar, zzdnVar);
        this.g = new CopyOnWriteArraySet();
        new zzv(new zzt());
        this.o = -9223372036854775807L;
        this.p = -1;
        this.n = 0;
    }
}
