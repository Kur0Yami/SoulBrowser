package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfin {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f7392a;

    public zzfin(JSONObject jSONObject) {
        this.f7392a = jSONObject;
    }

    public final int a() {
        int optInt = this.f7392a.optInt("media_type", -1);
        if (optInt != 0) {
            if (optInt == 1) {
                return 1;
            }
            return 3;
        }
        return 2;
    }
}
