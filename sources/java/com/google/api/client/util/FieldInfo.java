package com.google.api.client.util;

import android.support.v4.media.a;
import com.google.common.base.Ascii;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class FieldInfo {
    private static final Map<Field, FieldInfo> CACHE = new WeakHashMap();
    private final Field field;
    private final boolean isPrimitive;
    private final String name;
    private final Method[] setters;

    public FieldInfo(Field field, String str) {
        String intern;
        this.field = field;
        if (str == null) {
            intern = null;
        } else {
            intern = str.intern();
        }
        this.name = intern;
        this.isPrimitive = Data.isPrimitive(getType());
        this.setters = settersMethodForField(field);
    }

    public static Object getFieldValue(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static FieldInfo of(Enum<?> r5) {
        try {
            FieldInfo of = of(r5.getClass().getField(r5.name()));
            Preconditions.checkArgument(of != null, "enum constant missing @Value or @NullValue annotation: %s", r5);
            return of;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    public static void setFieldValue(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object fieldValue = getFieldValue(field, obj);
            if (obj2 == null) {
                if (fieldValue == null) {
                    return;
                }
            } else if (obj2.equals(fieldValue)) {
                return;
            }
            throw new IllegalArgumentException("expected final value <" + fieldValue + "> but was <" + obj2 + "> on " + field.getName() + " field in " + obj.getClass().getName());
        }
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        } catch (SecurityException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    private Method[] settersMethodForField(Field field) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder("set");
        String substring = field.getName().substring(0, 1);
        int length = substring.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (Ascii.a(substring.charAt(i))) {
                char[] charArray = substring.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (Ascii.a(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                substring = String.valueOf(charArray);
            } else {
                i++;
            }
        }
        sb.append(substring);
        String sb2 = sb.toString();
        if (field.getName().length() > 1) {
            StringBuilder t = a.t(sb2);
            t.append(field.getName().substring(1));
            sb2 = t.toString();
        }
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (method.getParameterTypes().length == 1) {
                if (method.getName().equals(sb2)) {
                    arrayList.add(0, method);
                } else if (Ascii.c(method.getName()).equals(Ascii.c(sb2))) {
                    arrayList.add(method);
                }
            }
        }
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    public <T extends Enum<T>> T enumValue() {
        return (T) Enum.valueOf(this.field.getDeclaringClass(), this.field.getName());
    }

    public ClassInfo getClassInfo() {
        return ClassInfo.of(this.field.getDeclaringClass());
    }

    public Field getField() {
        return this.field;
    }

    public Type getGenericType() {
        return this.field.getGenericType();
    }

    public String getName() {
        return this.name;
    }

    public Class<?> getType() {
        return this.field.getType();
    }

    public Object getValue(Object obj) {
        return getFieldValue(this.field, obj);
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.field.getModifiers());
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public void setValue(Object obj, Object obj2) {
        for (Method method : this.setters) {
            if (obj2 == null || method.getParameterTypes()[0].isAssignableFrom(obj2.getClass())) {
                try {
                    method.invoke(obj, obj2);
                    return;
                } catch (IllegalAccessException | InvocationTargetException unused) {
                    continue;
                }
            }
        }
        setFieldValue(this.field, obj, obj2);
    }

    public static FieldInfo of(Field field) {
        String str = null;
        if (field == null) {
            return null;
        }
        Map<Field, FieldInfo> map = CACHE;
        synchronized (map) {
            try {
                FieldInfo fieldInfo = map.get(field);
                boolean isEnumConstant = field.isEnumConstant();
                if (fieldInfo == null) {
                    if (!isEnumConstant) {
                        if (!Modifier.isStatic(field.getModifiers())) {
                        }
                    }
                    if (isEnumConstant) {
                        Value value = (Value) field.getAnnotation(Value.class);
                        if (value != null) {
                            str = value.value();
                        } else if (((NullValue) field.getAnnotation(NullValue.class)) == null) {
                            return null;
                        }
                    } else {
                        Key key = (Key) field.getAnnotation(Key.class);
                        if (key == null) {
                            return null;
                        }
                        str = key.value();
                        field.setAccessible(true);
                    }
                    if ("##default".equals(str)) {
                        str = field.getName();
                    }
                    fieldInfo = new FieldInfo(field, str);
                    map.put(field, fieldInfo);
                }
                return fieldInfo;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
