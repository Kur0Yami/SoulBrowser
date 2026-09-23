package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzigz extends zziar implements zzicd {
    private static final zzigz zzR;
    private static volatile zzick zzS;
    private zzigv zzA;
    private zzibd zzB;
    private zzifb zzC;
    private String zzD;
    private zziet zzE;
    private zzibd zzF;
    private zzifu zzG;
    private int zzH;
    private zzibd zzI;
    private zzibd zzJ;
    private long zzK;
    private zzigy zzL;
    private zzifz zzM;
    private String zzN;
    private zzigs zzO;
    private zzibd zzP;
    private int zza;
    private int zzb;
    private int zzc;
    private zziex zzg;
    private zzibd zzh;
    private zzibd zzi;
    private String zzj;
    private zzigf zzk;
    private boolean zzl;
    private zzibd zzm;
    private String zzn;
    private boolean zzo;
    private boolean zzp;
    private zzhzl zzu;
    private zzigm zzv;
    private boolean zzw;
    private String zzx;
    private zzibd zzy;
    private zzibd zzz;
    private byte zzQ = 2;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzigz zzigzVar = new zzigz();
        zzR = zzigzVar;
        zziar.x(zzigz.class, zzigzVar);
    }

    public zzigz() {
        zzicn zzicnVar = zzicn.i;
        this.zzh = zzicnVar;
        this.zzi = zzicnVar;
        this.zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzm = zzicnVar;
        this.zzn = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzu = zzhzl.f;
        this.zzx = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzy = zzicnVar;
        this.zzz = zzicnVar;
        this.zzB = zzicnVar;
        this.zzD = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzF = zzicnVar;
        this.zzI = zzicnVar;
        this.zzJ = zzicnVar;
        this.zzN = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzP = zzicnVar;
    }

    public static zziev G() {
        return (zziev) zzR.u();
    }

    public final String D() {
        return this.zzd;
    }

    public final zzibd E() {
        return this.zzh;
    }

    public final String F() {
        return this.zzj;
    }

    public final /* synthetic */ void H(String str) {
        this.zza |= 4;
        this.zzd = str;
    }

    public final /* synthetic */ void I(String str) {
        this.zza |= 8;
        this.zze = str;
    }

    public final /* synthetic */ void J(zziex zziexVar) {
        this.zzg = zziexVar;
        this.zza |= 32;
    }

    public final void K(zzigk zzigkVar) {
        zzibd zzibdVar = this.zzh;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzh = zzibdVar.e(size + size);
        }
        this.zzh.add(zzigkVar);
    }

    public final /* synthetic */ void L(String str) {
        this.zza |= 64;
        this.zzj = str;
    }

    public final /* synthetic */ void M() {
        this.zza &= -65;
        this.zzj = zzR.zzj;
    }

    public final /* synthetic */ void N(zzigf zzigfVar) {
        this.zzk = zzigfVar;
        this.zza |= Uuid.SIZE_BITS;
    }

    public final /* synthetic */ void O(zzigm zzigmVar) {
        this.zzv = zzigmVar;
        this.zza |= 8192;
    }

    public final void P(ArrayList arrayList) {
        zzibd zzibdVar = this.zzy;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzy = zzibdVar.e(size + size);
        }
        zzhyu.k(this.zzy, arrayList);
    }

    public final void Q(ArrayList arrayList) {
        zzibd zzibdVar = this.zzz;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzz = zzibdVar.e(size + size);
        }
        zzhyu.k(this.zzz, arrayList);
    }

    public final /* synthetic */ void R(int i) {
        this.zzb = i - 1;
        this.zza |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zziar
    public final Object y(zziaq zziaqVar, zziar zziarVar) {
        zzick zzickVar;
        byte b = 1;
        switch (zziaqVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzQ);
            case 1:
                if (zziarVar == null) {
                    b = 0;
                }
                this.zzQ = b;
                return null;
            case 2:
                return new zzico(zzR, "\u0001%\u0000\u0001\u0001%%\u0000\n\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\n᠌\u0000\u000b᠌\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b\u001cဉ\u0014\u001d᠌\u0015\u001e\u001b\u001f\u001b ဂ\u0016!ဉ\u0017\"ဉ\u0018#ဈ\u0019$ဉ\u001a%\u001b", new Object[]{"zza", "zzd", "zze", "zzf", "zzh", zzigk.class, "zzl", "zzm", "zzn", "zzo", "zzp", "zzb", zzigg.f8977a, "zzc", zzieu.f8970a, "zzg", "zzj", "zzk", "zzu", "zzi", zzihd.class, "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", zzihj.class, "zzC", "zzD", "zzE", "zzF", zziff.class, "zzG", "zzH", zzigt.f8981a, "zzI", zzifx.class, "zzJ", zzigc.class, "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", zzigp.class});
            case 3:
                return new zzigz();
            case 4:
                return new zzial(zzR);
            case 5:
                return zzR;
            case 6:
                zzick zzickVar2 = zzS;
                if (zzickVar2 == null) {
                    synchronized (zzigz.class) {
                        try {
                            zzickVar = zzS;
                            if (zzickVar == null) {
                                zzickVar = new zziam(zzR);
                                zzS = zzickVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzickVar;
                }
                return zzickVar2;
            default:
                throw null;
        }
    }
}
