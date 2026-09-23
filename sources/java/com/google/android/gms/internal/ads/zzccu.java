package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class zzccu {

    /* renamed from: a, reason: collision with root package name */
    public final Clock f5043a;
    public final zzcdf b;
    public final String e;
    public final String f;
    public final Object d = new Object();
    public long g = -1;
    public long h = -1;
    public long i = 0;
    public long j = -1;
    public long k = -1;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedList f5044c = new LinkedList();

    public zzccu(Clock clock, zzcdf zzcdfVar, String str, String str2) {
        this.f5043a = clock;
        this.b = zzcdfVar;
        this.e = str;
        this.f = str2;
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this.d) {
            try {
                bundle = new Bundle();
                bundle.putString("seq_num", this.e);
                bundle.putString("slotid", this.f);
                bundle.putBoolean("ismediation", false);
                bundle.putLong("treq", this.j);
                bundle.putLong("tresponse", this.k);
                bundle.putLong("timp", this.g);
                bundle.putLong("tload", this.h);
                bundle.putLong("pcc", this.i);
                bundle.putLong("tfetch", -1L);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator it = this.f5044c.iterator();
                while (it.hasNext()) {
                    zzcct zzcctVar = (zzcct) it.next();
                    zzcctVar.getClass();
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("topen", zzcctVar.f5041a);
                    bundle2.putLong("tclose", zzcctVar.b);
                    arrayList.add(bundle2);
                }
                bundle.putParcelableArrayList("tclick", arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }
}
