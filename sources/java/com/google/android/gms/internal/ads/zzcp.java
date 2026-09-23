package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public abstract class zzcp implements zzco {
    public zzcl b;

    /* renamed from: c, reason: collision with root package name */
    public zzcl f5352c;
    public zzcl d;
    public zzcl e;
    public ByteBuffer f;
    public ByteBuffer g;
    public boolean h;

    public zzcp() {
        ByteBuffer byteBuffer = zzco.f5330a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        zzcl zzclVar = zzcl.e;
        this.d = zzclVar;
        this.e = zzclVar;
        this.b = zzclVar;
        this.f5352c = zzclVar;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public long a(long j) {
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final zzcl c(zzcl zzclVar) {
        this.d = zzclVar;
        this.e = e(zzclVar);
        if (zzc()) {
            return this.e;
        }
        return zzcl.e;
    }

    public final ByteBuffer d(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    public zzcl e(zzcl zzclVar) {
        throw null;
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public boolean zzc() {
        if (this.e != zzcl.e) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zze() {
        this.h = true;
        f();
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public ByteBuffer zzf() {
        ByteBuffer byteBuffer = this.g;
        this.g = zzco.f5330a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public boolean zzg() {
        return this.h && this.g == zzco.f5330a;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzi() {
        this.g = zzco.f5330a;
        this.h = false;
        this.b = this.d;
        this.f5352c = this.e;
        g();
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzj() {
        ByteBuffer byteBuffer = zzco.f5330a;
        this.g = byteBuffer;
        this.h = false;
        this.f = byteBuffer;
        zzcl zzclVar = zzcl.e;
        this.d = zzclVar;
        this.e = zzclVar;
        this.b = zzclVar;
        this.f5352c = zzclVar;
        h();
    }
}
