package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzcw {
    public static zzcu a(Context context, String str) {
        String str2;
        String str3;
        if (!TextUtils.isEmpty(str)) {
            String[] split2 = str.split("/", -1);
            int length = split2.length;
            if (length == 1) {
                String valueOf = String.valueOf(context.getPackageName());
                str3 = split2[0];
                str2 = valueOf.concat("_preferences");
            } else if (length == 2) {
                str2 = split2[0];
                str3 = split2[1];
            } else {
                return null;
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                return new zzcu(str2, str3);
            }
            return null;
        }
        return null;
    }
}
