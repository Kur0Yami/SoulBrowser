package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
class PrettyPrintTreeMap<K, V> extends TreeMap<K, V> {
    @Override // java.util.AbstractMap
    public final String toString() {
        StringBuilder t = a.t("( ");
        for (Map.Entry<K, V> entry : entrySet()) {
            t.append('{');
            t.append(entry.getKey());
            t.append(':');
            t.append(entry.getValue());
            t.append("}, ");
        }
        if (!isEmpty()) {
            t.replace(t.length() - 2, t.length(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        t.append(" )");
        return t.toString();
    }
}
