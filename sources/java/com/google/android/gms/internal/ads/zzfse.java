package com.google.android.gms.internal.ads;

import android.view.View;
import j$.util.DesugarCollections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzfse extends zzfsh {
    public static final zzfse h = new Object();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfsh
    public final boolean a() {
        Iterator it = DesugarCollections.unmodifiableCollection(zzfsf.f7617c.b).iterator();
        while (it.hasNext()) {
            View view = (View) ((zzfrl) it.next()).f7598c.get();
            if (view != null && view.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final void b(boolean z) {
        String str;
        Iterator it = DesugarCollections.unmodifiableCollection(zzfsf.f7617c.f7618a).iterator();
        while (it.hasNext()) {
            zzfsv zzfsvVar = ((zzfrl) it.next()).d;
            if (zzfsvVar.b.get() != 0) {
                if (true != z) {
                    str = "backgrounded";
                } else {
                    str = "foregrounded";
                }
                zzfsm.f7625a.a(zzfsvVar.c(), "setState", str, zzfsvVar.f7634a);
            }
        }
    }
}
