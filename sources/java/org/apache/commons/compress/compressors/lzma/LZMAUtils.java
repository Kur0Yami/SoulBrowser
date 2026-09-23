package org.apache.commons.compress.compressors.lzma;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* loaded from: classes4.dex */
public class LZMAUtils {

    /* renamed from: a, reason: collision with root package name */
    public static volatile CachedAvailability f22320a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class CachedAvailability {

        /* renamed from: c, reason: collision with root package name */
        public static final CachedAvailability f22321c;
        public static final CachedAvailability f;
        public static final CachedAvailability g;
        public static final /* synthetic */ CachedAvailability[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.apache.commons.compress.compressors.lzma.LZMAUtils$CachedAvailability] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, org.apache.commons.compress.compressors.lzma.LZMAUtils$CachedAvailability] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, org.apache.commons.compress.compressors.lzma.LZMAUtils$CachedAvailability] */
        static {
            ?? r0 = new Enum("DONT_CACHE", 0);
            f22321c = r0;
            ?? r1 = new Enum("CACHED_AVAILABLE", 1);
            f = r1;
            ?? r3 = new Enum("CACHED_UNAVAILABLE", 2);
            g = r3;
            h = new CachedAvailability[]{r0, r1, r3};
        }

        public static CachedAvailability valueOf(String str) {
            return (CachedAvailability) Enum.valueOf(CachedAvailability.class, str);
        }

        public static CachedAvailability[] values() {
            return (CachedAvailability[]) h.clone();
        }
    }

    static {
        CachedAvailability cachedAvailability;
        HashMap hashMap = new HashMap();
        hashMap.put(".lzma", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        hashMap.put("-lzma", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        new FileNameUtil(hashMap);
        CachedAvailability cachedAvailability2 = CachedAvailability.f22321c;
        f22320a = cachedAvailability2;
        try {
            Class.forName("org.osgi.framework.BundleEvent");
        } catch (Exception unused) {
            if (f22320a == cachedAvailability2) {
                try {
                    int i = LZMACompressorInputStream.f;
                    cachedAvailability = CachedAvailability.f;
                } catch (NoClassDefFoundError unused2) {
                    cachedAvailability = CachedAvailability.g;
                }
                f22320a = cachedAvailability;
            }
        }
    }
}
