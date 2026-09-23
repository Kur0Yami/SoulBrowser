package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import j$.util.DesugarCollections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzftv extends zzftq {
    @Override // com.google.android.gms.internal.ads.zzftr, android.os.AsyncTask
    /* renamed from: a */
    public final void onPostExecute(String str) {
        zzfsf zzfsfVar;
        if (!TextUtils.isEmpty(str) && (zzfsfVar = zzfsf.f7617c) != null) {
            for (zzfrl zzfrlVar : DesugarCollections.unmodifiableCollection(zzfsfVar.f7618a)) {
                if (this.f7650c.contains(zzfrlVar.g)) {
                    zzfsv zzfsvVar = zzfrlVar.d;
                    if (this.e >= zzfsvVar.f7635c) {
                        zzfsvVar.d = 2;
                        zzfsm.f7625a.a(zzfsvVar.c(), "setNativeViewHierarchy", str, zzfsvVar.f7634a);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        zzftj zzftjVar = this.b;
        JSONObject jSONObject = zzftjVar.f7646a;
        JSONObject jSONObject2 = this.d;
        if (zzftb.e(jSONObject2, jSONObject)) {
            return null;
        }
        zzftjVar.f7646a = jSONObject2;
        return jSONObject2.toString();
    }
}
