package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfcc {

    /* renamed from: a, reason: collision with root package name */
    public final zzbza f7210a;
    public final int b;

    public zzfcc(zzbza zzbzaVar, int i) {
        this.f7210a = zzbzaVar;
        this.b = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int a() {
        Bundle bundle = this.f7210a.f4979c.getBundle("extras");
        if (bundle != null && !bundle.isEmpty()) {
            String string = bundle.getString("query_info_type", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            switch (string.hashCode()) {
                case 1743582862:
                    if (string.equals("requester_type_0")) {
                        return 0;
                    }
                    break;
                case 1743582863:
                    if (string.equals("requester_type_1")) {
                        return 1;
                    }
                    break;
                case 1743582864:
                    if (string.equals("requester_type_2")) {
                        return 2;
                    }
                    break;
                case 1743582865:
                    if (string.equals("requester_type_3")) {
                        return 3;
                    }
                    break;
                case 1743582866:
                    if (string.equals("requester_type_4")) {
                        return 4;
                    }
                    break;
                case 1743582867:
                    if (string.equals("requester_type_5")) {
                        return 5;
                    }
                    break;
                case 1743582868:
                    if (string.equals("requester_type_6")) {
                        return 6;
                    }
                    break;
                case 1743582869:
                    if (string.equals("requester_type_7")) {
                        return 7;
                    }
                    break;
                case 1743582870:
                    if (string.equals("requester_type_8")) {
                        return 8;
                    }
                    break;
            }
        }
        return -1;
    }
}
