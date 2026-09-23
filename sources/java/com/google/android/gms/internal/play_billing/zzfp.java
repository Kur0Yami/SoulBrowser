package com.google.android.gms.internal.play_billing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzfp {
    public static zzfh b() {
        ClassLoader classLoader = zzfp.class.getClassLoader();
        if (zzfh.class.equals(zzfh.class)) {
            try {
                try {
                    return (zzfh) zzfh.class.cast(((zzfp) Class.forName("com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader", true, classLoader).getConstructor(null).newInstance(null)).a());
                } catch (ReflectiveOperationException e) {
                    throw new IllegalStateException(e);
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        Iterator it = ServiceLoader.load(zzfp.class, classLoader).iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            try {
                arrayList.add((zzfh) zzfh.class.cast(((zzfp) it.next()).a()));
            } catch (ServiceConfigurationError e2) {
                Logger.getLogger(zzfc.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat("zzfh"), (Throwable) e2);
            }
        }
        if (arrayList.size() == 1) {
            return (zzfh) arrayList.get(0);
        }
        if (arrayList.size() == 0) {
            return null;
        }
        try {
            return (zzfh) zzfh.class.getMethod("combine", Collection.class).invoke(null, arrayList);
        } catch (ReflectiveOperationException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public abstract zzfh a();
}
