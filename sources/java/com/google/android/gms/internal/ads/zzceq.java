package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;

/* loaded from: classes.dex */
public abstract class zzceq extends TextureView implements zzcfn {

    /* renamed from: c, reason: collision with root package name */
    public final zzcfe f5087c;
    public final zzcfo f;

    public zzceq(Context context) {
        super(context);
        this.f5087c = new zzcfe();
        this.f = new zzcfo(context, this);
    }

    public void A(int i) {
    }

    public void d(int i) {
    }

    public void f(int i) {
    }

    public void g(int i) {
    }

    public abstract String h();

    public abstract void i(zzcey zzceyVar);

    public abstract void j(String str);

    public abstract void k();

    public abstract void l();

    public abstract void m();

    public abstract int n();

    public abstract int o();

    public abstract void p(int i);

    public abstract void q(float f, float f2);

    public abstract int r();

    public abstract int s();

    public abstract long t();

    public abstract long u();

    public abstract long v();

    public abstract int w();

    public Integer x() {
        return null;
    }

    public void y(String str, String[] strArr, Integer num) {
        j(str);
    }

    public void z(int i) {
    }
}
