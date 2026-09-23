package org.apache.commons.compress.archivers.zip;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public enum ZipMethod {
    /* JADX INFO: Fake field, exist only in values array */
    STORED(0),
    /* JADX INFO: Fake field, exist only in values array */
    UNSHRINKING(1),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_1(2),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_2(3),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_3(4),
    /* JADX INFO: Fake field, exist only in values array */
    EXPANDING_LEVEL_4(5),
    /* JADX INFO: Fake field, exist only in values array */
    IMPLODING(6),
    /* JADX INFO: Fake field, exist only in values array */
    TOKENIZATION(7),
    /* JADX INFO: Fake field, exist only in values array */
    DEFLATED(8),
    /* JADX INFO: Fake field, exist only in values array */
    ENHANCED_DEFLATED(9),
    /* JADX INFO: Fake field, exist only in values array */
    PKWARE_IMPLODING(10),
    /* JADX INFO: Fake field, exist only in values array */
    BZIP2(12),
    /* JADX INFO: Fake field, exist only in values array */
    LZMA(14),
    /* JADX INFO: Fake field, exist only in values array */
    JPEG(96),
    /* JADX INFO: Fake field, exist only in values array */
    WAVPACK(97),
    /* JADX INFO: Fake field, exist only in values array */
    PPMD(98),
    /* JADX INFO: Fake field, exist only in values array */
    AES_ENCRYPTED(99),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(-1);

    public static final Map f;

    /* renamed from: c, reason: collision with root package name */
    public final int f22312c;

    static {
        HashMap hashMap = new HashMap();
        for (ZipMethod zipMethod : values()) {
            hashMap.put(Integer.valueOf(zipMethod.f22312c), zipMethod);
        }
        f = DesugarCollections.unmodifiableMap(hashMap);
    }

    ZipMethod(int i) {
        this.f22312c = i;
    }
}
