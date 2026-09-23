package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.annotation.KeepForSdk;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.uuid.Uuid;

@KeepForSdk
/* loaded from: classes.dex */
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    public static boolean isEmpty(@Nullable Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            return false;
        }
        return true;
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.EMPTY_LIST;
    }

    @NonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(@NonNull K k, @NonNull V v, @NonNull K k2, @NonNull V v2, @NonNull K k3, @NonNull V v3) {
        Map zzb = zzb(3, false);
        zzb.put(k, v);
        zzb.put(k2, v2);
        zzb.put(k3, v3);
        return DesugarCollections.unmodifiableMap(zzb);
    }

    @NonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOfKeyValueArrays(@NonNull K[] kArr, @NonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length == length2) {
            if (length != 0) {
                if (length != 1) {
                    Map zzb = zzb(length, false);
                    for (int i = 0; i < kArr.length; i++) {
                        zzb.put(kArr[i], vArr[i]);
                    }
                    return DesugarCollections.unmodifiableMap(zzb);
                }
                return Collections.singletonMap(kArr[0], vArr[0]);
            }
            return Collections.EMPTY_MAP;
        }
        throw new IllegalArgumentException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(length).length() + 44 + String.valueOf(length2).length()), "Key and values array lengths not equal: ", length, " != ", length2));
    }

    @NonNull
    @KeepForSdk
    public static <T> Set<T> mutableSetOfWithSize(int i) {
        if (i == 0) {
            return new ArraySet(0);
        }
        return zza(i, true);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(@NonNull T t, @NonNull T t2, @NonNull T t3) {
        Set zza = zza(3, false);
        zza.add(t);
        zza.add(t2);
        zza.add(t3);
        return DesugarCollections.unmodifiableSet(zza);
    }

    private static Set zza(int i, boolean z) {
        int i2;
        float f;
        if (true != z) {
            i2 = 256;
        } else {
            i2 = Uuid.SIZE_BITS;
        }
        if (i <= i2) {
            return new ArraySet(i);
        }
        if (true != z) {
            f = 1.0f;
        } else {
            f = 0.75f;
        }
        return new HashSet(i, f);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    private static Map zzb(int i, boolean z) {
        if (i <= 256) {
            return new SimpleArrayMap(i);
        }
        return new HashMap(i, 1.0f);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(@NonNull T t) {
        return Collections.singletonList(t);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(@NonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.EMPTY_LIST;
        }
        if (length != 1) {
            return DesugarCollections.unmodifiableList(Arrays.asList(tArr));
        }
        return Collections.singletonList(tArr[0]);
    }

    @NonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(@NonNull K k, @NonNull V v, @NonNull K k2, @NonNull V v2, @NonNull K k3, @NonNull V v3, @NonNull K k4, @NonNull V v4, @NonNull K k5, @NonNull V v5, @NonNull K k6, @NonNull V v6) {
        Map zzb = zzb(6, false);
        zzb.put(k, v);
        zzb.put(k2, v2);
        zzb.put(k3, v3);
        zzb.put(k4, v4);
        zzb.put(k5, v5);
        zzb.put(k6, v6);
        return DesugarCollections.unmodifiableMap(zzb);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(@NonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.EMPTY_SET;
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set zza = zza(2, false);
            zza.add(t);
            zza.add(t2);
            return DesugarCollections.unmodifiableSet(zza);
        }
        if (length == 3) {
            return setOf(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set zza2 = zza(length, false);
            Collections.addAll(zza2, tArr);
            return DesugarCollections.unmodifiableSet(zza2);
        }
        T t3 = tArr[0];
        T t4 = tArr[1];
        T t5 = tArr[2];
        T t6 = tArr[3];
        Set zza3 = zza(4, false);
        zza3.add(t3);
        zza3.add(t4);
        zza3.add(t5);
        zza3.add(t6);
        return DesugarCollections.unmodifiableSet(zza3);
    }
}
