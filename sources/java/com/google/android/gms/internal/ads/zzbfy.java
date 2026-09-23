package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfy extends zzbgb {
    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object a(Bundle bundle) {
        String str = this.b;
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(str))) {
            return Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(str)));
        }
        return (Long) e();
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void b(SharedPreferences.Editor editor, Object obj) {
        editor.putLong(this.b, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object c(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(this.b, ((Long) e()).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object d(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(this.b, ((Long) e()).longValue()));
    }
}
