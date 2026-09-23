package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzbb {
    public static final zzbb g = new zzbb();
    public static final /* synthetic */ int zza = 0;

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.client.zzf f3005a;
    public final zzaz b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3006c;
    public final VersionInfoParcel d;
    public final Random e;
    public final String f;

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.dynamic.RemoteCreator, com.google.android.gms.internal.ads.zzblu] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.ads.zzcar, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.ads.zzbwv, com.google.android.gms.dynamic.RemoteCreator] */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.google.android.gms.dynamic.RemoteCreator, com.google.android.gms.internal.ads.zzblv] */
    public zzbb() {
        com.google.android.gms.ads.internal.util.client.zzf zzfVar = new com.google.android.gms.ads.internal.util.client.zzf();
        zzaz zzazVar = new zzaz(new zzk(), new zzi(), new zzff(), new RemoteCreator("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"), new Object(), new RemoteCreator("com.google.android.gms.ads.AdOverlayCreatorImpl"), new RemoteCreator("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl"), new zzl());
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(0, ModuleDescriptor.MODULE_VERSION, true);
        Random random = new Random();
        String zzi = com.google.android.gms.ads.internal.util.client.zzf.zzi();
        this.f3005a = zzfVar;
        this.b = zzazVar;
        this.f3006c = false;
        this.d = versionInfoParcel;
        this.e = random;
        this.f = zzi;
    }

    public static com.google.android.gms.ads.internal.util.client.zzf zza() {
        return g.f3005a;
    }

    public static zzaz zzb() {
        return g.b;
    }

    public static void zzc() {
        g.f3006c = false;
    }

    public static void zzd() {
        g.f3006c = true;
    }

    public static boolean zze() {
        return g.f3006c;
    }

    public static String zzf() {
        return g.f;
    }

    public static VersionInfoParcel zzg() {
        return g.d;
    }

    public static Random zzh() {
        return g.e;
    }
}
