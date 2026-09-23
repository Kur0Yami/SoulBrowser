package io.opencensus.resource;

import com.google.android.gms.ads.RequestConfiguration;
import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Resource {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f21071a;

    static {
        Map unmodifiableMap;
        boolean z;
        boolean z2;
        boolean z3;
        String str = System.getenv("OC_RESOURCE_TYPE");
        if (str != null && !str.isEmpty()) {
            if (!str.isEmpty() && str.length() <= 255 && StringUtils.a(str)) {
                z3 = true;
            } else {
                z3 = false;
            }
            Utils.a("Type should be a ASCII string with a length greater than 0 and not exceed 255 characters.", z3);
        }
        String str2 = System.getenv("OC_RESOURCE_LABELS");
        if (str2 == null) {
            unmodifiableMap = Collections.EMPTY_MAP;
        } else {
            HashMap hashMap = new HashMap();
            for (String str3 : str2.split(",", -1)) {
                String[] split2 = str3.split("=", -1);
                if (split2.length == 2) {
                    String trim = split2[0].trim();
                    String replaceAll = split2[1].trim().replaceAll("^\"|\"$", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    if (!trim.isEmpty() && trim.length() <= 255 && StringUtils.a(trim)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Utils.a("Label key should be a ASCII string with a length greater than 0 and not exceed 255 characters.", z);
                    if (replaceAll.length() <= 255 && StringUtils.a(replaceAll)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Utils.a("Label value should be a ASCII string with a length not exceed 255 characters.", z2);
                    hashMap.put(trim, replaceAll);
                }
            }
            unmodifiableMap = DesugarCollections.unmodifiableMap(hashMap);
        }
        f21071a = unmodifiableMap;
    }
}
