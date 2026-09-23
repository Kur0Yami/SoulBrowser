package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public final class zzqr extends zzyd implements zzzj {
    private static final zzqr zzaz;
    private zzyl zzA;
    private zzyl zzB;
    private zzum zzC;
    private int zzD;
    private int zzE;
    private zzrp zzF;
    private int zzG;
    private zzqp zzH;
    private zzyl zzI;
    private zzrp zzJ;
    private int zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private zzvr zzQ;
    private zzqg zzR;
    private zzqz zzS;
    private zzpu zzT;
    private zzst zzU;
    private zzuk zzV;
    private zzsz zzW;
    private zzyl zzX;
    private zzsx zzY;
    private int zzZ;
    private zztj zzaa;
    private zzyl zzab;
    private boolean zzac;
    private boolean zzad;
    private int zzae;
    private zzpw zzaf;
    private zztr zzag;
    private zzsn zzah;
    private zzrh zzai;
    private zzth zzaj;
    private zzuu zzak;
    private zzrj zzal;
    private int zzam;
    private int zzan;
    private int zzao;
    private zzyl zzap;
    private zzvx zzaq;
    private zzuw zzar;
    private zzus zzas;
    private zzqk zzat;
    private zzvc zzau;
    private zzug zzav;
    private zzsv zzaw;
    private zzsh zzax;
    private int zzb;
    private int zzd;
    private long zze;
    private long zzf;
    private int zzg;
    private zzsj zzh;
    private zztp zzi;
    private zzrz zzj;
    private zzrv zzk;
    private zzqn zzl;
    private zztn zzm;
    private zzqa zzn;
    private zzvi zzo;
    private zzrt zzq;
    private zzlc zzr;
    private int zzu;
    private zztf zzv;
    private zzyl zzy;
    private zzyl zzz;
    private byte zzay = 2;
    private String zzp = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzs = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzt = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzw = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzyj zzx = zzye.i;

    static {
        zzqr zzqrVar = new zzqr();
        zzaz = zzqrVar;
        zzyd.h(zzqr.class, zzqrVar);
    }

    public zzqr() {
        zzzq zzzqVar = zzzq.i;
        this.zzy = zzzqVar;
        this.zzz = zzzqVar;
        this.zzA = zzzqVar;
        this.zzB = zzzqVar;
        this.zzI = zzzqVar;
        this.zzX = zzzqVar;
        this.zzab = zzzqVar;
        this.zzap = zzzqVar;
    }

    public static zzqq o() {
        return (zzqq) zzaz.d();
    }

    public static zzqq p(zzqr zzqrVar) {
        zzya d = zzaz.d();
        zzyd zzydVar = d.f9881c;
        if (!zzydVar.equals(zzqrVar)) {
            if (!d.f.l()) {
                zzyd zzydVar2 = (zzyd) zzydVar.j(4, null);
                zzzp.f9899c.a(zzydVar2.getClass()).c(zzydVar2, d.f);
                d.f = zzydVar2;
            }
            zzyd zzydVar3 = d.f;
            zzzp.f9899c.a(zzydVar3.getClass()).c(zzydVar3, zzqrVar);
        }
        return (zzqq) d;
    }

    public final /* synthetic */ void A(zzpw zzpwVar) {
        this.zzaf = zzpwVar;
        this.zzd |= 8192;
    }

    public final /* synthetic */ void B(zzus zzusVar) {
        this.zzas = zzusVar;
        this.zzd |= MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            byte b = 1;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (zzydVar == null) {
                                b = 0;
                            }
                            this.zzay = b;
                            return null;
                        }
                        return zzaz;
                    }
                    return new zzya(zzaz);
                }
                return new zzqr();
            }
            return new zzzr(zzaz, "\u0001H\u0000\u0002\u0001HH\u0000\t\u0001\u0001ဂ\u0000\u0002ဂ\u0001\u0003᠌\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဈ\u000e\nဉ\b\u000bဉ\t\fဉ\n\rဈ\u000b\u000eဉ\f\u000fဉ\r\u0010ဉ\u0011\u0011ဈ\u0012\u0012\u0016\u0013\u001b\u0014\u001b\u0015\u001b\u0016\u001b\u0017᠌\u0014\u0018ဉ\u0018\u0019\u001b\u001aဉ\u0019\u001b᠌\u001b\u001cင\u001c\u001dင\u001d\u001eင\u001e\u001fဆ\u001f ဉ !ဉ!\"ဉ##᠌\u0015$ဉ\u0016%ᐉ$&ဉ%'ဉ&(\u001b)᠌(*ဉ)+\u001b,᠌\u001a-ဇ*.ဇ+/᠌,0ဉ-1င\u00172ဉ.3ဉ/4ဉ15ဉ26ဉ37᠌48᠌59᠌6:\u001b;ဈ\u000f<ဉ7=ဉ0>ဉ\u0013?ဉ\"@င\u0010Aဉ8Bဉ'Cဉ9Dဉ:Eဉ;Fဉ<Gဉ=Hဉ>", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzov.f9813a, "zzh", "zzi", "zzj", "zzk", "zzl", "zzs", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzv", "zzw", "zzx", "zzy", zzsl.class, "zzz", zzsp.class, "zzA", zzrl.class, "zzB", zzuo.class, "zzD", zzof.f9805a, "zzH", "zzI", zzrp.class, "zzJ", "zzL", zzmt.f9782a, "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzT", "zzE", zzob.f9803a, "zzF", "zzU", "zzV", "zzW", "zzX", zzqc.class, "zzZ", zzod.f9804a, "zzaa", "zzab", zzqi.class, "zzK", zzmr.f9781a, "zzac", "zzad", "zzae", zzmn.f9779a, "zzaf", "zzG", "zzag", "zzah", "zzaj", "zzak", "zzal", "zzam", zzlt.f9768a, "zzan", zznn.f9794a, "zzao", zzlr.f9767a, "zzap", zzve.class, "zzt", "zzaq", "zzai", "zzC", "zzS", "zzu", "zzar", "zzY", "zzas", "zzat", "zzau", "zzav", "zzaw", "zzax"});
        }
        return Byte.valueOf(this.zzay);
    }

    public final zzqg n() {
        zzqg zzqgVar = this.zzR;
        if (zzqgVar == null) {
            return zzqg.p();
        }
        return zzqgVar;
    }

    public final /* synthetic */ void q(long j) {
        this.zzb |= 2;
        this.zzf = j;
    }

    public final /* synthetic */ void r(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzp = str;
    }

    public final /* synthetic */ void s(String str) {
        str.getClass();
        this.zzb |= 16384;
        this.zzs = str;
    }

    public final /* synthetic */ void t(String str) {
        str.getClass();
        this.zzb |= 32768;
        this.zzt = str;
    }

    public final /* synthetic */ void u(int i) {
        this.zzb |= 65536;
        this.zzu = i;
    }

    public final /* synthetic */ void v(String str) {
        this.zzb |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
        this.zzw = str;
    }

    public final /* synthetic */ void w(int i) {
        this.zzb |= IntCompanionObject.MIN_VALUE;
        this.zzP = i;
    }

    public final /* synthetic */ void x(zzqg zzqgVar) {
        this.zzR = zzqgVar;
        this.zzd |= 2;
    }

    public final /* synthetic */ void y(zzqz zzqzVar) {
        this.zzS = zzqzVar;
        this.zzd |= 4;
    }

    public final void z(zzqc zzqcVar) {
        zzyl zzylVar = this.zzX;
        if (!zzylVar.zza()) {
            int size = zzylVar.size();
            this.zzX = zzylVar.zzf(size + size);
        }
        this.zzX.add(zzqcVar);
    }
}
