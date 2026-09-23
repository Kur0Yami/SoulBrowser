package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class zzaa {
    public static final Logger v = new Logger("SessionFlowSummary", null);
    public static final String w = "22.2.0";
    public static long x = System.currentTimeMillis();
    public final zzj f;
    public final String g;
    public final long i;
    public CastSession j;
    public String k;
    public String l;
    public zzt m;
    public String n;
    public String o;
    public String p;
    public String q;
    public String r;
    public String s;
    public int u;

    /* renamed from: a, reason: collision with root package name */
    public final zzhg f9603a = new zzhi();
    public final List b = DesugarCollections.synchronizedList(new ArrayList());

    /* renamed from: c, reason: collision with root package name */
    public final List f9604c = DesugarCollections.synchronizedList(new ArrayList());
    public final List d = DesugarCollections.synchronizedList(new ArrayList());
    public final Map e = DesugarCollections.synchronizedMap(new HashMap());
    public int t = 0;
    public final long h = DefaultClock.getInstance().currentTimeMillis();

    public zzaa(zzj zzjVar, String str) {
        this.f = zzjVar;
        this.g = str;
        long j = x;
        x = 1 + j;
        this.i = j;
    }

    public final void a(CastSession castSession) {
        if (castSession == null) {
            b(2);
            return;
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastDevice castDevice = castSession.k;
        if (castDevice == null) {
            b(3);
            return;
        }
        String str = castDevice.p;
        this.j = castSession;
        String str2 = this.l;
        if (str2 == null) {
            this.l = str;
            this.n = castDevice.i;
            this.t = castDevice.zzd();
            com.google.android.gms.cast.internal.zzaa G = castDevice.G();
            if (G != null) {
                this.o = G.h;
                this.p = G.i;
                this.q = G.j;
                this.r = G.k;
                this.s = G.l;
            }
            castSession.i();
            return;
        }
        if (!TextUtils.equals(str2, str)) {
            b(5);
        }
    }

    public final void b(int i) {
        Integer valueOf = Integer.valueOf(i - 1);
        Map map = this.e;
        zzae zzaeVar = (zzae) map.get(valueOf);
        if (zzaeVar == null) {
            zzae zzaeVar2 = new zzae(new zzad(i));
            zzaeVar2.f9618c = this.h;
            map.put(valueOf, zzaeVar2);
        } else {
            zzaeVar.d.incrementAndGet();
            zzaeVar.b = DefaultClock.getInstance().currentTimeMillis();
        }
    }
}
