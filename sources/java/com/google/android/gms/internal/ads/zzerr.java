package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzerr implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6854a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfik f6855c;
    public final ViewGroup d;

    public zzerr(zzgyw zzgywVar, Context context, zzfik zzfikVar, ViewGroup viewGroup) {
        this.f6854a = zzgywVar;
        this.b = context;
        this.f6855c = zzfikVar;
        this.d = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        zzbgk.a(this.b);
        return this.f6854a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzerq
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                int i;
                ArrayList arrayList = new ArrayList();
                zzerr zzerrVar = zzerr.this;
                View view = zzerrVar.d;
                while (view != null) {
                    Object parent = view.getParent();
                    if (parent == null) {
                        break;
                    }
                    if (parent instanceof ViewGroup) {
                        i = ((ViewGroup) parent).indexOfChild(view);
                    } else {
                        i = -1;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("type", parent.getClass().getName());
                    bundle.putInt("index_of_child", i);
                    arrayList.add(bundle);
                    if (!(parent instanceof View)) {
                        break;
                    }
                    view = (View) parent;
                }
                return new zzers(zzerrVar.b, zzerrVar.f6855c.f, arrayList);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 3;
    }
}
