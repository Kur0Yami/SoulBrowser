package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
/* loaded from: classes.dex */
final class ClassesInfoCache {

    /* renamed from: c, reason: collision with root package name */
    public static final ClassesInfoCache f1190c = new ClassesInfoCache();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1191a = new HashMap();
    public final HashMap b = new HashMap();

    @Deprecated
    /* loaded from: classes.dex */
    public static class CallbackInfo {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f1192a = new HashMap();
        public final HashMap b;

        public CallbackInfo(HashMap hashMap) {
            this.b = hashMap;
            for (Map.Entry entry : hashMap.entrySet()) {
                Lifecycle.Event event = (Lifecycle.Event) entry.getValue();
                List list = (List) this.f1192a.get(event);
                if (list == null) {
                    list = new ArrayList();
                    this.f1192a.put(event, list);
                }
                list.add((MethodReference) entry.getKey());
            }
        }

        public static void a(List list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, LifecycleObserver lifecycleObserver) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    MethodReference methodReference = (MethodReference) list.get(size);
                    Method method = methodReference.b;
                    try {
                        int i = methodReference.f1193a;
                        if (i != 0) {
                            if (i != 1) {
                                if (i == 2) {
                                    method.invoke(lifecycleObserver, lifecycleOwner, event);
                                }
                            } else {
                                method.invoke(lifecycleObserver, lifecycleOwner);
                            }
                        } else {
                            method.invoke(lifecycleObserver, null);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to call observer method", e2.getCause());
                    }
                }
            }
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static final class MethodReference {

        /* renamed from: a, reason: collision with root package name */
        public final int f1193a;
        public final Method b;

        public MethodReference(int i, Method method) {
            this.f1193a = i;
            this.b = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodReference)) {
                return false;
            }
            MethodReference methodReference = (MethodReference) obj;
            if (this.f1193a == methodReference.f1193a && this.b.getName().equals(methodReference.b.getName())) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.b.getName().hashCode() + (this.f1193a * 31);
        }
    }

    public static void b(HashMap hashMap, MethodReference methodReference, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = (Lifecycle.Event) hashMap.get(methodReference);
        if (event2 != null && event != event2) {
            throw new IllegalArgumentException("Method " + methodReference.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
        }
        if (event2 == null) {
            hashMap.put(methodReference, event);
        }
    }

    public final CallbackInfo a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.f1191a;
        if (superclass != null) {
            CallbackInfo callbackInfo = (CallbackInfo) hashMap2.get(superclass);
            if (callbackInfo == null) {
                callbackInfo = a(superclass, null);
            }
            hashMap.putAll(callbackInfo.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            CallbackInfo callbackInfo2 = (CallbackInfo) hashMap2.get(cls2);
            if (callbackInfo2 == null) {
                callbackInfo2 = a(cls2, null);
            }
            for (Map.Entry entry : callbackInfo2.b.entrySet()) {
                b(hashMap, (MethodReference) entry.getKey(), (Lifecycle.Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length > 0) {
                    if (LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        i = 1;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                } else {
                    i = 0;
                }
                Lifecycle.Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        if (value == Lifecycle.Event.ON_ANY) {
                            i = 2;
                        } else {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    b(hashMap, new MethodReference(i, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        CallbackInfo callbackInfo3 = new CallbackInfo(hashMap);
        hashMap2.put(cls, callbackInfo3);
        this.b.put(cls, Boolean.valueOf(z));
        return callbackInfo3;
    }
}
