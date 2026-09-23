package org.apache.commons.lang3;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

/* loaded from: classes4.dex */
public class SerializationUtils {

    /* loaded from: classes4.dex */
    public static final class ClassLoaderAwareObjectInputStream extends ObjectInputStream {
        @Override // java.io.ObjectInputStream
        public final Class resolveClass(ObjectStreamClass objectStreamClass) {
            String name = objectStreamClass.getName();
            try {
                try {
                    return Class.forName(name, false, null);
                } catch (ClassNotFoundException e) {
                    Class cls = (Class) ClassUtils.f22343a.get(name);
                    if (cls != null) {
                        return cls;
                    }
                    throw e;
                }
            } catch (ClassNotFoundException unused) {
                return Class.forName(name, false, Thread.currentThread().getContextClassLoader());
            }
        }
    }
}
