package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbga extends zzbgb {
    public zzbga(String str, String str2, String str3) {
        super(1, str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object a(Bundle bundle) {
        String str = this.b;
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(str))) {
            return bundle.getString("com.google.android.gms.ads.flag.".concat(str));
        }
        return (String) e();
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void b(SharedPreferences.Editor editor, Object obj) {
        editor.putString(this.b, (String) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object c(JSONObject jSONObject) {
        return jSONObject.optString(this.b, (String) e());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object d(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(this.b, (String) e());
    }
}
