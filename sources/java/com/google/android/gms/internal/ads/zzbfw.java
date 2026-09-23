package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbfw extends zzbgb {
    public zzbfw(int i, String str, Boolean bool, Boolean bool2) {
        super(i, str, bool, bool2);
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object a(Bundle bundle) {
        String str = this.b;
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(str))) {
            return Boolean.valueOf(bundle.getBoolean("com.google.android.gms.ads.flag.".concat(str)));
        }
        return (Boolean) e();
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void b(SharedPreferences.Editor editor, Object obj) {
        editor.putBoolean(this.b, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object c(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(this.b, ((Boolean) e()).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object d(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(this.b, ((Boolean) e()).booleanValue()));
    }
}
