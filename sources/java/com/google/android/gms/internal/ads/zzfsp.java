package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzfsp {
    public static final zzfsp d;

    /* renamed from: a, reason: collision with root package name */
    public WeakReference f7629a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7630c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzfsp, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.b = false;
        obj.f7630c = false;
        d = obj;
    }

    public final void a(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        String str;
        if (z2 || z) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.f7630c || this.b) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z3 != z4) {
            Iterator it = DesugarCollections.unmodifiableCollection(zzfsf.f7617c.f7618a).iterator();
            while (it.hasNext()) {
                zzfsv zzfsvVar = ((zzfrl) it.next()).d;
                if (z2 || z) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (zzfsvVar.b.get() != 0) {
                    if (true != z5) {
                        str = "unlocked";
                    } else {
                        str = "locked";
                    }
                    zzfsm.f7625a.a(zzfsvVar.c(), "setDeviceLockState", str);
                }
            }
        }
    }
}
