package com.google.api.client.json;

import com.google.api.client.json.JsonPolymorphicTypeMap;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sets;
import com.google.api.client.util.Types;
import java.io.Closeable;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public abstract class JsonParser implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public static final WeakHashMap f12081c = new WeakHashMap();
    public static final ReentrantLock f = new ReentrantLock();

    /* renamed from: com.google.api.client.json.JsonParser$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12082a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f12082a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12082a[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12082a[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12082a[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12082a[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12082a[8] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12082a[9] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12082a[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12082a[6] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12082a[5] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f12082a[10] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static Field d(Class cls) {
        boolean z;
        boolean z2;
        WeakHashMap weakHashMap = f12081c;
        Field field = null;
        if (cls == null) {
            return null;
        }
        ReentrantLock reentrantLock = f;
        reentrantLock.lock();
        try {
            if (weakHashMap.containsKey(cls)) {
                return (Field) weakHashMap.get(cls);
            }
            Iterator<FieldInfo> it = ClassInfo.of(cls).getFieldInfos().iterator();
            while (it.hasNext()) {
                Field field2 = it.next().getField();
                JsonPolymorphicTypeMap jsonPolymorphicTypeMap = (JsonPolymorphicTypeMap) field2.getAnnotation(JsonPolymorphicTypeMap.class);
                if (jsonPolymorphicTypeMap != null) {
                    if (field == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.checkArgument(z, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    Preconditions.checkArgument(Data.isPrimitive(field2.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, field2.getType());
                    JsonPolymorphicTypeMap.TypeDef[] typeDefinitions = jsonPolymorphicTypeMap.typeDefinitions();
                    HashSet newHashSet = Sets.newHashSet();
                    if (typeDefinitions.length > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Preconditions.checkArgument(z2, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (JsonPolymorphicTypeMap.TypeDef typeDef : typeDefinitions) {
                        Preconditions.checkArgument(newHashSet.add(typeDef.key()), "Class contains two @TypeDef annotations with identical key: %s", typeDef.key());
                    }
                    field = field2;
                }
            }
            weakHashMap.put(cls, field);
            return field;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void A(Object obj, ArrayList arrayList) {
        if (obj instanceof GenericJson) {
            ((GenericJson) obj).setFactory(k());
        }
        JsonToken S = S();
        Class<?> cls = obj.getClass();
        ClassInfo of = ClassInfo.of(cls);
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        JsonToken jsonToken = JsonToken.i;
        if (!isAssignableFrom && Map.class.isAssignableFrom(cls)) {
            Map map = (Map) obj;
            Type mapValueParameter = Types.getMapValueParameter(cls);
            JsonToken S2 = S();
            while (S2 == jsonToken) {
                String u = u();
                v();
                map.put(u, F(null, mapValueParameter, arrayList, true));
                S2 = v();
            }
            return;
        }
        while (S == jsonToken) {
            String u2 = u();
            v();
            FieldInfo fieldInfo = of.getFieldInfo(u2);
            if (fieldInfo != null) {
                if (fieldInfo.isFinal() && !fieldInfo.isPrimitive()) {
                    throw new IllegalArgumentException("final array/object fields are not supported");
                }
                Field field = fieldInfo.getField();
                int size = arrayList.size();
                arrayList.add(field.getGenericType());
                Object F = F(field, fieldInfo.getGenericType(), arrayList, true);
                arrayList.remove(size);
                fieldInfo.setValue(obj, F);
            } else if (isAssignableFrom) {
                ((GenericData) obj).set(u2, F(null, null, arrayList, true));
            } else {
                G();
            }
            S = v();
        }
    }

    public final Object B(Class cls) {
        try {
            return z(cls, false);
        } finally {
            close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x02d9 A[Catch: IllegalArgumentException -> 0x005d, TryCatch #0 {IllegalArgumentException -> 0x005d, blocks: (B:14:0x0031, B:17:0x004b, B:18:0x005c, B:20:0x0062, B:24:0x006b, B:26:0x0072, B:28:0x007a, B:30:0x0080, B:32:0x008d, B:34:0x0093, B:36:0x00a0, B:39:0x00ab, B:42:0x00b1, B:46:0x00be, B:48:0x00cb, B:50:0x00ce, B:54:0x00d3, B:58:0x00dc, B:60:0x00e3, B:65:0x00f1, B:72:0x00ff, B:80:0x010d, B:85:0x0116, B:90:0x011f, B:93:0x0124, B:94:0x0135, B:95:0x0136, B:97:0x013f, B:99:0x0148, B:101:0x0151, B:103:0x015a, B:105:0x0163, B:107:0x016c, B:109:0x0171, B:115:0x01a1, B:118:0x01ab, B:122:0x01b4, B:123:0x01b9, B:125:0x0187, B:127:0x018f, B:129:0x0197, B:131:0x01c2, B:133:0x01d2, B:135:0x01da, B:139:0x01e6, B:140:0x01fa, B:142:0x0200, B:144:0x0205, B:146:0x020d, B:148:0x0213, B:150:0x021b, B:151:0x0222, B:153:0x0226, B:157:0x023a, B:159:0x023f, B:162:0x0245, B:165:0x0256, B:167:0x0270, B:171:0x027c, B:174:0x028a, B:169:0x0281, B:183:0x01f1, B:184:0x01f6, B:187:0x02b4, B:191:0x02be, B:195:0x02c8, B:197:0x02d9, B:198:0x02ee, B:199:0x02f6, B:201:0x02fa, B:204:0x0308, B:208:0x02e0, B:210:0x02e8), top: B:13:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x02fa A[Catch: IllegalArgumentException -> 0x005d, LOOP:2: B:199:0x02f6->B:201:0x02fa, LOOP_END, TryCatch #0 {IllegalArgumentException -> 0x005d, blocks: (B:14:0x0031, B:17:0x004b, B:18:0x005c, B:20:0x0062, B:24:0x006b, B:26:0x0072, B:28:0x007a, B:30:0x0080, B:32:0x008d, B:34:0x0093, B:36:0x00a0, B:39:0x00ab, B:42:0x00b1, B:46:0x00be, B:48:0x00cb, B:50:0x00ce, B:54:0x00d3, B:58:0x00dc, B:60:0x00e3, B:65:0x00f1, B:72:0x00ff, B:80:0x010d, B:85:0x0116, B:90:0x011f, B:93:0x0124, B:94:0x0135, B:95:0x0136, B:97:0x013f, B:99:0x0148, B:101:0x0151, B:103:0x015a, B:105:0x0163, B:107:0x016c, B:109:0x0171, B:115:0x01a1, B:118:0x01ab, B:122:0x01b4, B:123:0x01b9, B:125:0x0187, B:127:0x018f, B:129:0x0197, B:131:0x01c2, B:133:0x01d2, B:135:0x01da, B:139:0x01e6, B:140:0x01fa, B:142:0x0200, B:144:0x0205, B:146:0x020d, B:148:0x0213, B:150:0x021b, B:151:0x0222, B:153:0x0226, B:157:0x023a, B:159:0x023f, B:162:0x0245, B:165:0x0256, B:167:0x0270, B:171:0x027c, B:174:0x028a, B:169:0x0281, B:183:0x01f1, B:184:0x01f6, B:187:0x02b4, B:191:0x02be, B:195:0x02c8, B:197:0x02d9, B:198:0x02ee, B:199:0x02f6, B:201:0x02fa, B:204:0x0308, B:208:0x02e0, B:210:0x02e8), top: B:13:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0308 A[Catch: IllegalArgumentException -> 0x005d, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x005d, blocks: (B:14:0x0031, B:17:0x004b, B:18:0x005c, B:20:0x0062, B:24:0x006b, B:26:0x0072, B:28:0x007a, B:30:0x0080, B:32:0x008d, B:34:0x0093, B:36:0x00a0, B:39:0x00ab, B:42:0x00b1, B:46:0x00be, B:48:0x00cb, B:50:0x00ce, B:54:0x00d3, B:58:0x00dc, B:60:0x00e3, B:65:0x00f1, B:72:0x00ff, B:80:0x010d, B:85:0x0116, B:90:0x011f, B:93:0x0124, B:94:0x0135, B:95:0x0136, B:97:0x013f, B:99:0x0148, B:101:0x0151, B:103:0x015a, B:105:0x0163, B:107:0x016c, B:109:0x0171, B:115:0x01a1, B:118:0x01ab, B:122:0x01b4, B:123:0x01b9, B:125:0x0187, B:127:0x018f, B:129:0x0197, B:131:0x01c2, B:133:0x01d2, B:135:0x01da, B:139:0x01e6, B:140:0x01fa, B:142:0x0200, B:144:0x0205, B:146:0x020d, B:148:0x0213, B:150:0x021b, B:151:0x0222, B:153:0x0226, B:157:0x023a, B:159:0x023f, B:162:0x0245, B:165:0x0256, B:167:0x0270, B:171:0x027c, B:174:0x028a, B:169:0x0281, B:183:0x01f1, B:184:0x01f6, B:187:0x02b4, B:191:0x02be, B:195:0x02c8, B:197:0x02d9, B:198:0x02ee, B:199:0x02f6, B:201:0x02fa, B:204:0x0308, B:208:0x02e0, B:210:0x02e8), top: B:13:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0311 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cb A[Catch: IllegalArgumentException -> 0x005d, TryCatch #0 {IllegalArgumentException -> 0x005d, blocks: (B:14:0x0031, B:17:0x004b, B:18:0x005c, B:20:0x0062, B:24:0x006b, B:26:0x0072, B:28:0x007a, B:30:0x0080, B:32:0x008d, B:34:0x0093, B:36:0x00a0, B:39:0x00ab, B:42:0x00b1, B:46:0x00be, B:48:0x00cb, B:50:0x00ce, B:54:0x00d3, B:58:0x00dc, B:60:0x00e3, B:65:0x00f1, B:72:0x00ff, B:80:0x010d, B:85:0x0116, B:90:0x011f, B:93:0x0124, B:94:0x0135, B:95:0x0136, B:97:0x013f, B:99:0x0148, B:101:0x0151, B:103:0x015a, B:105:0x0163, B:107:0x016c, B:109:0x0171, B:115:0x01a1, B:118:0x01ab, B:122:0x01b4, B:123:0x01b9, B:125:0x0187, B:127:0x018f, B:129:0x0197, B:131:0x01c2, B:133:0x01d2, B:135:0x01da, B:139:0x01e6, B:140:0x01fa, B:142:0x0200, B:144:0x0205, B:146:0x020d, B:148:0x0213, B:150:0x021b, B:151:0x0222, B:153:0x0226, B:157:0x023a, B:159:0x023f, B:162:0x0245, B:165:0x0256, B:167:0x0270, B:171:0x027c, B:174:0x028a, B:169:0x0281, B:183:0x01f1, B:184:0x01f6, B:187:0x02b4, B:191:0x02be, B:195:0x02c8, B:197:0x02d9, B:198:0x02ee, B:199:0x02f6, B:201:0x02fa, B:204:0x0308, B:208:0x02e0, B:210:0x02e8), top: B:13:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ce A[Catch: IllegalArgumentException -> 0x005d, TryCatch #0 {IllegalArgumentException -> 0x005d, blocks: (B:14:0x0031, B:17:0x004b, B:18:0x005c, B:20:0x0062, B:24:0x006b, B:26:0x0072, B:28:0x007a, B:30:0x0080, B:32:0x008d, B:34:0x0093, B:36:0x00a0, B:39:0x00ab, B:42:0x00b1, B:46:0x00be, B:48:0x00cb, B:50:0x00ce, B:54:0x00d3, B:58:0x00dc, B:60:0x00e3, B:65:0x00f1, B:72:0x00ff, B:80:0x010d, B:85:0x0116, B:90:0x011f, B:93:0x0124, B:94:0x0135, B:95:0x0136, B:97:0x013f, B:99:0x0148, B:101:0x0151, B:103:0x015a, B:105:0x0163, B:107:0x016c, B:109:0x0171, B:115:0x01a1, B:118:0x01ab, B:122:0x01b4, B:123:0x01b9, B:125:0x0187, B:127:0x018f, B:129:0x0197, B:131:0x01c2, B:133:0x01d2, B:135:0x01da, B:139:0x01e6, B:140:0x01fa, B:142:0x0200, B:144:0x0205, B:146:0x020d, B:148:0x0213, B:150:0x021b, B:151:0x0222, B:153:0x0226, B:157:0x023a, B:159:0x023f, B:162:0x0245, B:165:0x0256, B:167:0x0270, B:171:0x027c, B:174:0x028a, B:169:0x0281, B:183:0x01f1, B:184:0x01f6, B:187:0x02b4, B:191:0x02be, B:195:0x02c8, B:197:0x02d9, B:198:0x02ee, B:199:0x02f6, B:201:0x02fa, B:204:0x0308, B:208:0x02e0, B:210:0x02e8), top: B:13:0x0031 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object F(java.lang.reflect.Field r19, java.lang.reflect.Type r20, java.util.ArrayList r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.json.JsonParser.F(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, boolean):java.lang.Object");
    }

    public abstract JsonParser G();

    public final String L(Set set) {
        JsonToken S = S();
        while (S == JsonToken.i) {
            String u = u();
            v();
            if (set.contains(u)) {
                return u;
            }
            G();
            S = v();
        }
        return null;
    }

    public final JsonToken Q() {
        boolean z;
        JsonToken f2 = f();
        if (f2 == null) {
            f2 = v();
        }
        if (f2 != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "no JSON input found");
        return f2;
    }

    public final JsonToken S() {
        boolean z;
        JsonToken Q = Q();
        int ordinal = Q.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                return Q;
            }
            JsonToken v = v();
            if (v != JsonToken.i && v != JsonToken.h) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.checkArgument(z, v);
            return v;
        }
        return v();
    }

    public abstract BigInteger a();

    public abstract byte b();

    public abstract String e();

    public abstract JsonToken f();

    public abstract BigDecimal i();

    public abstract double j();

    public abstract JsonFactory k();

    public abstract float l();

    public abstract int m();

    public abstract long n();

    public abstract short o();

    public abstract String u();

    public abstract JsonToken v();

    public final Object z(Type type, boolean z) {
        try {
            if (!Void.class.equals(type)) {
                Q();
            }
            Object F = F(null, type, new ArrayList(), true);
            if (z) {
                close();
            }
            return F;
        } catch (Throwable th) {
            if (z) {
                close();
            }
            throw th;
        }
    }
}
