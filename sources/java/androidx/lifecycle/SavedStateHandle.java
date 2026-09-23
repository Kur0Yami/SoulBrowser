package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import kotlinx.coroutines.flow.MutableStateFlow;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/SavedStateHandle;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "SavingStateLiveData", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,450:1\n361#2,3:451\n364#2,4:455\n1#3:454\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n*L\n198#1:451,3\n198#1:455,4\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateHandle {
    public static final Class[] f = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1213a;
    public final LinkedHashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f1214c;
    public final LinkedHashMap d;
    public final SavedStateRegistry.SavedStateProvider e;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R$\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Ljava/lang/Class;", "ACCEPTABLE_CLASSES", "[Ljava/lang/Class;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "KEYS", "Ljava/lang/String;", "VALUES", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static SavedStateHandle a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new SavedStateHandle();
                }
                HashMap hashMap = new HashMap();
                for (String key : bundle2.keySet()) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    hashMap.put(key, bundle2.get(key));
                }
                return new SavedStateHandle(hashMap);
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if (parcelableArrayList != null && parcelableArrayList2 != null && parcelableArrayList.size() == parcelableArrayList2.size()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int size = parcelableArrayList.size();
                for (int i = 0; i < size; i++) {
                    Object obj = parcelableArrayList.get(i);
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                    linkedHashMap.put((String) obj, parcelableArrayList2.get(i));
                }
                return new SavedStateHandle(linkedHashMap);
            }
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/lifecycle/MutableLiveData;", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
    }

    public SavedStateHandle(HashMap initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f1213a = linkedHashMap;
        this.b = new LinkedHashMap();
        this.f1214c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.a
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle a() {
                return SavedStateHandle.a(SavedStateHandle.this);
            }
        };
        linkedHashMap.putAll(initialState);
    }

    public static Bundle a(SavedStateHandle this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LinkedHashMap linkedHashMap = this$0.b;
        LinkedHashMap linkedHashMap2 = this$0.f1213a;
        Iterator it = MapsKt.toMap(linkedHashMap).entrySet().iterator();
        while (true) {
            MutableLiveData mutableLiveData = null;
            int i = 0;
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String key = (String) entry.getKey();
                Bundle a2 = ((SavedStateRegistry.SavedStateProvider) entry.getValue()).a();
                Intrinsics.checkNotNullParameter(key, "key");
                if (a2 != null) {
                    while (i < 29) {
                        Class cls = f[i];
                        Intrinsics.checkNotNull(cls);
                        if (!cls.isInstance(a2)) {
                            i++;
                        }
                    }
                    StringBuilder sb = new StringBuilder("Can't put value with type ");
                    Intrinsics.checkNotNull(a2);
                    sb.append(a2.getClass());
                    sb.append(" into saved state");
                    throw new IllegalArgumentException(sb.toString());
                }
                Object obj = this$0.f1214c.get(key);
                if (obj instanceof MutableLiveData) {
                    mutableLiveData = (MutableLiveData) obj;
                }
                if (mutableLiveData != null) {
                    mutableLiveData.i(a2);
                } else {
                    linkedHashMap2.put(key, a2);
                }
                MutableStateFlow mutableStateFlow = (MutableStateFlow) this$0.d.get(key);
                if (mutableStateFlow != null) {
                    mutableStateFlow.setValue(a2);
                }
            } else {
                Set<String> keySet = linkedHashMap2.keySet();
                ArrayList arrayList = new ArrayList(keySet.size());
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (String str : keySet) {
                    arrayList.add(str);
                    arrayList2.add(linkedHashMap2.get(str));
                }
                Pair[] pairArr = {TuplesKt.to("keys", arrayList), TuplesKt.to("values", arrayList2)};
                Bundle bundle = new Bundle(2);
                while (i < 2) {
                    Pair pair = pairArr[i];
                    String str2 = (String) pair.component1();
                    Object component2 = pair.component2();
                    if (component2 == null) {
                        bundle.putString(str2, null);
                    } else if (component2 instanceof Boolean) {
                        bundle.putBoolean(str2, ((Boolean) component2).booleanValue());
                    } else if (component2 instanceof Byte) {
                        bundle.putByte(str2, ((Number) component2).byteValue());
                    } else if (component2 instanceof Character) {
                        bundle.putChar(str2, ((Character) component2).charValue());
                    } else if (component2 instanceof Double) {
                        bundle.putDouble(str2, ((Number) component2).doubleValue());
                    } else if (component2 instanceof Float) {
                        bundle.putFloat(str2, ((Number) component2).floatValue());
                    } else if (component2 instanceof Integer) {
                        bundle.putInt(str2, ((Number) component2).intValue());
                    } else if (component2 instanceof Long) {
                        bundle.putLong(str2, ((Number) component2).longValue());
                    } else if (component2 instanceof Short) {
                        bundle.putShort(str2, ((Number) component2).shortValue());
                    } else if (component2 instanceof Bundle) {
                        bundle.putBundle(str2, (Bundle) component2);
                    } else if (component2 instanceof CharSequence) {
                        bundle.putCharSequence(str2, (CharSequence) component2);
                    } else if (component2 instanceof Parcelable) {
                        bundle.putParcelable(str2, (Parcelable) component2);
                    } else if (component2 instanceof boolean[]) {
                        bundle.putBooleanArray(str2, (boolean[]) component2);
                    } else if (component2 instanceof byte[]) {
                        bundle.putByteArray(str2, (byte[]) component2);
                    } else if (component2 instanceof char[]) {
                        bundle.putCharArray(str2, (char[]) component2);
                    } else if (component2 instanceof double[]) {
                        bundle.putDoubleArray(str2, (double[]) component2);
                    } else if (component2 instanceof float[]) {
                        bundle.putFloatArray(str2, (float[]) component2);
                    } else if (component2 instanceof int[]) {
                        bundle.putIntArray(str2, (int[]) component2);
                    } else if (component2 instanceof long[]) {
                        bundle.putLongArray(str2, (long[]) component2);
                    } else if (component2 instanceof short[]) {
                        bundle.putShortArray(str2, (short[]) component2);
                    } else if (component2 instanceof Object[]) {
                        Class<?> componentType = component2.getClass().getComponentType();
                        Intrinsics.checkNotNull(componentType);
                        if (Parcelable.class.isAssignableFrom(componentType)) {
                            Intrinsics.checkNotNull(component2, "null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>");
                            bundle.putParcelableArray(str2, (Parcelable[]) component2);
                        } else if (String.class.isAssignableFrom(componentType)) {
                            Intrinsics.checkNotNull(component2, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                            bundle.putStringArray(str2, (String[]) component2);
                        } else if (CharSequence.class.isAssignableFrom(componentType)) {
                            Intrinsics.checkNotNull(component2, "null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>");
                            bundle.putCharSequenceArray(str2, (CharSequence[]) component2);
                        } else if (Serializable.class.isAssignableFrom(componentType)) {
                            bundle.putSerializable(str2, (Serializable) component2);
                        } else {
                            throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str2 + Typography.quote);
                        }
                    } else if (component2 instanceof Serializable) {
                        bundle.putSerializable(str2, (Serializable) component2);
                    } else if (component2 instanceof IBinder) {
                        bundle.putBinder(str2, (IBinder) component2);
                    } else if (component2 instanceof Size) {
                        bundle.putSize(str2, (Size) component2);
                    } else if (component2 instanceof SizeF) {
                        bundle.putSizeF(str2, (SizeF) component2);
                    } else {
                        throw new IllegalArgumentException("Illegal value type " + component2.getClass().getCanonicalName() + " for key \"" + str2 + Typography.quote);
                    }
                    i++;
                }
                return bundle;
            }
        }
    }

    public SavedStateHandle() {
        this.f1213a = new LinkedHashMap();
        this.b = new LinkedHashMap();
        this.f1214c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.a
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle a() {
                return SavedStateHandle.a(SavedStateHandle.this);
            }
        };
    }
}
