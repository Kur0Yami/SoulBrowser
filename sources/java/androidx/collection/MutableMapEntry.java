package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/collection/MutableMapEntry;", "K", "V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class MutableMapEntry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f450c;
    public final Object[] f;
    public final int g;

    public MutableMapEntry(Object[] keys, Object[] values, int i) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(values, "values");
        this.f450c = keys;
        this.f = values;
        this.g = i;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f450c[this.g];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f[this.g];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object[] objArr = this.f;
        int i = this.g;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }
}
