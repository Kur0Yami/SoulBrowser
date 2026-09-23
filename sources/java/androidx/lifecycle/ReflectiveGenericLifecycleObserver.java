package androidx.lifecycle;

import androidx.lifecycle.ClassesInfoCache;
import androidx.lifecycle.Lifecycle;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {

    /* renamed from: c, reason: collision with root package name */
    public final LifecycleObserver f1211c;
    public final ClassesInfoCache.CallbackInfo f;

    public ReflectiveGenericLifecycleObserver(LifecycleObserver lifecycleObserver) {
        this.f1211c = lifecycleObserver;
        ClassesInfoCache classesInfoCache = ClassesInfoCache.f1190c;
        Class<?> cls = lifecycleObserver.getClass();
        ClassesInfoCache.CallbackInfo callbackInfo = (ClassesInfoCache.CallbackInfo) classesInfoCache.f1191a.get(cls);
        this.f = callbackInfo == null ? classesInfoCache.a(cls, null) : callbackInfo;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        HashMap hashMap = this.f.f1192a;
        List list = (List) hashMap.get(event);
        LifecycleObserver lifecycleObserver = this.f1211c;
        ClassesInfoCache.CallbackInfo.a(list, lifecycleOwner, event, lifecycleObserver);
        ClassesInfoCache.CallbackInfo.a((List) hashMap.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, lifecycleObserver);
    }
}
