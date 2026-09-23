package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.common.internal.Preconditions;

@RequiresApi
/* loaded from: classes.dex */
public final class zzbou {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4807a;
    public final OnH5AdsEventListener b;

    /* renamed from: c, reason: collision with root package name */
    public zzboq f4808c;

    public zzbou(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onH5AdsEventListener);
        this.f4807a = context;
        this.b = onH5AdsEventListener;
        zzbgk.a(context);
    }

    public static final boolean a(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.nb)).booleanValue()) {
            Preconditions.checkNotNull(str);
            if (str.length() > ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pb)).intValue()) {
                com.google.android.gms.ads.internal.util.client.zzo.zzd("H5 GMSG exceeds max length");
                return false;
            }
            Uri parse = Uri.parse(str);
            if ("gmsg".equals(parse.getScheme()) && "mobileads.google.com".equals(parse.getHost()) && "/h5ads".equals(parse.getPath())) {
                return true;
            }
        }
        return false;
    }
}
