package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfz extends zzbgb {
    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object a(Bundle bundle) {
        String str = this.b;
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(str))) {
            return Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(str)));
        }
        return (Float) e();
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void b(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(this.b, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object c(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(this.b, ((Float) e()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final Object d(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(this.b, ((Float) e()).floatValue()));
    }
}
