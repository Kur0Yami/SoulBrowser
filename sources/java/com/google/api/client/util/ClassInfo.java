package com.google.api.client.util;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
public final class ClassInfo {
    private static final ConcurrentMap<Class<?>, ClassInfo> CACHE = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, ClassInfo> CACHE_IGNORE_CASE = new ConcurrentHashMap();
    private final Class<?> clazz;
    private final boolean ignoreCase;
    private final IdentityHashMap<String, FieldInfo> nameToFieldInfoMap = new IdentityHashMap<>();
    final List<String> names;

    private ClassInfo(Class<?> cls, boolean z) {
        boolean z2;
        List<String> unmodifiableList;
        boolean z3;
        String str;
        Field field;
        this.clazz = cls;
        this.ignoreCase = z;
        if (z && cls.isEnum()) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.checkArgument(z2, "cannot ignore case on an enum: " + cls);
        TreeSet treeSet = new TreeSet(new Comparator<String>() { // from class: com.google.api.client.util.ClassInfo.1
            @Override // java.util.Comparator
            public int compare(String str2, String str3) {
                if (Objects.equal(str2, str3)) {
                    return 0;
                }
                if (str2 == null) {
                    return -1;
                }
                if (str3 == null) {
                    return 1;
                }
                return str2.compareTo(str3);
            }
        });
        for (Field field2 : cls.getDeclaredFields()) {
            FieldInfo of = FieldInfo.of(field2);
            if (of != null) {
                String name = of.getName();
                name = z ? name.toLowerCase(Locale.US).intern() : name;
                FieldInfo fieldInfo = this.nameToFieldInfoMap.get(name);
                if (fieldInfo == null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z) {
                    str = "case-insensitive ";
                } else {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (fieldInfo == null) {
                    field = null;
                } else {
                    field = fieldInfo.getField();
                }
                Preconditions.checkArgument(z3, "two fields have the same %sname <%s>: %s and %s", str, name, field2, field);
                this.nameToFieldInfoMap.put(name, of);
                treeSet.add(name);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            ClassInfo of2 = of(superclass, z);
            treeSet.addAll(of2.names);
            for (Map.Entry<String, FieldInfo> entry : of2.nameToFieldInfoMap.entrySet()) {
                String key = entry.getKey();
                if (!this.nameToFieldInfoMap.containsKey(key)) {
                    this.nameToFieldInfoMap.put(key, entry.getValue());
                }
            }
        }
        if (treeSet.isEmpty()) {
            unmodifiableList = Collections.EMPTY_LIST;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(new ArrayList(treeSet));
        }
        this.names = unmodifiableList;
    }

    public static ClassInfo of(Class<?> cls) {
        return of(cls, false);
    }

    public Field getField(String str) {
        FieldInfo fieldInfo = getFieldInfo(str);
        if (fieldInfo == null) {
            return null;
        }
        return fieldInfo.getField();
    }

    public FieldInfo getFieldInfo(String str) {
        if (str != null) {
            if (this.ignoreCase) {
                str = str.toLowerCase(Locale.US);
            }
            str = str.intern();
        }
        return this.nameToFieldInfoMap.get(str);
    }

    public Collection<FieldInfo> getFieldInfos() {
        return DesugarCollections.unmodifiableCollection(this.nameToFieldInfoMap.values());
    }

    public final boolean getIgnoreCase() {
        return this.ignoreCase;
    }

    public Collection<String> getNames() {
        return this.names;
    }

    public Class<?> getUnderlyingClass() {
        return this.clazz;
    }

    public boolean isEnum() {
        return this.clazz.isEnum();
    }

    public static ClassInfo of(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        ConcurrentMap<Class<?>, ClassInfo> concurrentMap = z ? CACHE_IGNORE_CASE : CACHE;
        ClassInfo classInfo = concurrentMap.get(cls);
        if (classInfo != null) {
            return classInfo;
        }
        ClassInfo classInfo2 = new ClassInfo(cls, z);
        ClassInfo putIfAbsent = concurrentMap.putIfAbsent(cls, classInfo2);
        return putIfAbsent == null ? classInfo2 : putIfAbsent;
    }
}
