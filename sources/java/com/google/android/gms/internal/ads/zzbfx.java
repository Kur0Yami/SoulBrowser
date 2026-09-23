package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfx extends zzbgb {
    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object a(Bundle bundle) {
        String str = this.b;
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(str))) {
            return Integer.valueOf(bundle.getInt("com.google.android.gms.ads.flag.".concat(str)));
        }
        return (Integer) e();
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void b(SharedPreferences.Editor editor, Object obj) {
        editor.putInt(this.b, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object c(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(this.b, ((Integer) e()).intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object d(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(this.b, ((Integer) e()).intValue()));
    }
}
