package com.google.android.datatransport.runtime.util;

import android.support.v4.media.a;
import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class PriorityMapping {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f2926a = new SparseArray();
    public static final HashMap b;

    static {
        HashMap hashMap = new HashMap();
        b = hashMap;
        hashMap.put(Priority.f2755c, 0);
        hashMap.put(Priority.f, 1);
        hashMap.put(Priority.g, 2);
        for (Priority priority : hashMap.keySet()) {
            f2926a.append(((Integer) b.get(priority)).intValue(), priority);
        }
    }

    public static int a(Priority priority) {
        Integer num = (Integer) b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    public static Priority b(int i) {
        Priority priority = (Priority) f2926a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException(a.e(i, "Unknown Priority for value "));
    }
}
