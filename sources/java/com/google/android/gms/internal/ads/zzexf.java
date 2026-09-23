package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzexf implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7047a;
    public final ViewGroup b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7048c;
    public final Set d;

    public zzexf(zzgyw zzgywVar, ViewGroup viewGroup, Context context, Set set) {
        this.f7047a = zzgywVar;
        this.d = set;
        this.b = viewGroup;
        this.f7048c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7047a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzexe
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzexf zzexfVar = zzexf.this;
                Set set = zzexfVar.d;
                ViewGroup viewGroup = zzexfVar.b;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L6)).booleanValue() && viewGroup != null && set.contains("banner")) {
                    return new zzexg(Boolean.valueOf(viewGroup.isHardwareAccelerated()));
                }
                Boolean bool = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M6)).booleanValue() && set.contains("native")) {
                    Context context = zzexfVar.f7048c;
                    if (context instanceof Activity) {
                        Activity activity = (Activity) context;
                        Window window = activity.getWindow();
                        if (window != null && (window.getAttributes().flags & 16777216) != 0) {
                            bool = Boolean.TRUE;
                        } else {
                            try {
                                boolean z = false;
                                if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                                    z = true;
                                }
                                bool = Boolean.valueOf(z);
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                        }
                        return new zzexg(bool);
                    }
                }
                return new zzexg(null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 22;
    }
}
