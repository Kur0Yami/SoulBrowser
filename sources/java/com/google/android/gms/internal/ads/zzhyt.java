package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzhyt;
import com.google.android.gms.internal.ads.zzhyu;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzhyt<MessageType extends zzhyu<MessageType, BuilderType>, BuilderType extends zzhyt<MessageType, BuilderType>> implements zzicb {
    public static void i(int i, List list) {
        int size = list.size() - i;
        String t = androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(size).length() + 26), "Element at index ", size, " is null.");
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 >= i) {
                list.remove(size2);
            } else {
                throw new NullPointerException(t);
            }
        }
    }

    @Override // 
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public abstract zzial clone();
}
