package com.google.android.gms.internal.ads;

import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzgne {

    /* renamed from: a, reason: collision with root package name */
    public static final ClipData f8154a = ClipData.newIntent(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Intent());

    public static Intent a(Intent intent, int i) {
        boolean z;
        boolean b = b(0, 17);
        boolean b2 = b(0, 9);
        boolean b3 = b(0, 5);
        boolean b4 = b(0, 3);
        if (intent.getComponent() != null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.b("Must set component on Intent.", z);
        if (b(0, 1)) {
            zzgqa.b("Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.", !b(i, 67108864));
        } else {
            zzgqa.b("Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.", b(i, 67108864));
        }
        Intent intent2 = new Intent(intent);
        if (!b(i, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!b4 && intent2.getAction() == null) {
                intent2.setAction(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            if (!b2 && intent2.getCategories() == null) {
                intent2.addCategory(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            if (!b3 && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!b && intent2.getClipData() == null) {
                intent2.setClipData(f8154a);
            }
        }
        return intent2;
    }

    public static boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
