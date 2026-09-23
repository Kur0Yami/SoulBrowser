package com.google.android.odml.image;

import android.graphics.Bitmap;

/* loaded from: classes3.dex */
final /* synthetic */ class zzd {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f12063a;

    static {
        int[] iArr = new int[Bitmap.Config.values().length];
        f12063a = iArr;
        try {
            iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f12063a[Bitmap.Config.ARGB_8888.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
