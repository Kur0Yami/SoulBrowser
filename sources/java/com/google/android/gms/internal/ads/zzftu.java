package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;

/* loaded from: classes.dex */
public final class zzftu extends zzftq {
    @Override // com.google.android.gms.internal.ads.zzftr
    /* renamed from: a */
    public final void onPostExecute(String str) {
        b(str);
        super.onPostExecute(str);
    }

    public final void b(String str) {
        zzfsf zzfsfVar = zzfsf.f7617c;
        if (zzfsfVar != null) {
            for (zzfrl zzfrlVar : DesugarCollections.unmodifiableCollection(zzfsfVar.f7618a)) {
                if (this.f7650c.contains(zzfrlVar.g)) {
                    zzfsv zzfsvVar = zzfrlVar.d;
                    if (this.e >= zzfsvVar.f7635c && zzfsvVar.d != 3) {
                        zzfsvVar.d = 3;
                        zzfsm.f7625a.a(zzfsvVar.c(), "setNativeViewHierarchy", str, zzfsvVar.f7634a);
                    }
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.d.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzftr, android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        b(str);
        super.onPostExecute(str);
    }
}
