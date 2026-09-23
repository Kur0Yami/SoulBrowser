package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzfij {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.ads.internal.client.zzm f7388a;
    public com.google.android.gms.ads.internal.client.zzr b;

    /* renamed from: c, reason: collision with root package name */
    public String f7389c;
    public com.google.android.gms.ads.internal.client.zzga d;
    public boolean e;
    public ArrayList f;
    public ArrayList g;
    public zzbjn h;
    public com.google.android.gms.ads.internal.client.zzx i;
    public AdManagerAdViewOptions j;
    public PublisherAdViewOptions k;
    public com.google.android.gms.ads.internal.client.zzco l;
    public int m = 1;
    public zzbpy n;
    public final zzfhx o;
    public boolean p;
    public boolean q;
    public zzeqp r;
    public boolean s;
    public Bundle t;
    public final AtomicLong u;
    public boolean v;
    public com.google.android.gms.ads.internal.client.zzcs w;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzfhx, java.lang.Object] */
    public zzfij() {
        ?? obj = new Object();
        obj.f7376a = 2;
        this.o = obj;
        this.p = false;
        this.q = false;
        this.s = false;
        this.u = new AtomicLong();
        this.v = false;
    }

    public final zzfik a() {
        Preconditions.checkNotNull(this.f7389c, "ad unit must not be null");
        Preconditions.checkNotNull(this.b, "ad size must not be null");
        Preconditions.checkNotNull(this.f7388a, "ad request must not be null");
        return new zzfik(this);
    }
}
