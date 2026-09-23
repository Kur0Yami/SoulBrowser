package androidx.work;

import androidx.work.Data;
import j$.util.DesugarCollections;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ArrayCreatingInputMerger extends InputMerger {
    @Override // androidx.work.InputMerger
    public final Data a(ArrayList arrayList) {
        Object newInstance;
        Object newInstance2;
        Data.Builder builder = new Data.Builder();
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            for (Map.Entry entry : DesugarCollections.unmodifiableMap(((Data) obj).f1834a).entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj2 = hashMap.get(str);
                if (obj2 == null) {
                    if (!cls.isArray()) {
                        newInstance2 = Array.newInstance(value.getClass(), 1);
                        Array.set(newInstance2, 0, value);
                        value = newInstance2;
                        hashMap.put(str, value);
                    } else {
                        hashMap.put(str, value);
                    }
                } else {
                    Class<?> cls2 = obj2.getClass();
                    if (cls2.equals(cls)) {
                        if (cls2.isArray()) {
                            int length = Array.getLength(obj2);
                            int length2 = Array.getLength(value);
                            Object newInstance3 = Array.newInstance(obj2.getClass().getComponentType(), length + length2);
                            System.arraycopy(obj2, 0, newInstance3, 0, length);
                            System.arraycopy(value, 0, newInstance3, length, length2);
                            value = newInstance3;
                        } else {
                            newInstance2 = Array.newInstance(obj2.getClass(), 2);
                            Array.set(newInstance2, 0, obj2);
                            Array.set(newInstance2, 1, value);
                            value = newInstance2;
                        }
                    } else {
                        if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                            int length3 = Array.getLength(obj2);
                            newInstance = Array.newInstance(value.getClass(), length3 + 1);
                            System.arraycopy(obj2, 0, newInstance, 0, length3);
                            Array.set(newInstance, length3, value);
                        } else if (cls.isArray() && cls.getComponentType().equals(cls2)) {
                            int length4 = Array.getLength(value);
                            newInstance = Array.newInstance(obj2.getClass(), length4 + 1);
                            System.arraycopy(value, 0, newInstance, 0, length4);
                            Array.set(newInstance, length4, obj2);
                        } else {
                            throw new IllegalArgumentException();
                        }
                        value = newInstance;
                    }
                    hashMap.put(str, value);
                }
            }
        }
        builder.b(hashMap);
        return builder.a();
    }
}
