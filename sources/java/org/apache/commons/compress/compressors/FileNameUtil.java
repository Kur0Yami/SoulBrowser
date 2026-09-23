package org.apache.commons.compress.compressors;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes4.dex */
public class FileNameUtil {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f22315a = new HashMap();
    public final Map b;

    public FileNameUtil(HashMap hashMap) {
        this.b = DesugarCollections.unmodifiableMap(hashMap);
        int i = IntCompanionObject.MIN_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (Map.Entry entry : hashMap.entrySet()) {
            int length = ((String) entry.getKey()).length();
            i = length > i ? length : i;
            i2 = length < i2 ? length : i2;
            String str = (String) entry.getValue();
            int length2 = str.length();
            if (length2 > 0) {
                if (!this.f22315a.containsKey(str)) {
                    this.f22315a.put(str, (String) entry.getKey());
                }
                i4 = length2 > i4 ? length2 : i4;
                if (length2 < i3) {
                    i3 = length2;
                }
            }
        }
    }
}
