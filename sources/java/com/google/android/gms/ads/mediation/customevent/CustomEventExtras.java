package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public final class CustomEventExtras {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3193a = new HashMap();

    @Nullable
    public Object getExtra(@NonNull String str) {
        return this.f3193a.get(str);
    }

    public void setExtra(@NonNull String str, @NonNull Object obj) {
        this.f3193a.put(str, obj);
    }
}
