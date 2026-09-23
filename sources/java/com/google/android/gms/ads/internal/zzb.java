package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbyh;
import com.google.android.gms.internal.ads.zzcbk;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3166a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcbk f3167c;
    public final zzbyh d = new zzbyh(Collections.EMPTY_LIST, false);

    public zzb(Context context, @Nullable zzcbk zzcbkVar, @Nullable zzbyh zzbyhVar) {
        this.f3166a = context;
        this.f3167c = zzcbkVar;
    }

    public final void zza() {
        this.b = true;
    }

    public final boolean zzb() {
        zzcbk zzcbkVar = this.f3167c;
        if (((zzcbkVar != null && zzcbkVar.zza().j) || this.d.f4971c) && !this.b) {
            return false;
        }
        return true;
    }

    public final void zzc(@Nullable String str) {
        List<String> list;
        zzbyh zzbyhVar = this.d;
        zzcbk zzcbkVar = this.f3167c;
        if ((zzcbkVar != null && zzcbkVar.zza().j) || zzbyhVar.f4971c) {
            if (str == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (zzcbkVar != null) {
                zzcbkVar.c(str, null, 3);
                return;
            }
            if (zzbyhVar.f4971c && (list = zzbyhVar.f) != null) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        zzt.zzc();
                        com.google.android.gms.ads.internal.util.zzs.zzQ(this.f3166a, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, replace);
                    }
                }
            }
        }
    }
}
