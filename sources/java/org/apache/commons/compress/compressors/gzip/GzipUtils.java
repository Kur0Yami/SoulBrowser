package org.apache.commons.compress.compressors.gzip;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.LinkedHashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* loaded from: classes4.dex */
public class GzipUtils {
    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tgz", ".tar");
        linkedHashMap.put(".taz", ".tar");
        linkedHashMap.put(".svgz", ".svg");
        linkedHashMap.put(".cpgz", ".cpio");
        linkedHashMap.put(".wmz", ".wmf");
        linkedHashMap.put(".emz", ".emf");
        linkedHashMap.put(".gz", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        linkedHashMap.put(".z", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        linkedHashMap.put("-gz", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        linkedHashMap.put("-z", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        linkedHashMap.put("_z", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        new FileNameUtil(linkedHashMap);
    }
}
