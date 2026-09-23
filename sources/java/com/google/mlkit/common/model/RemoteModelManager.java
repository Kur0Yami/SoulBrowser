package com.google.mlkit.common.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.inject.Provider;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public class RemoteModelManager {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12763a = new HashMap();

    @KeepForSdk
    /* loaded from: classes3.dex */
    public static class RemoteModelManagerRegistration {

        /* renamed from: a, reason: collision with root package name */
        public final Provider f12764a;

        public RemoteModelManagerRegistration(Provider provider) {
            this.f12764a = provider;
        }
    }

    public RemoteModelManager(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            RemoteModelManagerRegistration remoteModelManagerRegistration = (RemoteModelManagerRegistration) it.next();
            HashMap hashMap = this.f12763a;
            remoteModelManagerRegistration.getClass();
            hashMap.put(CustomRemoteModel.class, remoteModelManagerRegistration.f12764a);
        }
    }
}
