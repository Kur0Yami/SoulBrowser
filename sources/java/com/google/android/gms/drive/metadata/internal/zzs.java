package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zzs extends com.google.android.gms.drive.metadata.zzb<String> {
    @Override // com.google.android.gms.drive.metadata.zza
    public final void a(Bundle bundle, Object obj) {
        bundle.putStringArrayList(this.f3707a, new ArrayList<>((Collection) obj));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object d(Bundle bundle) {
        return bundle.getStringArrayList(this.f3707a);
    }

    @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
    /* renamed from: g */
    public final Collection f(DataHolder dataHolder, int i, int i2) {
        try {
            String string = dataHolder.getString(this.f3707a, i, i2);
            if (string == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray(string);
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                arrayList.add(jSONArray.getString(i3));
            }
            return DesugarCollections.unmodifiableCollection(arrayList);
        } catch (JSONException e) {
            throw new IllegalStateException("DataHolder supplied invalid JSON", e);
        }
    }
}
