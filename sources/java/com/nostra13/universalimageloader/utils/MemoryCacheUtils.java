package com.nostra13.universalimageloader.utils;

import android.text.TextUtils;
import java.util.Comparator;

/* loaded from: classes3.dex */
public final class MemoryCacheUtils {

    /* renamed from: com.nostra13.universalimageloader.utils.MemoryCacheUtils$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Comparator<String> {
        @Override // java.util.Comparator
        public final int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            if (str3 == null && str4 == null) {
                return 0;
            }
            if (str3 == null) {
                return 1;
            }
            if (str4 == null) {
                return -1;
            }
            return str3.substring(0, str3.lastIndexOf("_")).compareTo(str4.substring(0, str4.lastIndexOf("_")));
        }
    }

    public static String a(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str + "_" + i;
    }
}
