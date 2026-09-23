package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zax implements zabv {
    private final Context zaa;
    private final zaaz zab;
    private final Looper zac;
    private final zabd zad;
    private final zabd zae;
    private final Map zaf;

    @Nullable
    private final Api.Client zah;

    @Nullable
    private Bundle zai;
    private final Lock zam;
    private final Set zag = Collections.newSetFromMap(new WeakHashMap());

    @Nullable
    private ConnectionResult zaj = null;

    @Nullable
    private ConnectionResult zak = null;
    private boolean zal = false;
    private int zan = 0;

    /* JADX WARN: Type inference failed for: r15v1, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    private zax(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, Map map2, ClientSettings clientSettings, Api.AbstractClientBuilder abstractClientBuilder, @Nullable Api.Client client, ArrayList arrayList, ArrayList arrayList2, Map map3, Map map4) {
        byte[] bArr = null;
        this.zaa = context;
        this.zab = zaazVar;
        this.zam = lock;
        this.zac = looper;
        this.zah = client;
        this.zad = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zav(this, bArr));
        this.zae = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zaw(this, bArr));
        ?? simpleArrayMap = new SimpleArrayMap(0);
        Iterator it = map2.keySet().iterator();
        while (it.hasNext()) {
            simpleArrayMap.put((Api.AnyClientKey) it.next(), this.zad);
        }
        Iterator it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            simpleArrayMap.put((Api.AnyClientKey) it2.next(), this.zae);
        }
        this.zaf = DesugarCollections.unmodifiableMap(simpleArrayMap);
    }

    private final void zaA() {
        Set set = this.zag;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((SignInConnectionListener) it.next()).onComplete();
        }
        set.clear();
    }

    private final boolean zaB() {
        ConnectionResult connectionResult = this.zak;
        if (connectionResult != null && connectionResult.getErrorCode() == 4) {
            return true;
        }
        return false;
    }

    private final boolean zaC(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zabd zabdVar = (zabd) this.zaf.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabdVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zabdVar.equals(this.zae);
    }

    @Nullable
    private final PendingIntent zaD() {
        Api.Client client = this.zah;
        if (client == null) {
            return null;
        }
        return PendingIntent.getActivity(this.zaa, System.identityHashCode(this.zab), client.getSignInIntent(), com.google.android.gms.internal.base.zak.f9599a | 134217728);
    }

    private static boolean zaE(@Nullable ConnectionResult connectionResult) {
        if (connectionResult != null && connectionResult.isSuccess()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    public static zax zaa(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map map, ClientSettings clientSettings, Map map2, Api.AbstractClientBuilder abstractClientBuilder, ArrayList arrayList) {
        ?? simpleArrayMap = new SimpleArrayMap(0);
        ?? simpleArrayMap2 = new SimpleArrayMap(0);
        Api.Client client = null;
        for (Map.Entry entry : map.entrySet()) {
            Api.Client client2 = (Api.Client) entry.getValue();
            if (true == client2.providesSignIn()) {
                client = client2;
            }
            if (client2.requiresSignIn()) {
                simpleArrayMap.put((Api.AnyClientKey) entry.getKey(), client2);
            } else {
                simpleArrayMap2.put((Api.AnyClientKey) entry.getKey(), client2);
            }
        }
        Preconditions.checkState(!simpleArrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ?? simpleArrayMap3 = new SimpleArrayMap(0);
        ?? simpleArrayMap4 = new SimpleArrayMap(0);
        for (Api api : map2.keySet()) {
            Api.AnyClientKey zac = api.zac();
            if (simpleArrayMap.containsKey(zac)) {
                simpleArrayMap3.put(api, (Boolean) map2.get(api));
            } else if (simpleArrayMap2.containsKey(zac)) {
                simpleArrayMap4.put(api, (Boolean) map2.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zas zasVar = (zas) arrayList.get(i);
            Api api2 = zasVar.zaa;
            if (simpleArrayMap3.containsKey(api2)) {
                arrayList2.add(zasVar);
            } else if (simpleArrayMap4.containsKey(api2)) {
                arrayList3.add(zasVar);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new zax(context, zaazVar, lock, looper, googleApiAvailabilityLight, simpleArrayMap, simpleArrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, simpleArrayMap3, simpleArrayMap4);
    }

    private final void zaz(ConnectionResult connectionResult) {
        int i = this.zan;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.zan = 0;
            }
            this.zab.zab(connectionResult);
        }
        zaA();
        this.zan = 0;
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final BaseImplementation.ApiMethodImpl zab(@NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        if (zaC(apiMethodImpl)) {
            if (zaB()) {
                apiMethodImpl.setFailedResult(new Status(4, (String) null, zaD()));
                return apiMethodImpl;
            }
            this.zae.zab(apiMethodImpl);
            return apiMethodImpl;
        }
        this.zad.zab(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final BaseImplementation.ApiMethodImpl zac(@NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        if (zaC(apiMethodImpl)) {
            if (zaB()) {
                apiMethodImpl.setFailedResult(new Status(4, (String) null, zaD()));
                return apiMethodImpl;
            }
            return this.zae.zac(apiMethodImpl);
        }
        return this.zad.zac(apiMethodImpl);
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    @Nullable
    public final ConnectionResult zad(@NonNull Api api) {
        Object obj = this.zaf.get(api.zac());
        zabd zabdVar = this.zae;
        if (Objects.equal(obj, zabdVar)) {
            if (zaB()) {
                return new ConnectionResult(4, zaD());
            }
            return zabdVar.zad(api);
        }
        return this.zad.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final void zae() {
        this.zan = 2;
        this.zal = false;
        this.zak = null;
        this.zaj = null;
        this.zad.zae();
        this.zae.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final ConnectionResult zaf() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final ConnectionResult zag(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final void zah() {
        this.zak = null;
        this.zaj = null;
        this.zan = 0;
        this.zad.zah();
        this.zae.zah();
        zaA();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r3.zan == 1) goto L11;
     */
    @Override // com.google.android.gms.common.api.internal.zabv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zai() {
        /*
            r3 = this;
            java.util.concurrent.locks.Lock r0 = r3.zam
            r0.lock()
            com.google.android.gms.common.api.internal.zabd r0 = r3.zad     // Catch: java.lang.Throwable -> L23
            boolean r0 = r0.zai()     // Catch: java.lang.Throwable -> L23
            r1 = 0
            if (r0 == 0) goto L25
            com.google.android.gms.common.api.internal.zabd r0 = r3.zae     // Catch: java.lang.Throwable -> L23
            boolean r0 = r0.zai()     // Catch: java.lang.Throwable -> L23
            r2 = 1
            if (r0 != 0) goto L21
            boolean r0 = r3.zaB()     // Catch: java.lang.Throwable -> L23
            if (r0 != 0) goto L21
            int r0 = r3.zan     // Catch: java.lang.Throwable -> L23
            if (r0 != r2) goto L25
        L21:
            r1 = r2
            goto L25
        L23:
            r0 = move-exception
            goto L2b
        L25:
            java.util.concurrent.locks.Lock r0 = r3.zam
            r0.unlock()
            return r1
        L2b:
            java.util.concurrent.locks.Lock r1 = r3.zam
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zax.zai():boolean");
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final boolean zaj() {
        boolean z;
        this.zam.lock();
        try {
            if (this.zan == 2) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final boolean zak(SignInConnectionListener signInConnectionListener) {
        this.zam.lock();
        try {
            boolean z = false;
            if (!zaj()) {
                if (zai()) {
                }
                this.zam.unlock();
                return z;
            }
            zabd zabdVar = this.zae;
            if (!zabdVar.zai()) {
                this.zag.add(signInConnectionListener);
                z = true;
                if (this.zan == 0) {
                    this.zan = 1;
                }
                this.zak = null;
                zabdVar.zae();
            }
            this.zam.unlock();
            return z;
        } catch (Throwable th) {
            this.zam.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final void zal() {
        this.zad.zal();
        this.zae.zal();
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final void zam() {
        this.zam.lock();
        try {
            boolean zaj = zaj();
            this.zae.zah();
            this.zak = new ConnectionResult(4);
            if (zaj) {
                new com.google.android.gms.internal.base.zao(this.zac).post(new zau(this));
            } else {
                zaA();
            }
            this.zam.unlock();
        } catch (Throwable th) {
            this.zam.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabv
    public final void zan(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zae.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zad.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    public final /* synthetic */ void zao() {
        ConnectionResult connectionResult;
        if (zaE(this.zaj)) {
            if (!zaE(this.zak) && !zaB()) {
                ConnectionResult connectionResult2 = this.zak;
                if (connectionResult2 != null) {
                    if (this.zan == 1) {
                        zaA();
                        return;
                    } else {
                        zaz(connectionResult2);
                        this.zad.zah();
                        return;
                    }
                }
                return;
            }
            int i = this.zan;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    this.zan = 0;
                    return;
                }
                ((zaaz) Preconditions.checkNotNull(this.zab)).zaa(this.zai);
            }
            zaA();
            this.zan = 0;
            return;
        }
        if (this.zaj != null && zaE(this.zak)) {
            this.zae.zah();
            zaz((ConnectionResult) Preconditions.checkNotNull(this.zaj));
            return;
        }
        ConnectionResult connectionResult3 = this.zaj;
        if (connectionResult3 != null && (connectionResult = this.zak) != null) {
            if (this.zae.zaf < this.zad.zaf) {
                connectionResult3 = connectionResult;
            }
            zaz(connectionResult3);
        }
    }

    public final /* synthetic */ void zap(int i, boolean z) {
        this.zab.zac(i, z);
        this.zak = null;
        this.zaj = null;
    }

    public final /* synthetic */ void zaq(Bundle bundle) {
        Bundle bundle2 = this.zai;
        if (bundle2 == null) {
            this.zai = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    public final /* synthetic */ zabd zar() {
        return this.zad;
    }

    public final /* synthetic */ zabd zas() {
        return this.zae;
    }

    public final /* synthetic */ void zat(ConnectionResult connectionResult) {
        this.zaj = connectionResult;
    }

    public final /* synthetic */ ConnectionResult zau() {
        return this.zak;
    }

    public final /* synthetic */ void zav(ConnectionResult connectionResult) {
        this.zak = connectionResult;
    }

    public final /* synthetic */ boolean zaw() {
        return this.zal;
    }

    public final /* synthetic */ void zax(boolean z) {
        this.zal = z;
    }

    public final /* synthetic */ Lock zay() {
        return this.zam;
    }
}
