package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
final /* synthetic */ class zzza implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzza f9406c = new Object();

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Integer num = (Integer) obj2;
        Integer num2 = (Integer) obj;
        zzgux zzguxVar = zzzu.k;
        if (num2.intValue() == -1) {
            if (num.intValue() != -1) {
                return -1;
            }
            return 0;
        }
        if (num.intValue() == -1) {
            return 1;
        }
        return num2.intValue() - num.intValue();
    }
}
