package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;

/* loaded from: classes.dex */
public final class zzcap implements RewardItem {

    /* renamed from: a, reason: collision with root package name */
    public final zzcac f4997a;

    public zzcap(zzcac zzcacVar) {
        this.f4997a = zzcacVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzcac zzcacVar = this.f4997a;
        if (zzcacVar != null) {
            try {
                return zzcacVar.zzf();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not forward getAmount to RewardItem", e);
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzcac zzcacVar = this.f4997a;
        if (zzcacVar != null) {
            try {
                return zzcacVar.zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not forward getType to RewardItem", e);
            }
        }
        return null;
    }
}
