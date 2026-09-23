package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzbfp {

    /* renamed from: com.google.android.gms.internal.ads.zzbfp$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4621a;

        static {
            int[] iArr = new int[zziaq.values().length];
            f4621a = iArr;
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4621a[4] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4621a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4621a[5] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4621a[6] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4621a[0] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4621a[1] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes.dex */
    public final class zza extends zziar<zza, zzb> implements zzf {
        private static final zza zzB;
        private static volatile zzick<zza> zzC = null;
        public static final int zza = 7;
        public static final int zzb = 8;
        public static final int zzc = 9;
        public static final int zzd = 10;
        public static final int zze = 11;
        public static final int zzf = 12;
        public static final int zzg = 13;
        public static final int zzh = 14;
        public static final int zzi = 15;
        public static final int zzj = 16;
        public static final int zzk = 17;
        private zzibd<zzat> zzA;
        private int zzl;
        private int zzm;
        private int zzn = 1000;
        private zzg zzo;
        private zzi zzp;
        private zzibd<zzd> zzu;
        private zzk zzv;
        private zzah zzw;
        private zzac zzx;
        private zzx zzy;
        private zzz zzz;

        /* renamed from: com.google.android.gms.internal.ads.zzbfp$zza$zza, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public enum EnumC0010zza implements zziav {
            AD_INITIATER_UNSPECIFIED(0),
            BANNER(1),
            DFP_BANNER(2),
            INTERSTITIAL(3),
            DFP_INTERSTITIAL(4),
            NATIVE_EXPRESS(5),
            AD_LOADER(6),
            REWARD_BASED_VIDEO_AD(7),
            BANNER_SEARCH_ADS(8),
            GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
            APP_OPEN(10),
            REWARDED_INTERSTITIAL(11);


            /* renamed from: c, reason: collision with root package name */
            public final int f4622c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zza$zza$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<EnumC0010zza> {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zza$zza$zza, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            final class C0011zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4623a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    EnumC0010zza enumC0010zza;
                    switch (i) {
                        case 0:
                            enumC0010zza = EnumC0010zza.AD_INITIATER_UNSPECIFIED;
                            break;
                        case 1:
                            enumC0010zza = EnumC0010zza.BANNER;
                            break;
                        case 2:
                            enumC0010zza = EnumC0010zza.DFP_BANNER;
                            break;
                        case 3:
                            enumC0010zza = EnumC0010zza.INTERSTITIAL;
                            break;
                        case 4:
                            enumC0010zza = EnumC0010zza.DFP_INTERSTITIAL;
                            break;
                        case 5:
                            enumC0010zza = EnumC0010zza.NATIVE_EXPRESS;
                            break;
                        case 6:
                            enumC0010zza = EnumC0010zza.AD_LOADER;
                            break;
                        case 7:
                            enumC0010zza = EnumC0010zza.REWARD_BASED_VIDEO_AD;
                            break;
                        case 8:
                            enumC0010zza = EnumC0010zza.BANNER_SEARCH_ADS;
                            break;
                        case 9:
                            enumC0010zza = EnumC0010zza.GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                            break;
                        case 10:
                            enumC0010zza = EnumC0010zza.APP_OPEN;
                            break;
                        case 11:
                            enumC0010zza = EnumC0010zza.REWARDED_INTERSTITIAL;
                            break;
                        default:
                            enumC0010zza = null;
                            break;
                    }
                    if (enumC0010zza != null) {
                        return true;
                    }
                    return false;
                }
            }

            EnumC0010zza(int i) {
                this.f4622c = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4622c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4622c;
            }
        }

        /* loaded from: classes.dex */
        public final class zzb extends zzial<zza, zzb> implements zzf {
        }

        static {
            zza zzaVar = new zza();
            zzB = zzaVar;
            zziar.x(zza.class, zzaVar);
        }

        public zza() {
            zzicn zzicnVar = zzicn.i;
            this.zzu = zzicnVar;
            this.zzA = zzicnVar;
        }

        public static zza D() {
            return zzB;
        }

        public final void E(EnumC0010zza enumC0010zza) {
            this.zzm = enumC0010zza.f4622c;
            this.zzl |= 1;
        }

        public final void F(zzi zziVar) {
            this.zzp = zziVar;
            this.zzl |= 8;
        }

        public final zzi G() {
            zzi zziVar = this.zzp;
            if (zziVar == null) {
                return zzi.D();
            }
            return zziVar;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zza> zzickVar2 = zzC;
                                    if (zzickVar2 == null) {
                                        synchronized (zza.class) {
                                            try {
                                                zzickVar = zzC;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzB);
                                                    zzC = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzB;
                        }
                        return new zzial(zzB);
                    }
                    return new zza();
                }
                return new zzico(zzB, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007᠌\u0000\b᠌\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzl", "zzm", EnumC0010zza.C0011zza.f4623a, "zzn", zzq.zza.f4639a, "zzo", "zzp", "zzu", zzd.class, "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", zzat.class});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzaa extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzab extends zziar<zzab, zza> implements zzae {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzab zzf;
        private static volatile zzick<zzab> zzg;
        private int zzc;
        private int zzd;
        private int zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzab, zza> implements zzae {
        }

        /* loaded from: classes.dex */
        public enum zzb implements zziav {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);


            /* renamed from: c, reason: collision with root package name */
            public final int f4624c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzab$zzb$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zzb> {
            }

            /* loaded from: classes.dex */
            final class zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4625a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zzb zzbVar;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 4) {
                                    zzbVar = null;
                                } else {
                                    zzbVar = zzb.LTE;
                                }
                            } else {
                                zzbVar = zzb.THREE_G;
                            }
                        } else {
                            zzbVar = zzb.TWO_G;
                        }
                    } else {
                        zzbVar = zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    }
                    if (zzbVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzb(int i) {
                this.f4624c = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4624c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4624c;
            }
        }

        /* loaded from: classes.dex */
        public enum zzc implements zziav {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);


            /* renamed from: c, reason: collision with root package name */
            public final int f4626c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzab$zzc$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zzc> {
            }

            /* loaded from: classes.dex */
            final class zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4627a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zzc zzcVar;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                zzcVar = null;
                            } else {
                                zzcVar = zzc.WIFI;
                            }
                        } else {
                            zzcVar = zzc.CELL;
                        }
                    } else {
                        zzcVar = zzc.NETWORKTYPE_UNSPECIFIED;
                    }
                    if (zzcVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzc(int i2) {
                this.f4626c = i2;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4626c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4626c;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbfp$zzab, com.google.android.gms.internal.ads.zziar] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzab.class, zziarVar);
        }

        public static zza D() {
            return (zza) zzf.u();
        }

        public final void E(zzc zzcVar) {
            this.zzd = zzcVar.f4626c;
            this.zzc |= 1;
        }

        public final void F(zzb zzbVar) {
            this.zze = zzbVar.f4624c;
            this.zzc |= 2;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzab> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzab.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzc", "zzd", zzc.zza.f4627a, "zze", zzb.zza.f4625a});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public final class zzac extends zziar<zzac, zza> implements zzad {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzac zzf;
        private static volatile zzick<zzac> zzg;
        private int zzc;
        private int zzd;
        private zzap zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzac, zza> implements zzad {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbfp$zzac, com.google.android.gms.internal.ads.zziar] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzac.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzac> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzac.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", zzq.zza.f4639a, "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzad extends zzicd {
    }

    /* loaded from: classes.dex */
    public interface zzae extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzaf extends zziar<zzaf, zzc> implements zzag {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        private static final zzaf zzv;
        private static volatile zzick<zzaf> zzw;
        private int zzi;
        private int zzk;
        private int zzl;
        private long zzm;
        private long zzp;
        private int zzu;
        private zzibd<zza> zzj = zzicn.i;
        private String zzn = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private String zzo = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* loaded from: classes.dex */
        public final class zza extends zziar<zza, C0012zza> implements zzb {
            private static final zza zzG;
            private static volatile zzick<zza> zzH = null;
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            public static final int zzd = 4;
            public static final int zze = 5;
            public static final int zzf = 6;
            public static final int zzg = 7;
            public static final int zzh = 8;
            public static final int zzi = 9;
            public static final int zzj = 10;
            public static final int zzk = 11;
            public static final int zzl = 12;
            public static final int zzm = 13;
            private static final zziba<zzd.zza> zzx = new Object();
            private int zzA;
            private int zzB;
            private int zzC;
            private int zzD;
            private int zzE;
            private long zzF;
            private int zzn;
            private long zzo;
            private int zzp;
            private long zzu;
            private long zzv;
            private zziaz zzw = zzias.i;
            private zzab zzy;
            private int zzz;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzaf$zza$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziba<zzd.zza> {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzaf$zza$zza, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public final class C0012zza extends zzial<zza, C0012zza> implements zzb {
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zziba<com.google.android.gms.internal.ads.zzbfp$zzd$zza>] */
            static {
                zza zzaVar = new zza();
                zzG = zzaVar;
                zziar.x(zza.class, zzaVar);
            }

            public static zza S(byte[] bArr) {
                zza zzaVar = zzG;
                int length = bArr.length;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zziar A = zziar.A(zzaVar, bArr, length, zziab.f8905c);
                zziar.C(A);
                return (zza) A;
            }

            public static C0012zza T() {
                return (C0012zza) zzG.u();
            }

            public final void D(long j) {
                this.zzn |= 1;
                this.zzo = j;
            }

            public final void E(zzq zzqVar) {
                this.zzp = zzqVar.f4638c;
                this.zzn |= 2;
            }

            public final void F(long j) {
                this.zzn |= 4;
                this.zzu = j;
            }

            public final void G(long j) {
                this.zzn |= 8;
                this.zzv = j;
            }

            public final void H(ArrayList arrayList) {
                zziaz zziazVar = this.zzw;
                if (!zziazVar.zza()) {
                    int size = zziazVar.size();
                    this.zzw = zziazVar.e(size + size);
                }
                int size2 = arrayList.size();
                int i = 0;
                while (i < size2) {
                    Object obj = arrayList.get(i);
                    i++;
                    this.zzw.d(((zzd.zza) obj).f4634c);
                }
            }

            public final void I(zzab zzabVar) {
                this.zzy = zzabVar;
                this.zzn |= 16;
            }

            public final void J(zzq zzqVar) {
                this.zzz = zzqVar.f4638c;
                this.zzn |= 32;
            }

            public final void K(zzq zzqVar) {
                this.zzA = zzqVar.f4638c;
                this.zzn |= 64;
            }

            public final void L(zzq zzqVar) {
                this.zzB = zzqVar.f4638c;
                this.zzn |= Uuid.SIZE_BITS;
            }

            public final void M(int i) {
                this.zzn |= 256;
                this.zzC = i;
            }

            public final void N(zzq zzqVar) {
                this.zzD = zzqVar.f4638c;
                this.zzn |= 512;
            }

            public final void O(zzd zzdVar) {
                this.zzE = zzdVar.f4628c;
                this.zzn |= 1024;
            }

            public final void P(long j) {
                this.zzn |= 2048;
                this.zzF = j;
            }

            public final long Q() {
                return this.zzo;
            }

            public final zzq R() {
                zzq zzqVar;
                int i = this.zzp;
                zzq zzqVar2 = zzq.ENUM_FALSE;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 1000) {
                            zzqVar = null;
                        } else {
                            zzqVar = zzq.ENUM_UNKNOWN;
                        }
                    } else {
                        zzqVar = zzq.ENUM_TRUE;
                    }
                } else {
                    zzqVar = zzqVar2;
                }
                if (zzqVar == null) {
                    return zzqVar2;
                }
                return zzqVar;
            }

            @Override // com.google.android.gms.internal.ads.zziar
            public final Object y(zziaq zziaqVar, zziar zziarVar) {
                zzick zzickVar;
                int ordinal = zziaqVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzick<zza> zzickVar2 = zzH;
                                        if (zzickVar2 == null) {
                                            synchronized (zza.class) {
                                                try {
                                                    zzickVar = zzH;
                                                    if (zzickVar == null) {
                                                        zzickVar = new zziam(zzG);
                                                        zzH = zzickVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzickVar;
                                        }
                                        return zzickVar2;
                                    }
                                    throw null;
                                }
                                return zzG;
                            }
                            return new zzial(zzG);
                        }
                        return new zza();
                    }
                    zziax zziaxVar = zzq.zza.f4639a;
                    return new zzico(zzG, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ࠞ\u0006ဉ\u0004\u0007᠌\u0005\b᠌\u0006\t᠌\u0007\nင\b\u000b᠌\t\f᠌\n\rဂ\u000b", new Object[]{"zzn", "zzo", "zzp", zziaxVar, "zzu", "zzv", "zzw", zzd.zza.C0015zza.f4635a, "zzy", "zzz", zziaxVar, "zzA", zziaxVar, "zzB", zziaxVar, "zzC", "zzD", zziaxVar, "zzE", zzd.zza.f4629a, "zzF"});
                }
                return (byte) 1;
            }
        }

        /* loaded from: classes.dex */
        public interface zzb extends zzicd {
        }

        /* loaded from: classes.dex */
        public final class zzc extends zzial<zzaf, zzc> implements zzag {
        }

        /* loaded from: classes.dex */
        public enum zzd implements zziav {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);


            /* renamed from: c, reason: collision with root package name */
            public final int f4628c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzaf$zzd$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zzd> {
            }

            /* loaded from: classes.dex */
            final class zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4629a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zzd zzdVar;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    if (i != 4) {
                                        if (i != 5) {
                                            zzdVar = null;
                                        } else {
                                            zzdVar = zzd.SUSPENDED;
                                        }
                                    } else {
                                        zzdVar = zzd.DISCONNECTED;
                                    }
                                } else {
                                    zzdVar = zzd.DISCONNECTING;
                                }
                            } else {
                                zzdVar = zzd.CONNECTED;
                            }
                        } else {
                            zzdVar = zzd.CONNECTING;
                        }
                    } else {
                        zzdVar = zzd.UNSPECIFIED;
                    }
                    if (zzdVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzd(int i) {
                this.f4628c = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4628c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4628c;
            }
        }

        static {
            zzaf zzafVar = new zzaf();
            zzv = zzafVar;
            zziar.x(zzaf.class, zzafVar);
        }

        public static zzc D() {
            return (zzc) zzv.u();
        }

        public final void E(ArrayList arrayList) {
            zzibd<zza> zzibdVar = this.zzj;
            if (!zzibdVar.zza()) {
                int size = zzibdVar.size();
                this.zzj = zzibdVar.e(size + size);
            }
            zzhyu.k(this.zzj, arrayList);
        }

        public final void F(int i) {
            this.zzi |= 1;
            this.zzk = i;
        }

        public final void G(int i) {
            this.zzi |= 2;
            this.zzl = i;
        }

        public final void H(long j) {
            this.zzi |= 4;
            this.zzm = j;
        }

        public final void I(String str) {
            str.getClass();
            this.zzi |= 8;
            this.zzn = str;
        }

        public final void J() {
            String str = Build.MODEL;
            str.getClass();
            this.zzi |= 16;
            this.zzo = str;
        }

        public final void K(long j) {
            this.zzi |= 32;
            this.zzp = j;
        }

        public final void L(int i) {
            this.zzi |= 64;
            this.zzu = i;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzaf> zzickVar2 = zzw;
                                    if (zzickVar2 == null) {
                                        synchronized (zzaf.class) {
                                            try {
                                                zzickVar = zzw;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzv);
                                                    zzw = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzv;
                        }
                        return new zzial(zzv);
                    }
                    return new zzaf();
                }
                return new zzico(zzv, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzi", "zzj", zza.class, "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzag extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzah extends zziar<zzah, zza> implements zzak {
        private static final zzah zzB;
        private static volatile zzick<zzah> zzC = null;
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        public static final int zzi = 9;
        public static final int zzj = 10;
        public static final int zzk = 11;
        private zzai zzA;
        private int zzl;
        private int zzm = 1000;
        private int zzn = 1000;
        private int zzo;
        private int zzp;
        private int zzu;
        private int zzv;
        private int zzw;
        private int zzx;
        private int zzy;
        private int zzz;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzah, zza> implements zzak {
        }

        static {
            zzah zzahVar = new zzah();
            zzB = zzahVar;
            zziar.x(zzah.class, zzahVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzah> zzickVar2 = zzC;
                                    if (zzickVar2 == null) {
                                        synchronized (zzah.class) {
                                            try {
                                                zzickVar = zzC;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzB);
                                                    zzC = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzB;
                        }
                        return new zzial(zzB);
                    }
                    return new zzah();
                }
                zziax zziaxVar = zzq.zza.f4639a;
                return new zzico(zzB, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzl", "zzm", zziaxVar, "zzn", zziaxVar, "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public final class zzai extends zziar<zzai, zza> implements zzaj {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzai zzf;
        private static volatile zzick<zzai> zzg;
        private int zzc;
        private int zzd;
        private int zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzai, zza> implements zzaj {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbfp$zzai, com.google.android.gms.internal.ads.zziar] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzai.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzai> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzai.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzaj extends zzicd {
    }

    /* loaded from: classes.dex */
    public interface zzak extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzal extends zziar<zzal, zza> implements zzam {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzal zzf;
        private static volatile zzick<zzal> zzg;
        private int zzc;
        private int zzd;
        private int zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzal, zza> implements zzam {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzal] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzal.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzal> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzal.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzam extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzan extends zziar<zzan, zza> implements zzao {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzan zzh;
        private static volatile zzick<zzan> zzi;
        private int zzd;
        private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private int zzf;
        private zzap zzg;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzan, zza> implements zzao {
        }

        static {
            zzan zzanVar = new zzan();
            zzh = zzanVar;
            zziar.x(zzan.class, zzanVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzan> zzickVar2 = zzi;
                                    if (zzickVar2 == null) {
                                        synchronized (zzan.class) {
                                            try {
                                                zzickVar = zzi;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzh);
                                                    zzi = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzh;
                        }
                        return new zzial(zzh);
                    }
                    return new zzan();
                }
                return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", "zzf", zzq.zza.f4639a, "zzg"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzao extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzap extends zziar<zzap, zza> implements zzaq {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzap zzf;
        private static volatile zzick<zzap> zzg;
        private int zzc;
        private int zzd;
        private int zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzap, zza> implements zzaq {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzap] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzap.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzap> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzap.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzaq extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzar extends zziar<zzar, zza> implements zzas {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzar zzh;
        private static volatile zzick<zzar> zzi;
        private int zzd;
        private int zze;
        private int zzf;
        private int zzg;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzar, zza> implements zzas {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbfp$zzar, com.google.android.gms.internal.ads.zziar] */
        static {
            ?? zziarVar = new zziar();
            zzh = zziarVar;
            zziar.x(zzar.class, zziarVar);
        }

        public static zza E() {
            return (zza) zzh.u();
        }

        public final void D(int i) {
            this.zzd |= 4;
            this.zzg = i;
        }

        public final void F(int i) {
            this.zzd |= 1;
            this.zze = i;
        }

        public final void G(int i) {
            this.zzd |= 2;
            this.zzf = i;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzar> zzickVar2 = zzi;
                                    if (zzickVar2 == null) {
                                        synchronized (zzar.class) {
                                            try {
                                                zzickVar = zzi;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzh);
                                                    zzi = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzh;
                        }
                        return new zzial(zzh);
                    }
                    return new zziar();
                }
                return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzas extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzat extends zziar<zzat, zza> implements zzbi {
        private static final zzat zzL;
        private static volatile zzick<zzat> zzM = null;
        public static final int zza = 5;
        public static final int zzb = 6;
        public static final int zzc = 7;
        public static final int zzd = 8;
        public static final int zze = 9;
        public static final int zzf = 10;
        public static final int zzg = 11;
        public static final int zzh = 12;
        public static final int zzi = 13;
        public static final int zzj = 14;
        public static final int zzk = 15;
        public static final int zzl = 16;
        public static final int zzm = 17;
        public static final int zzn = 18;
        public static final int zzo = 19;
        public static final int zzp = 20;
        private zzbc zzA;
        private zzay zzB;
        private int zzC;
        private int zzD;
        private zzap zzE;
        private int zzF;
        private int zzG;
        private int zzH;
        private int zzI;
        private int zzJ;
        private long zzK;
        private int zzu;
        private zzba zzv;
        private zzbe zzw;
        private zzbg zzx;
        private zzbj zzy;
        private zzau zzz;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzat, zza> implements zzbi {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbfp$zzat, com.google.android.gms.internal.ads.zziar] */
        static {
            ?? zziarVar = new zziar();
            zzL = zziarVar;
            zziar.x(zzat.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzat> zzickVar2 = zzM;
                                    if (zzickVar2 == null) {
                                        synchronized (zzat.class) {
                                            try {
                                                zzickVar = zzM;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzL);
                                                    zzM = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzL;
                        }
                        return new zzial(zzL);
                    }
                    return new zziar();
                }
                return new zzico(zzL, "\u0004\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005ဉ\u0000\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public final class zzau extends zziar<zzau, zza> implements zzav {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzau zzh;
        private static volatile zzick<zzau> zzi;
        private int zzd;
        private int zze = 1000;
        private zzaw zzf;
        private zzap zzg;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzau, zza> implements zzav {
        }

        static {
            zzau zzauVar = new zzau();
            zzh = zzauVar;
            zziar.x(zzau.class, zzauVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzau> zzickVar2 = zzi;
                                    if (zzickVar2 == null) {
                                        synchronized (zzau.class) {
                                            try {
                                                zzickVar = zzi;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzh);
                                                    zzi = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzh;
                        }
                        return new zzial(zzh);
                    }
                    return new zzau();
                }
                return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzq.zza.f4639a, "zzf", "zzg"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzav extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzaw extends zziar<zzaw, zza> implements zzax {
        public static final int zza = 1;
        private static final zzaw zzd;
        private static volatile zzick<zzaw> zze;
        private int zzb;
        private int zzc;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzaw, zza> implements zzax {
        }

        /* loaded from: classes.dex */
        public enum zzb implements zziav {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);


            /* renamed from: c, reason: collision with root package name */
            public final int f4630c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzaw$zzb$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zzb> {
            }

            /* loaded from: classes.dex */
            final class zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4631a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zzb zzbVar;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    zzbVar = null;
                                } else {
                                    zzbVar = zzb.ANDROID_TARGET_API_TOO_LOW;
                                }
                            } else {
                                zzbVar = zzb.CACHE_LOAD_FAILED;
                            }
                        } else {
                            zzbVar = zzb.OPENGL_RENDERING_FAILED;
                        }
                    } else {
                        zzbVar = zzb.VIDEO_ERROR_CODE_UNSPECIFIED;
                    }
                    if (zzbVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzb(int i) {
                this.f4630c = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4630c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4630c;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbfp$zzaw, com.google.android.gms.internal.ads.zziar] */
        static {
            ?? zziarVar = new zziar();
            zzd = zziarVar;
            zziar.x(zzaw.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzaw> zzickVar2 = zze;
                                    if (zzickVar2 == null) {
                                        synchronized (zzaw.class) {
                                            try {
                                                zzickVar = zze;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzd);
                                                    zze = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zzial(zzd);
                    }
                    return new zziar();
                }
                return new zzico(zzd, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzb", "zzc", zzb.zza.f4631a});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzax extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzay extends zziar<zzay, zza> implements zzaz {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzay zzj;
        private static volatile zzick<zzay> zzk;
        private int zze;
        private zzar zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzay, zza> implements zzaz {
        }

        static {
            zzay zzayVar = new zzay();
            zzj = zzayVar;
            zziar.x(zzay.class, zzayVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzay> zzickVar2 = zzk;
                                    if (zzickVar2 == null) {
                                        synchronized (zzay.class) {
                                            try {
                                                zzickVar = zzk;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzj);
                                                    zzk = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzj;
                        }
                        return new zzial(zzj);
                    }
                    return new zzay();
                }
                return new zzico(zzj, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zze", "zzf", "zzg", zzq.zza.f4639a, "zzh", "zzi"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzaz extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzb extends zziar<zzb, zzc> implements zzc {
        public static final int zza = 1;
        private static final zzb zzc;
        private static volatile zzick<zzb> zzd;
        private zzibd<zza> zzb = zzicn.i;

        /* loaded from: classes.dex */
        public final class zza extends zziar<zza, C0013zza> implements InterfaceC0014zzb {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            private static final zza zzh;
            private static volatile zzick<zza> zzi;
            private int zzd;
            private int zze;
            private zze zzf;
            private zzg zzg;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzb$zza$zza, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public final class C0013zza extends zzial<zza, C0013zza> implements InterfaceC0014zzb {
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzb$zza] */
            static {
                ?? zziarVar = new zziar();
                zzh = zziarVar;
                zziar.x(zza.class, zziarVar);
            }

            public static C0013zza E() {
                return (C0013zza) zzh.u();
            }

            public final void D(zzg zzgVar) {
                this.zzg = zzgVar;
                this.zzd |= 4;
            }

            public final void F() {
                this.zze = 1;
                this.zzd = 1 | this.zzd;
            }

            public final void G(zze zzeVar) {
                zzeVar.getClass();
                this.zzf = zzeVar;
                this.zzd |= 2;
            }

            @Override // com.google.android.gms.internal.ads.zziar
            public final Object y(zziaq zziaqVar, zziar zziarVar) {
                zzick zzickVar;
                int ordinal = zziaqVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzick<zza> zzickVar2 = zzi;
                                        if (zzickVar2 == null) {
                                            synchronized (zza.class) {
                                                try {
                                                    zzickVar = zzi;
                                                    if (zzickVar == null) {
                                                        zzickVar = new zziam(zzh);
                                                        zzi = zzickVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzickVar;
                                        }
                                        return zzickVar2;
                                    }
                                    throw null;
                                }
                                return zzh;
                            }
                            return new zzial(zzh);
                        }
                        return new zziar();
                    }
                    return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzd.zza.f4633a, "zzf", "zzg"});
                }
                return (byte) 1;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzb$zzb, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0014zzb extends zzicd {
        }

        /* loaded from: classes.dex */
        public final class zzc extends zzial<zzb, zzc> implements zzc {
        }

        /* loaded from: classes.dex */
        public enum zzd implements zziav {
            UNSPECIFIED(0),
            IN_MEMORY(1);


            /* renamed from: c, reason: collision with root package name */
            public final int f4632c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzb$zzd$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zzd> {
            }

            /* loaded from: classes.dex */
            final class zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4633a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zzd zzdVar;
                    if (i != 0) {
                        if (i != 1) {
                            zzdVar = null;
                        } else {
                            zzdVar = zzd.IN_MEMORY;
                        }
                    } else {
                        zzdVar = zzd.UNSPECIFIED;
                    }
                    if (zzdVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzd(int i) {
                this.f4632c = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4632c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4632c;
            }
        }

        /* loaded from: classes.dex */
        public final class zze extends zziar<zze, zza> implements zzf {
            public static final int zza = 1;
            public static final int zzb = 2;
            private static final zze zzf;
            private static volatile zzick<zze> zzg;
            private int zzc;
            private boolean zzd;
            private int zze;

            /* loaded from: classes.dex */
            public final class zza extends zzial<zze, zza> implements zzf {
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzb$zze] */
            static {
                ?? zziarVar = new zziar();
                zzf = zziarVar;
                zziar.x(zze.class, zziarVar);
            }

            public static zza D() {
                return (zza) zzf.u();
            }

            public static zze E() {
                return zzf;
            }

            public final void F(boolean z) {
                this.zzc |= 1;
                this.zzd = z;
            }

            public final void G(int i) {
                this.zzc |= 2;
                this.zze = i;
            }

            @Override // com.google.android.gms.internal.ads.zziar
            public final Object y(zziaq zziaqVar, zziar zziarVar) {
                zzick zzickVar;
                int ordinal = zziaqVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzick<zze> zzickVar2 = zzg;
                                        if (zzickVar2 == null) {
                                            synchronized (zze.class) {
                                                try {
                                                    zzickVar = zzg;
                                                    if (zzickVar == null) {
                                                        zzickVar = new zziam(zzf);
                                                        zzg = zzickVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzickVar;
                                        }
                                        return zzickVar2;
                                    }
                                    throw null;
                                }
                                return zzf;
                            }
                            return new zzial(zzf);
                        }
                        return new zziar();
                    }
                    return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zzc", "zzd", "zze"});
                }
                return (byte) 1;
            }
        }

        /* loaded from: classes.dex */
        public interface zzf extends zzicd {
        }

        /* loaded from: classes.dex */
        public final class zzg extends zziar<zzg, zza> implements zzh {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            private static final zzg zzh;
            private static volatile zzick<zzg> zzi;
            private int zzd;
            private boolean zze;
            private boolean zzf;
            private int zzg;

            /* loaded from: classes.dex */
            public final class zza extends zzial<zzg, zza> implements zzh {
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzb$zzg] */
            static {
                ?? zziarVar = new zziar();
                zzh = zziarVar;
                zziar.x(zzg.class, zziarVar);
            }

            public static zza E() {
                return (zza) zzh.u();
            }

            public final void D(int i) {
                this.zzd |= 4;
                this.zzg = i;
            }

            public final void F(boolean z) {
                this.zzd |= 1;
                this.zze = z;
            }

            public final void G(boolean z) {
                this.zzd |= 2;
                this.zzf = z;
            }

            @Override // com.google.android.gms.internal.ads.zziar
            public final Object y(zziaq zziaqVar, zziar zziarVar) {
                zzick zzickVar;
                int ordinal = zziaqVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzick<zzg> zzickVar2 = zzi;
                                        if (zzickVar2 == null) {
                                            synchronized (zzg.class) {
                                                try {
                                                    zzickVar = zzi;
                                                    if (zzickVar == null) {
                                                        zzickVar = new zziam(zzh);
                                                        zzi = zzickVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzickVar;
                                        }
                                        return zzickVar2;
                                    }
                                    throw null;
                                }
                                return zzh;
                            }
                            return new zzial(zzh);
                        }
                        return new zziar();
                    }
                    return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
                }
                return (byte) 1;
            }
        }

        /* loaded from: classes.dex */
        public interface zzh extends zzicd {
        }

        static {
            zzb zzbVar = new zzb();
            zzc = zzbVar;
            zziar.x(zzb.class, zzbVar);
        }

        public static zzc D() {
            return (zzc) zzc.u();
        }

        public final void E(zza zzaVar) {
            zzibd<zza> zzibdVar = this.zzb;
            if (!zzibdVar.zza()) {
                int size = zzibdVar.size();
                this.zzb = zzibdVar.e(size + size);
            }
            this.zzb.add(zzaVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzb> zzickVar2 = zzd;
                                    if (zzickVar2 == null) {
                                        synchronized (zzb.class) {
                                            try {
                                                zzickVar = zzd;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzc);
                                                    zzd = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zzial(zzc);
                    }
                    return new zzb();
                }
                return new zzico(zzc, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zza.class});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public final class zzba extends zziar<zzba, zza> implements zzbb {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        private static final zzba zzl;
        private static volatile zzick<zzba> zzm;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private int zzi;
        private int zzj;
        private int zzk;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzba, zza> implements zzbb {
        }

        static {
            zzba zzbaVar = new zzba();
            zzl = zzbaVar;
            zziar.x(zzba.class, zzbaVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzba> zzickVar2 = zzm;
                                    if (zzickVar2 == null) {
                                        synchronized (zzba.class) {
                                            try {
                                                zzickVar = zzm;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzl);
                                                    zzm = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzl;
                        }
                        return new zzial(zzl);
                    }
                    return new zzba();
                }
                return new zzico(zzl, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzf", "zzg", zzq.zza.f4639a, "zzh", "zzi", "zzj", "zzk"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzbb extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzbc extends zziar<zzbc, zza> implements zzbd {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzbc zzh;
        private static volatile zzick<zzbc> zzi;
        private int zzd;
        private int zze = 1000;
        private zzaw zzf;
        private zzap zzg;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzbc, zza> implements zzbd {
        }

        static {
            zzbc zzbcVar = new zzbc();
            zzh = zzbcVar;
            zziar.x(zzbc.class, zzbcVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzbc> zzickVar2 = zzi;
                                    if (zzickVar2 == null) {
                                        synchronized (zzbc.class) {
                                            try {
                                                zzickVar = zzi;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzh);
                                                    zzi = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzh;
                        }
                        return new zzial(zzh);
                    }
                    return new zzbc();
                }
                return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzq.zza.f4639a, "zzf", "zzg"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzbd extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzbe extends zziar<zzbe, zza> implements zzbf {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        private static final zzbe zzn;
        private static volatile zzick<zzbe> zzo;
        private int zzg;
        private int zzh = 1000;
        private zzaw zzi;
        private int zzj;
        private int zzk;
        private int zzl;
        private long zzm;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzbe, zza> implements zzbf {
        }

        static {
            zzbe zzbeVar = new zzbe();
            zzn = zzbeVar;
            zziar.x(zzbe.class, zzbeVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzbe> zzickVar2 = zzo;
                                    if (zzickVar2 == null) {
                                        synchronized (zzbe.class) {
                                            try {
                                                zzickVar = zzo;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzn);
                                                    zzo = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzn;
                        }
                        return new zzial(zzn);
                    }
                    return new zzbe();
                }
                return new zzico(zzn, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzg", "zzh", zzq.zza.f4639a, "zzi", "zzj", "zzk", "zzl", "zzm"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzbf extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzbg extends zziar<zzbg, zza> implements zzbh {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzbg zzh;
        private static volatile zzick<zzbg> zzi;
        private int zzd;
        private int zze = 1000;
        private zzaw zzf;
        private zzap zzg;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzbg, zza> implements zzbh {
        }

        static {
            zzbg zzbgVar = new zzbg();
            zzh = zzbgVar;
            zziar.x(zzbg.class, zzbgVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzbg> zzickVar2 = zzi;
                                    if (zzickVar2 == null) {
                                        synchronized (zzbg.class) {
                                            try {
                                                zzickVar = zzi;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzh);
                                                    zzi = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzh;
                        }
                        return new zzial(zzh);
                    }
                    return new zzbg();
                }
                return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzq.zza.f4639a, "zzf", "zzg"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzbh extends zzicd {
    }

    /* loaded from: classes.dex */
    public interface zzbi extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzbj extends zziar<zzbj, zza> implements zzbk {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzbj zzf;
        private static volatile zzick<zzbj> zzg;
        private int zzc;
        private int zzd = 1000;
        private zzaw zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzbj, zza> implements zzbk {
        }

        static {
            zzbj zzbjVar = new zzbj();
            zzf = zzbjVar;
            zziar.x(zzbj.class, zzbjVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzbj> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzbj.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zzbj();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", zzq.zza.f4639a, "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzbk extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzbl extends zziar<zzbl, zza> implements zzbm {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzbl zzf;
        private static volatile zzick<zzbl> zzg;
        private int zzc;
        private boolean zzd;
        private int zze;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzbl, zza> implements zzbm {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzbl] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzbl.class, zziarVar);
        }

        public static zza E() {
            return (zza) zzf.u();
        }

        public final boolean D() {
            return this.zzd;
        }

        public final void F(boolean z) {
            this.zzc |= 1;
            this.zzd = z;
        }

        public final void G(int i) {
            this.zzc |= 2;
            this.zze = i;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzbl> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzbl.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzbm extends zzicd {
    }

    /* loaded from: classes.dex */
    public interface zzc extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzd extends zziar<zzd, zzb> implements zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzd zzf;
        private static volatile zzick<zzd> zzg;
        private int zzc;
        private int zzd;
        private zzal zze;

        /* loaded from: classes.dex */
        public enum zza implements zziav {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);


            /* renamed from: c, reason: collision with root package name */
            public final int f4634c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzd$zza$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zza> {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzd$zza$zza, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            final class C0015zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4635a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zza zzaVar;
                    switch (i) {
                        case 0:
                            zzaVar = zza.AD_FORMAT_TYPE_UNSPECIFIED;
                            break;
                        case 1:
                            zzaVar = zza.BANNER;
                            break;
                        case 2:
                            zzaVar = zza.INTERSTITIAL;
                            break;
                        case 3:
                            zzaVar = zza.NATIVE_EXPRESS;
                            break;
                        case 4:
                            zzaVar = zza.NATIVE_CONTENT;
                            break;
                        case 5:
                            zzaVar = zza.NATIVE_APP_INSTALL;
                            break;
                        case 6:
                            zzaVar = zza.NATIVE_CUSTOM_TEMPLATE;
                            break;
                        case 7:
                            zzaVar = zza.DFP_BANNER;
                            break;
                        case 8:
                            zzaVar = zza.DFP_INTERSTITIAL;
                            break;
                        case 9:
                            zzaVar = zza.REWARD_BASED_VIDEO_AD;
                            break;
                        case 10:
                            zzaVar = zza.BANNER_SEARCH_ADS;
                            break;
                        default:
                            zzaVar = null;
                            break;
                    }
                    if (zzaVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zza(int i) {
                this.f4634c = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4634c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4634c;
            }
        }

        /* loaded from: classes.dex */
        public final class zzb extends zzial<zzd, zzb> implements zze {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzbfp$zzd] */
        static {
            ?? zziarVar = new zziar();
            zzf = zziarVar;
            zziar.x(zzd.class, zziarVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzd> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzd.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zziar();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", zza.C0015zza.f4635a, "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zze extends zzicd {
    }

    /* loaded from: classes.dex */
    public interface zzf extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzg extends zziar<zzg, zza> implements zzh {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzg zzh;
        private static volatile zzick<zzg> zzi;
        private int zzd;
        private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private zzibd<zzd> zzf = zzicn.i;
        private int zzg;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzg, zza> implements zzh {
        }

        static {
            zzg zzgVar = new zzg();
            zzh = zzgVar;
            zziar.x(zzg.class, zzgVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzg> zzickVar2 = zzi;
                                    if (zzickVar2 == null) {
                                        synchronized (zzg.class) {
                                            try {
                                                zzickVar = zzi;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzh);
                                                    zzi = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzh;
                        }
                        return new zzial(zzh);
                    }
                    return new zzg();
                }
                return new zzico(zzh, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001", new Object[]{"zzd", "zze", "zzf", zzd.class, "zzg", zzq.zza.f4639a});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzh extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzi extends zziar<zzi, zza> implements zzj {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        private static final zzi zzl;
        private static volatile zzick<zzi> zzm;
        private int zzf;
        private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private zzibd<zzd> zzh = zzicn.i;
        private int zzi = 1000;
        private int zzj = 1000;
        private int zzk = 1000;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzi, zza> implements zzj {
        }

        static {
            zzi zziVar = new zzi();
            zzl = zziVar;
            zziar.x(zzi.class, zziVar);
        }

        public static zzi D() {
            return zzl;
        }

        public final void E(String str) {
            str.getClass();
            this.zzf |= 1;
            this.zzg = str;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzi> zzickVar2 = zzm;
                                    if (zzickVar2 == null) {
                                        synchronized (zzi.class) {
                                            try {
                                                zzickVar = zzm;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzl);
                                                    zzm = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzl;
                        }
                        return new zzial(zzl);
                    }
                    return new zzi();
                }
                zziax zziaxVar = zzq.zza.f4639a;
                return new zzico(zzl, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001\u0004᠌\u0002\u0005᠌\u0003", new Object[]{"zzf", "zzg", "zzh", zzd.class, "zzi", zziaxVar, "zzj", zziaxVar, "zzk", zziaxVar});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzj extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzk extends zziar<zzk, zza> implements zzl {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        private static final zzk zzn;
        private static volatile zzick<zzk> zzo;
        private int zzg;
        private int zzh;
        private zzap zzi;
        private zzap zzj;
        private zzap zzk;
        private zzibd<zzap> zzl = zzicn.i;
        private int zzm;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzk, zza> implements zzl {
        }

        static {
            zzk zzkVar = new zzk();
            zzn = zzkVar;
            zziar.x(zzk.class, zzkVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzk> zzickVar2 = zzo;
                                    if (zzickVar2 == null) {
                                        synchronized (zzk.class) {
                                            try {
                                                zzickVar = zzo;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzn);
                                                    zzo = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzn;
                        }
                        return new zzial(zzn);
                    }
                    return new zzk();
                }
                return new zzico(zzn, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzap.class, "zzm"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzl extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzm extends zziar<zzm, zza> implements zzn {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        private static final zzm zzv;
        private static volatile zzick<zzm> zzw;
        private int zzi;
        private zzap zzk;
        private int zzl;
        private zzar zzm;
        private int zzn;
        private String zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private int zzo = 1000;
        private int zzp = 1000;
        private int zzu = 1000;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzm, zza> implements zzn {
        }

        static {
            zzm zzmVar = new zzm();
            zzv = zzmVar;
            zziar.x(zzm.class, zzmVar);
        }

        public static zzm D() {
            return zzv;
        }

        public final void E(String str) {
            this.zzi |= 1;
            this.zzj = str;
        }

        public final void F(zzar zzarVar) {
            this.zzm = zzarVar;
            this.zzi |= 8;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzm> zzickVar2 = zzw;
                                    if (zzickVar2 == null) {
                                        synchronized (zzm.class) {
                                            try {
                                                zzickVar = zzw;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzv);
                                                    zzw = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzv;
                        }
                        return new zzial(zzv);
                    }
                    return new zzm();
                }
                zziax zziaxVar = zzq.zza.f4639a;
                return new zzico(zzv, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007", new Object[]{"zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zziaxVar, "zzp", zziaxVar, "zzu", zziaxVar});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzn extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzo extends zziar<zzo, zza> implements zzp {
        public static final int zza = 5;
        public static final int zzb = 6;
        public static final int zzc = 7;
        public static final int zzd = 8;
        private static final zzo zzj;
        private static volatile zzick<zzo> zzk;
        private int zze;
        private int zzf;
        private zzar zzg;
        private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private String zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzo, zza> implements zzp {
        }

        /* loaded from: classes.dex */
        public enum zzb implements zziav {
            PLATFORM_UNSPECIFIED(0),
            IOS(1),
            ANDROID(2);


            /* renamed from: c, reason: collision with root package name */
            public final int f4636c;

            /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzo$zzb$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements zziaw<zzb> {
            }

            /* loaded from: classes.dex */
            final class zza implements zziax {

                /* renamed from: a, reason: collision with root package name */
                public static final zziax f4637a = new Object();

                @Override // com.google.android.gms.internal.ads.zziax
                public final boolean j(int i) {
                    zzb zzbVar;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                zzbVar = null;
                            } else {
                                zzbVar = zzb.ANDROID;
                            }
                        } else {
                            zzbVar = zzb.IOS;
                        }
                    } else {
                        zzbVar = zzb.PLATFORM_UNSPECIFIED;
                    }
                    if (zzbVar != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzb(int i2) {
                this.f4636c = i2;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.f4636c);
            }

            @Override // com.google.android.gms.internal.ads.zziav
            public final int zza() {
                return this.f4636c;
            }
        }

        static {
            zzo zzoVar = new zzo();
            zzj = zzoVar;
            zziar.x(zzo.class, zzoVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzo> zzickVar2 = zzk;
                                    if (zzickVar2 == null) {
                                        synchronized (zzo.class) {
                                            try {
                                                zzickVar = zzk;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzj);
                                                    zzk = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzj;
                        }
                        return new zzial(zzj);
                    }
                    return new zzo();
                }
                return new zzico(zzj, "\u0004\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005᠌\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zze", "zzf", zzb.zza.f4637a, "zzg", "zzh", "zzi"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzp extends zzicd {
    }

    /* loaded from: classes.dex */
    public enum zzq implements zziav {
        ENUM_FALSE(0),
        ENUM_TRUE(1),
        ENUM_UNKNOWN(1000);


        /* renamed from: c, reason: collision with root package name */
        public final int f4638c;

        /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzq$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements zziaw<zzq> {
        }

        /* loaded from: classes.dex */
        final class zza implements zziax {

            /* renamed from: a, reason: collision with root package name */
            public static final zziax f4639a = new Object();

            @Override // com.google.android.gms.internal.ads.zziax
            public final boolean j(int i) {
                zzq zzqVar;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 1000) {
                            zzqVar = null;
                        } else {
                            zzqVar = zzq.ENUM_UNKNOWN;
                        }
                    } else {
                        zzqVar = zzq.ENUM_TRUE;
                    }
                } else {
                    zzqVar = zzq.ENUM_FALSE;
                }
                if (zzqVar != null) {
                    return true;
                }
                return false;
            }
        }

        zzq(int i2) {
            this.f4638c = i2;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return Integer.toString(this.f4638c);
        }

        @Override // com.google.android.gms.internal.ads.zziav
        public final int zza() {
            return this.f4638c;
        }
    }

    /* loaded from: classes.dex */
    public final class zzr extends zziar<zzr, zza> implements zzs {
        private static final zzr zzB;
        private static volatile zzick<zzr> zzC = null;
        public static final int zza = 7;
        public static final int zzb = 8;
        public static final int zzc = 9;
        public static final int zzd = 10;
        public static final int zze = 11;
        public static final int zzf = 12;
        public static final int zzg = 13;
        public static final int zzh = 14;
        public static final int zzi = 15;
        public static final int zzj = 16;
        private int zzk;
        private int zzl;
        private zzar zzn;
        private int zzo;
        private int zzv;
        private int zzw;
        private zziaz zzx;
        private zziaz zzz;
        private static final zziba<zzd.zza> zzy = new Object();
        private static final zziba<zzd.zza> zzA = new Object();
        private String zzm = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private String zzp = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private String zzu = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzr$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements zziba<zzd.zza> {
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbfp$zzr$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass2 implements zziba<zzd.zza> {
        }

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzr, zza> implements zzs {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zziba<com.google.android.gms.internal.ads.zzbfp$zzd$zza>] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zziba<com.google.android.gms.internal.ads.zzbfp$zzd$zza>] */
        static {
            zzr zzrVar = new zzr();
            zzB = zzrVar;
            zziar.x(zzr.class, zzrVar);
        }

        public zzr() {
            zzias zziasVar = zzias.i;
            this.zzx = zziasVar;
            this.zzz = zziasVar;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzr> zzickVar2 = zzC;
                                    if (zzickVar2 == null) {
                                        synchronized (zzr.class) {
                                            try {
                                                zzickVar = zzC;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzB);
                                                    zzC = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzB;
                        }
                        return new zzial(zzB);
                    }
                    return new zzr();
                }
                zziax zziaxVar = zzd.zza.C0015zza.f4635a;
                return new zzico(zzB, "\u0004\n\u0000\u0001\u0007\u0010\n\u0000\u0002\u0000\u0007င\u0000\bဈ\u0001\tဉ\u0002\n᠌\u0003\u000bဈ\u0004\fဈ\u0005\r᠌\u0006\u000e᠌\u0007\u000fࠞ\u0010ࠞ", new Object[]{"zzk", "zzl", "zzm", "zzn", "zzo", zzo.zzb.zza.f4637a, "zzp", "zzu", "zzv", zzab.zzc.zza.f4627a, "zzw", zza.EnumC0010zza.C0011zza.f4623a, "zzx", zziaxVar, "zzz", zziaxVar});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzs extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzt extends zziar<zzt, zza> implements zzu {
        private static final zzt zzF;
        private static volatile zzick<zzt> zzG = null;
        public static final int zza = 9;
        public static final int zzb = 10;
        public static final int zzc = 11;
        public static final int zzd = 12;
        public static final int zze = 13;
        public static final int zzf = 14;
        public static final int zzg = 15;
        public static final int zzh = 16;
        public static final int zzi = 17;
        public static final int zzj = 18;
        public static final int zzk = 19;
        public static final int zzl = 20;
        public static final int zzm = 21;
        private zzab zzA;
        private zza zzB;
        private zzaf zzC;
        private zzbl zzD;
        private zzb zzE;
        private int zzn;
        private int zzo;
        private int zzu;
        private zzar zzw;
        private zzm zzy;
        private zzo zzz;
        private String zzp = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private int zzv = 1000;
        private zzibc zzx = zzibq.i;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzt, zza> implements zzu {
        }

        static {
            zzt zztVar = new zzt();
            zzF = zztVar;
            zziar.x(zzt.class, zztVar);
        }

        public static zza O() {
            return (zza) zzF.u();
        }

        public final zzm D() {
            zzm zzmVar = this.zzy;
            if (zzmVar == null) {
                return zzm.D();
            }
            return zzmVar;
        }

        public final void E(String str) {
            str.getClass();
            this.zzn |= 2;
            this.zzp = str;
        }

        public final zza F() {
            zza zzaVar = this.zzB;
            if (zzaVar == null) {
                return zza.D();
            }
            return zzaVar;
        }

        public final void G(zzb zzbVar) {
            this.zzE = zzbVar;
            this.zzn |= 2048;
        }

        public final void H(List list) {
            zzibc zzibcVar = this.zzx;
            if (!zzibcVar.zza()) {
                int size = zzibcVar.size();
                this.zzx = zzibcVar.e(size + size);
            }
            zzhyu.k(this.zzx, list);
        }

        public final void I() {
            this.zzx = zzibq.i;
        }

        public final void J(zzm zzmVar) {
            this.zzy = zzmVar;
            this.zzn |= 32;
        }

        public final void K(zza zzaVar) {
            this.zzB = zzaVar;
            this.zzn |= 256;
        }

        public final void L(zzaf zzafVar) {
            this.zzC = zzafVar;
            this.zzn |= 512;
        }

        public final void M(zzbl zzblVar) {
            this.zzD = zzblVar;
            this.zzn |= 1024;
        }

        public final String N() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzt> zzickVar2 = zzG;
                                    if (zzickVar2 == null) {
                                        synchronized (zzt.class) {
                                            try {
                                                zzickVar = zzG;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzF);
                                                    zzG = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzF;
                        }
                        return new zzial(zzF);
                    }
                    return new zzt();
                }
                return new zzico(zzF, "\u0004\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\f᠌\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzn", "zzo", "zzp", "zzu", "zzv", zzq.zza.f4639a, "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzu extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzv extends zziar<zzv, zza> implements zzw {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzv zzj;
        private static volatile zzick<zzv> zzk;
        private int zze;
        private int zzg;
        private zzap zzi;
        private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private zziaz zzh = zzias.i;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzv, zza> implements zzw {
        }

        static {
            zzv zzvVar = new zzv();
            zzj = zzvVar;
            zziar.x(zzv.class, zzvVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzv> zzickVar2 = zzk;
                                    if (zzickVar2 == null) {
                                        synchronized (zzv.class) {
                                            try {
                                                zzickVar = zzk;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzj);
                                                    zzk = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzj;
                        }
                        return new zzial(zzj);
                    }
                    return new zzv();
                }
                return new zzico(zzj, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zze", "zzf", "zzg", zzq.zza.f4639a, "zzh", "zzi"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzw extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzx extends zziar<zzx, zza> implements zzy {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzx zzf;
        private static volatile zzick<zzx> zzg;
        private int zzc;
        private int zzd;
        private zziaz zze = zzias.i;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzx, zza> implements zzy {
        }

        static {
            zzx zzxVar = new zzx();
            zzf = zzxVar;
            zziar.x(zzx.class, zzxVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzx> zzickVar2 = zzg;
                                    if (zzickVar2 == null) {
                                        synchronized (zzx.class) {
                                            try {
                                                zzickVar = zzg;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzf);
                                                    zzg = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zzial(zzf);
                    }
                    return new zzx();
                }
                return new zzico(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u0016", new Object[]{"zzc", "zzd", zzq.zza.f4639a, "zze"});
            }
            return (byte) 1;
        }
    }

    /* loaded from: classes.dex */
    public interface zzy extends zzicd {
    }

    /* loaded from: classes.dex */
    public final class zzz extends zziar<zzz, zza> implements zzaa {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzz zzj;
        private static volatile zzick<zzz> zzk;
        private int zze;
        private zzv zzf;
        private zzibd<zzan> zzg = zzicn.i;
        private int zzh;
        private zzap zzi;

        /* loaded from: classes.dex */
        public final class zza extends zzial<zzz, zza> implements zzaa {
        }

        static {
            zzz zzzVar = new zzz();
            zzj = zzzVar;
            zziar.x(zzz.class, zzzVar);
        }

        @Override // com.google.android.gms.internal.ads.zziar
        public final Object y(zziaq zziaqVar, zziar zziarVar) {
            zzick zzickVar;
            int ordinal = zziaqVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzick<zzz> zzickVar2 = zzk;
                                    if (zzickVar2 == null) {
                                        synchronized (zzz.class) {
                                            try {
                                                zzickVar = zzk;
                                                if (zzickVar == null) {
                                                    zzickVar = new zziam(zzj);
                                                    zzk = zzickVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzickVar;
                                    }
                                    return zzickVar2;
                                }
                                throw null;
                            }
                            return zzj;
                        }
                        return new zzial(zzj);
                    }
                    return new zzz();
                }
                return new zzico(zzj, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003᠌\u0001\u0004ဉ\u0002", new Object[]{"zze", "zzf", "zzg", zzan.class, "zzh", zzq.zza.f4639a, "zzi"});
            }
            return (byte) 1;
        }
    }
}
