package com.google.api.client.util;

import android.support.v4.media.a;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public class Data {
    public static final BigDecimal NULL_BIG_DECIMAL;
    public static final BigInteger NULL_BIG_INTEGER;
    public static final Boolean NULL_BOOLEAN;
    public static final Byte NULL_BYTE;
    private static final ConcurrentHashMap<Class<?>, Object> NULL_CACHE;
    public static final Character NULL_CHARACTER;
    public static final DateTime NULL_DATE_TIME;
    public static final Double NULL_DOUBLE;
    public static final Float NULL_FLOAT;
    public static final Integer NULL_INTEGER;
    public static final Long NULL_LONG;
    public static final Short NULL_SHORT;
    public static final String NULL_STRING;

    static {
        Boolean bool = new Boolean(true);
        NULL_BOOLEAN = bool;
        String str = new String();
        NULL_STRING = str;
        Character ch = new Character((char) 0);
        NULL_CHARACTER = ch;
        Byte b = new Byte((byte) 0);
        NULL_BYTE = b;
        Short sh = new Short((short) 0);
        NULL_SHORT = sh;
        Integer num = new Integer(0);
        NULL_INTEGER = num;
        Float f = new Float(0.0f);
        NULL_FLOAT = f;
        Long l = new Long(0L);
        NULL_LONG = l;
        Double d = new Double(0.0d);
        NULL_DOUBLE = d;
        BigInteger bigInteger = new BigInteger("0");
        NULL_BIG_INTEGER = bigInteger;
        BigDecimal bigDecimal = new BigDecimal("0");
        NULL_BIG_DECIMAL = bigDecimal;
        DateTime dateTime = new DateTime(0L);
        NULL_DATE_TIME = dateTime;
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        NULL_CACHE = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, bool);
        concurrentHashMap.put(String.class, str);
        concurrentHashMap.put(Character.class, ch);
        concurrentHashMap.put(Byte.class, b);
        concurrentHashMap.put(Short.class, sh);
        concurrentHashMap.put(Integer.class, num);
        concurrentHashMap.put(Float.class, f);
        concurrentHashMap.put(Long.class, l);
        concurrentHashMap.put(Double.class, d);
        concurrentHashMap.put(BigInteger.class, bigInteger);
        concurrentHashMap.put(BigDecimal.class, bigDecimal);
        concurrentHashMap.put(DateTime.class, dateTime);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T clone(T t) {
        T t2;
        if (t != 0 && !isPrimitive(t.getClass())) {
            if (t instanceof GenericData) {
                return (T) ((GenericData) t).clone();
            }
            Class<?> cls = t.getClass();
            if (cls.isArray()) {
                t2 = (T) Array.newInstance(cls.getComponentType(), Array.getLength(t));
            } else if (t instanceof ArrayMap) {
                t2 = (T) ((ArrayMap) t).clone();
            } else {
                if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
                    Object[] array = ((List) t).toArray();
                    deepCopy(array, array);
                    return (T) Arrays.asList(array);
                }
                t2 = (T) Types.newInstance(cls);
            }
            deepCopy(t, t2);
            return t2;
        }
        return t;
    }

    private static Object createNullInstance(Class<?> cls) {
        int i = 0;
        if (!cls.isArray()) {
            if (cls.isEnum()) {
                FieldInfo fieldInfo = ClassInfo.of(cls).getFieldInfo(null);
                Preconditions.checkNotNull(fieldInfo, "enum missing constant with @NullValue annotation: %s", cls);
                return fieldInfo.enumValue();
            }
            return Types.newInstance(cls);
        }
        do {
            cls = cls.getComponentType();
            i++;
        } while (cls.isArray());
        return Array.newInstance(cls, new int[i]);
    }

    public static void deepCopy(Object obj, Object obj2) {
        boolean z;
        ClassInfo of;
        Class<?> cls = obj.getClass();
        int i = 0;
        boolean z2 = true;
        if (cls == obj2.getClass()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        if (cls.isArray()) {
            if (Array.getLength(obj) != Array.getLength(obj2)) {
                z2 = false;
            }
            Preconditions.checkArgument(z2);
            Iterator it = Types.iterableOf(obj).iterator();
            while (it.hasNext()) {
                Array.set(obj2, i, clone(it.next()));
                i++;
            }
            return;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            Collection collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                collection2.add(clone(it2.next()));
            }
            return;
        }
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        if (!isAssignableFrom && Map.class.isAssignableFrom(cls)) {
            if (ArrayMap.class.isAssignableFrom(cls)) {
                ArrayMap arrayMap = (ArrayMap) obj2;
                ArrayMap arrayMap2 = (ArrayMap) obj;
                int size = arrayMap2.size();
                while (i < size) {
                    arrayMap.set(i, clone(arrayMap2.getValue(i)));
                    i++;
                }
                return;
            }
            Map map = (Map) obj2;
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                map.put(entry.getKey(), clone(entry.getValue()));
            }
            return;
        }
        if (isAssignableFrom) {
            of = ((GenericData) obj).classInfo;
        } else {
            of = ClassInfo.of(cls);
        }
        Iterator<String> it3 = of.names.iterator();
        while (it3.hasNext()) {
            FieldInfo fieldInfo = of.getFieldInfo(it3.next());
            if (!fieldInfo.isFinal() && (!isAssignableFrom || !fieldInfo.isPrimitive())) {
                Object value = fieldInfo.getValue(obj);
                if (value != null) {
                    fieldInfo.setValue(obj2, clone(value));
                }
            }
        }
    }

    public static boolean isNull(Object obj) {
        if (obj != null && obj == NULL_CACHE.get(obj.getClass())) {
            return true;
        }
        return false;
    }

    public static boolean isPrimitive(Type type) {
        if (type instanceof WildcardType) {
            type = Types.getBound((WildcardType) type);
        }
        if (!(type instanceof Class)) {
            return false;
        }
        Class cls = (Class) type;
        if (!cls.isPrimitive() && cls != Character.class && cls != String.class && cls != Integer.class && cls != Long.class && cls != Short.class && cls != Byte.class && cls != Float.class && cls != Double.class && cls != BigInteger.class && cls != BigDecimal.class && cls != DateTime.class && cls != Boolean.class) {
            return false;
        }
        return true;
    }

    public static boolean isValueOfPrimitiveType(Object obj) {
        if (obj != null && !isPrimitive(obj.getClass())) {
            return false;
        }
        return true;
    }

    public static Map<String, Object> mapOf(Object obj) {
        if (obj != null && !isNull(obj)) {
            if (obj instanceof Map) {
                return (Map) obj;
            }
            return new DataMap(obj, false);
        }
        return Collections.EMPTY_MAP;
    }

    public static Collection<Object> newCollectionInstance(Type type) {
        Class cls;
        if (type instanceof WildcardType) {
            type = Types.getBound((WildcardType) type);
        }
        if (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getRawType();
        }
        if (type instanceof Class) {
            cls = (Class) type;
        } else {
            cls = null;
        }
        if (type != null && !(type instanceof GenericArrayType) && (cls == null || (!cls.isArray() && !cls.isAssignableFrom(ArrayList.class)))) {
            if (cls != null) {
                if (cls.isAssignableFrom(HashSet.class)) {
                    return new HashSet();
                }
                if (cls.isAssignableFrom(TreeSet.class)) {
                    return new TreeSet();
                }
                return (Collection) Types.newInstance(cls);
            }
            throw new IllegalArgumentException("unable to create new instance of type: " + type);
        }
        return new ArrayList();
    }

    public static Map<String, Object> newMapInstance(Class<?> cls) {
        if (cls != null && !cls.isAssignableFrom(ArrayMap.class)) {
            if (cls.isAssignableFrom(TreeMap.class)) {
                return new TreeMap();
            }
            return (Map) Types.newInstance(cls);
        }
        return ArrayMap.create();
    }

    public static <T> T nullOf(Class<T> cls) {
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = NULL_CACHE;
        T t = (T) concurrentHashMap.get(cls);
        if (t == null) {
            T t2 = (T) createNullInstance(cls);
            T t3 = (T) concurrentHashMap.putIfAbsent(cls, t2);
            if (t3 == null) {
                return t2;
            }
            return t3;
        }
        return t;
    }

    public static Object parsePrimitiveValue(Type type, String str) {
        Class cls;
        if (type instanceof Class) {
            cls = (Class) type;
        } else {
            cls = null;
        }
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str != null && cls != null && !cls.isAssignableFrom(String.class)) {
                if (cls != Character.class && cls != Character.TYPE) {
                    if (cls != Boolean.class && cls != Boolean.TYPE) {
                        if (cls != Byte.class && cls != Byte.TYPE) {
                            if (cls != Short.class && cls != Short.TYPE) {
                                if (cls != Integer.class && cls != Integer.TYPE) {
                                    if (cls != Long.class && cls != Long.TYPE) {
                                        if (cls != Float.class && cls != Float.TYPE) {
                                            if (cls != Double.class && cls != Double.TYPE) {
                                                if (cls == DateTime.class) {
                                                    return DateTime.parseRfc3339(str);
                                                }
                                                if (cls == BigInteger.class) {
                                                    return new BigInteger(str);
                                                }
                                                if (cls == BigDecimal.class) {
                                                    return new BigDecimal(str);
                                                }
                                                if (cls.isEnum()) {
                                                    if (ClassInfo.of(cls).names.contains(str)) {
                                                        return ClassInfo.of(cls).getFieldInfo(str).enumValue();
                                                    }
                                                    throw new IllegalArgumentException(a.l("given enum name ", str, " not part of enumeration"));
                                                }
                                            } else {
                                                return Double.valueOf(str);
                                            }
                                        } else {
                                            return Float.valueOf(str);
                                        }
                                    } else {
                                        return Long.valueOf(str);
                                    }
                                } else {
                                    return Integer.valueOf(str);
                                }
                            } else {
                                return Short.valueOf(str);
                            }
                        } else {
                            return Byte.valueOf(str);
                        }
                    } else {
                        return Boolean.valueOf(str);
                    }
                } else {
                    if (str.length() == 1) {
                        return Character.valueOf(str.charAt(0));
                    }
                    throw new IllegalArgumentException("expected type Character/char but got " + cls);
                }
            } else {
                return str;
            }
        }
        throw new IllegalArgumentException("expected primitive class, but got: " + type);
    }

    public static Type resolveWildcardTypeOrTypeVariable(List<Type> list, Type type) {
        if (type instanceof WildcardType) {
            type = Types.getBound((WildcardType) type);
        }
        while (type instanceof TypeVariable) {
            Type resolveTypeVariable = Types.resolveTypeVariable(list, (TypeVariable) type);
            if (resolveTypeVariable != null) {
                type = resolveTypeVariable;
            }
            if (type instanceof TypeVariable) {
                type = ((TypeVariable) type).getBounds()[0];
            }
        }
        return type;
    }
}
