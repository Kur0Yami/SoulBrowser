package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfnu extends zziar implements zzicd {
    private static final zzfnu zzaw;
    private static volatile zzick zzax;
    private int zzD;
    private int zzE;
    private int zzF;
    private long zzG;
    private boolean zzH;
    private boolean zzI;
    private boolean zzJ;
    private int zzK;
    private int zzR;
    private int zzS;
    private int zzU;
    private int zza;
    private long zzae;
    private int zzag;
    private int zzah;
    private int zzai;
    private zzfot zzaj;
    private int zzak;
    private zzfop zzal;
    private zzfoa zzam;
    private zzfoe zzan;
    private zzfoc zzao;
    private zzfor zzap;
    private zzfol zzaq;
    private zzfoh zzar;
    private zzief zzas;
    private zzfov zzau;
    private zzfoj zzav;
    private int zzb;
    private int zzc;
    private long zze;
    private long zzf;
    private long zzg;
    private boolean zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private int zzn;
    private int zzz;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zziaz zzh = zzias.i;
    private String zzo = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzp = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzu = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzv = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzw = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzx = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzy = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzA = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzB = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzibc zzC = zzibq.i;
    private String zzL = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzM = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzN = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzO = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzP = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzQ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzT = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzV = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzW = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzX = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzY = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzZ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzaa = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzab = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzac = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzad = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzaf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzat = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzfnu zzfnuVar = new zzfnu();
        zzaw = zzfnuVar;
        zziar.x(zzfnu.class, zzfnuVar);
    }

    public static zzfns F() {
        return (zzfns) zzaw.u();
    }

    public final /* synthetic */ void D(int i) {
        if (i != 1) {
            this.zzD = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final /* synthetic */ void E(int i) {
        if (i != 1) {
            this.zzK = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final /* synthetic */ void G(boolean z) {
        this.zzi = z;
    }

    public final /* synthetic */ void H(long j) {
        this.zzj = j;
    }

    public final /* synthetic */ void I(long j) {
        this.zzk = j;
    }

    public final /* synthetic */ void J(String str) {
        str.getClass();
        this.zzo = str;
    }

    public final /* synthetic */ void K(String str) {
        str.getClass();
        this.zzw = str;
    }

    public final /* synthetic */ void L(String str) {
        String str2 = Build.VERSION.RELEASE;
        str2.getClass();
        this.zzy = str2;
    }

    public final /* synthetic */ void M(int i) {
        this.zzz = i;
    }

    public final void N(Iterable iterable) {
        zzibc zzibcVar = this.zzC;
        if (!zzibcVar.zza()) {
            int size = zzibcVar.size();
            this.zzC = zzibcVar.e(size + size);
        }
        zzhyu.k(this.zzC, iterable);
    }

    public final /* synthetic */ void O(int i) {
        this.zzF = i;
    }

    public final /* synthetic */ void P(long j) {
        this.zzG = j;
    }

    public final /* synthetic */ void Q(String str) {
        str.getClass();
        this.zzL = str;
    }

    public final /* synthetic */ void R(String str) {
        str.getClass();
        this.zzM = str;
    }

    public final /* synthetic */ void S(String str) {
        str.getClass();
        this.zzY = str;
    }

    public final /* synthetic */ void T(String str) {
        this.zzZ = str;
    }

    public final /* synthetic */ void U(String str) {
        str.getClass();
        this.zzaa = str;
    }

    public final /* synthetic */ void V(String str) {
        str.getClass();
        this.zzab = str;
    }

    public final /* synthetic */ void W(String str) {
        this.zzac = str;
    }

    public final /* synthetic */ void X(String str) {
        str.getClass();
        this.zzad = str;
    }

    public final /* synthetic */ void Y(zzfnt zzfntVar) {
        this.zzak = zzfntVar.zza();
    }

    public final /* synthetic */ void Z(zzief zziefVar) {
        this.zzas = zziefVar;
        this.zza |= 256;
    }

    public final /* synthetic */ void a0(String str) {
        this.zzat = str;
    }

    public final /* synthetic */ void b0(int i) {
        this.zzb = i - 2;
    }

    public final /* synthetic */ void c0() {
        this.zzn = 1;
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
                                zzick zzickVar2 = zzax;
                                if (zzickVar2 == null) {
                                    synchronized (zzfnu.class) {
                                        try {
                                            zzickVar = zzax;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzaw);
                                                zzax = zzickVar;
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
                        return zzaw;
                    }
                    return new zzial(zzaw);
                }
                return new zzfnu();
            }
            return new zzico(zzaw, "\u0004E\u0000\u0001\u0001EE\u0000\u0002\u0000\u0001\f\u0002\u0007\u0003\u0002\u0004\f\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\u0004\t\f\n\u0004\u000b\u0002\f\f\rȈ\u000eȈ\u000fȈ\u0010Ȉ\u0011Ȉ\u0012Ȉ\u0013Ȉ\u0014Ȉ\u0015Ȉ\u0016Ȉ\u0017Ȉ\u0018Ȉ\u0019%\u001aȈ\u001bȈ\u001cȈ\u001d\u0002\u001eȈ\u001f\u0002 \u0002!\u0002\"\u0002#\u0002$\u0002%,&\f'\f(\f)ဉ\u0001*ဉ\u0002+\u0004,Ȉ-Ȉ.Ȉ/\f0\u00041\u00042Ȉ3Ȉ4ဉ\u00035\f6ဉ\u00047Ȉ8\u00049ဉ\u0000:ဉ\u0005;ဉ\u0006<Ȉ=ဉ\u0007>ဉ\b?Ȉ@ȈAဉ\tB\u0007C\u0007D\u0007Eဉ\n", new Object[]{"zza", "zzb", "zzi", "zzj", "zzn", "zzo", "zzw", "zzy", "zzz", "zzD", "zzF", "zzG", "zzK", "zzL", "zzM", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzp", "zzu", "zzA", "zzB", "zzC", "zzN", "zzO", "zzW", "zzae", "zzd", "zze", "zzf", "zzg", "zzk", "zzl", "zzm", "zzh", "zzah", "zzai", "zzc", "zzal", "zzam", "zzR", "zzT", "zzQ", "zzP", "zzak", "zzS", "zzU", "zzV", "zzx", "zzan", "zzE", "zzao", "zzaf", "zzag", "zzaj", "zzap", "zzaq", "zzX", "zzar", "zzas", "zzat", "zzv", "zzau", "zzH", "zzI", "zzJ", "zzav"});
        }
        return (byte) 1;
    }
}
