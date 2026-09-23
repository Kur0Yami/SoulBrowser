package com.google.firebase.components;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.support.v4.media.a;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.inject.Provider;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public final class ComponentDiscovery<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12609a;

    /* loaded from: classes3.dex */
    public static class MetadataRegistrarNameRetriever implements RegistrarNameRetriever<Context> {
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface RegistrarNameRetriever<T> {
    }

    public ComponentDiscovery(Context context, MetadataRegistrarNameRetriever metadataRegistrarNameRetriever) {
        this.f12609a = context;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.firebase.components.ComponentDiscovery$MetadataRegistrarNameRetriever, java.lang.Object] */
    public static ComponentDiscovery b(Context context) {
        return new ComponentDiscovery(context, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.List] */
    public final ArrayList a() {
        ?? arrayList;
        ArrayList arrayList2 = new ArrayList();
        Context context = this.f12609a;
        Bundle bundle = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) MlKitComponentDiscoveryService.class), Uuid.SIZE_BITS);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", MlKitComponentDiscoveryService.class + " has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
        }
        if (bundle == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
        }
        for (final String str2 : arrayList) {
            arrayList2.add(new Provider(str2) { // from class: com.google.firebase.components.ComponentDiscovery$$Lambda$1

                /* renamed from: a, reason: collision with root package name */
                public final String f12610a;

                {
                    this.f12610a = str2;
                }

                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    String str3 = this.f12610a;
                    try {
                        Class<?> cls = Class.forName(str3);
                        if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                            return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                        }
                        throw new RuntimeException("Class " + str3 + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                    } catch (ClassNotFoundException unused2) {
                        Log.w("ComponentDiscovery", "Class " + str3 + " is not an found.");
                        return null;
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(a.l("Could not instantiate ", str3, "."), e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException(a.l("Could not instantiate ", str3, "."), e2);
                    } catch (NoSuchMethodException e3) {
                        throw new RuntimeException(a.C("Could not instantiate ", str3), e3);
                    } catch (InvocationTargetException e4) {
                        throw new RuntimeException(a.C("Could not instantiate ", str3), e4);
                    }
                }
            });
        }
        return arrayList2;
    }
}
