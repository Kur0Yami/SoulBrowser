package org.apache.commons.compress.compressors.bzip2;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.LinkedHashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* loaded from: classes4.dex */
public abstract class BZip2Utils {
    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tar.bz2", ".tar");
        linkedHashMap.put(".tbz2", ".tar");
        linkedHashMap.put(".tbz", ".tar");
        linkedHashMap.put(".bz2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        linkedHashMap.put(".bz", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        new FileNameUtil(linkedHashMap);
    }
}
