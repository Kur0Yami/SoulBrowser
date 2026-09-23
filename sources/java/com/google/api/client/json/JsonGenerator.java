package com.google.api.client.json;

import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Types;
import java.io.Closeable;
import java.io.Flushable;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class JsonGenerator implements Closeable, Flushable {
    public abstract void A(String str);

    public void a() {
    }

    public final void b(Object obj, boolean z) {
        boolean z2;
        ClassInfo of;
        boolean z3;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (Data.isNull(obj)) {
            j();
            return;
        }
        if (obj instanceof String) {
            A((String) obj);
            return;
        }
        boolean z4 = false;
        if (obj instanceof Number) {
            if (z) {
                A(obj.toString());
                return;
            }
            if (obj instanceof BigDecimal) {
                o((BigDecimal) obj);
                return;
            }
            if (obj instanceof BigInteger) {
                u((BigInteger) obj);
                return;
            }
            if (obj instanceof Long) {
                n(((Long) obj).longValue());
                return;
            }
            if (obj instanceof Float) {
                float floatValue = ((Number) obj).floatValue();
                if (!Float.isInfinite(floatValue) && !Float.isNaN(floatValue)) {
                    z4 = true;
                }
                Preconditions.checkArgument(z4);
                l(floatValue);
                return;
            }
            if (!(obj instanceof Integer) && !(obj instanceof Short) && !(obj instanceof Byte)) {
                double doubleValue = ((Number) obj).doubleValue();
                if (!Double.isInfinite(doubleValue) && !Double.isNaN(doubleValue)) {
                    z4 = true;
                }
                Preconditions.checkArgument(z4);
                k(doubleValue);
                return;
            }
            m(((Number) obj).intValue());
            return;
        }
        if (obj instanceof Boolean) {
            d(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof DateTime) {
            A(((DateTime) obj).toStringRfc3339());
            return;
        }
        if (((obj instanceof Iterable) || cls.isArray()) && !(obj instanceof Map) && !(obj instanceof GenericData)) {
            v();
            Iterator it = Types.iterableOf(obj).iterator();
            while (it.hasNext()) {
                b(it.next(), z);
            }
            e();
            return;
        }
        if (cls.isEnum()) {
            String name = FieldInfo.of((Enum<?>) obj).getName();
            if (name == null) {
                j();
                return;
            } else {
                A(name);
                return;
            }
        }
        z();
        if ((obj instanceof Map) && !(obj instanceof GenericData)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            of = null;
        } else {
            of = ClassInfo.of(cls);
        }
        for (Map.Entry<String, Object> entry : Data.mapOf(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String key = entry.getKey();
                if (z2) {
                    z3 = z;
                } else {
                    Field field = of.getField(key);
                    if (field != null && field.getAnnotation(JsonString.class) != null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                }
                i(key);
                b(value, z3);
            }
        }
        f();
    }

    public abstract void d(boolean z);

    public abstract void e();

    public abstract void f();

    @Override // java.io.Flushable
    public abstract void flush();

    public abstract void i(String str);

    public abstract void j();

    public abstract void k(double d);

    public abstract void l(float f);

    public abstract void m(int i);

    public abstract void n(long j);

    public abstract void o(BigDecimal bigDecimal);

    public abstract void u(BigInteger bigInteger);

    public abstract void v();

    public abstract void z();
}
