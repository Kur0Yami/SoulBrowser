package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zal {
    private int zad;
    private final ArrayMap zab = new SimpleArrayMap(0);
    private final TaskCompletionSource zac = new TaskCompletionSource();
    private boolean zae = false;
    private final ArrayMap zaa = new SimpleArrayMap(0);

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public zal(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.zaa.put(((HasApiKey) it.next()).getApiKey(), null);
        }
        this.zad = this.zaa.keySet().size();
    }

    public final Set zaa() {
        return this.zaa.keySet();
    }

    public final Task zab() {
        return this.zac.f11605a;
    }

    public final void zac(ApiKey apiKey, ConnectionResult connectionResult, @Nullable String str) {
        ArrayMap arrayMap = this.zaa;
        arrayMap.put(apiKey, connectionResult);
        ArrayMap arrayMap2 = this.zab;
        arrayMap2.put(apiKey, str);
        this.zad--;
        if (!connectionResult.isSuccess()) {
            this.zae = true;
        }
        if (this.zad == 0) {
            if (this.zae) {
                this.zac.a(new AvailabilityException(arrayMap));
            } else {
                this.zac.b(arrayMap2);
            }
        }
    }
}
