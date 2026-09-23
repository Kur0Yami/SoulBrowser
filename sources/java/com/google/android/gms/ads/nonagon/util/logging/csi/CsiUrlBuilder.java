package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.ads.zzbie;
import java.util.Map;

/* loaded from: classes.dex */
public class CsiUrlBuilder {

    /* renamed from: a, reason: collision with root package name */
    public final String f3307a = (String) zzbie.f4705a.c();

    @NonNull
    public String generateUrl(@NonNull Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f3307a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
