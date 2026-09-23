package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzawp extends zziar implements zzicd {
    private static final zzawp zzbe;
    private static volatile zzick zzbf;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzH;
    private long zzI;
    private long zzJ;
    private long zzL;
    private zzawr zzO;
    private int zza;
    private int zzaA;
    private String zzaB;
    private zzibd zzaC;
    private int zzaD;
    private zzibd zzaE;
    private zzawk zzaF;
    private zzawi zzaG;
    private String zzaH;
    private long zzaI;
    private long zzaJ;
    private long zzaK;
    private long zzaL;
    private long zzaM;
    private long zzaN;
    private long zzaO;
    private String zzaP;
    private zzawa zzaQ;
    private zzawc zzaR;
    private long zzaS;
    private long zzaT;
    private int zzaU;
    private long zzaV;
    private String zzaW;
    private int zzaX;
    private boolean zzaY;
    private String zzaZ;
    private zzawm zzag;
    private zzibd zzah;
    private zzawo zzai;
    private long zzaj;
    private long zzak;
    private long zzal;
    private long zzam;
    private long zzan;
    private long zzao;
    private long zzap;
    private long zzaq;
    private String zzar;
    private long zzas;
    private int zzat;
    private int zzau;
    private int zzav;
    private int zzaw;
    private zzaxe zzax;
    private long zzay;
    private int zzaz;
    private int zzb;
    private long zzba;
    private zzaxc zzbb;
    private long zzbc;
    private String zzbd;
    private int zzc;
    private int zzd;
    private long zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzu = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzE = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzF = "D";
    private String zzG = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzK = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private long zzM = -1;
    private long zzN = -1;
    private long zzP = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private long zzU = -1;
    private String zzV = "D";
    private String zzW = "D";
    private long zzX = -1;
    private int zzY = 1000;
    private int zzZ = 1000;
    private long zzaa = -1;
    private long zzab = -1;
    private long zzac = -1;
    private long zzad = -1;
    private long zzae = -1;
    private int zzaf = 1000;

    static {
        zzawp zzawpVar = new zzawp();
        zzbe = zzawpVar;
        zziar.x(zzawp.class, zzawpVar);
    }

    public zzawp() {
        zzicn zzicnVar = zzicn.i;
        this.zzah = zzicnVar;
        this.zzaj = -1L;
        this.zzak = -1L;
        this.zzal = -1L;
        this.zzam = -1L;
        this.zzan = -1L;
        this.zzao = -1L;
        this.zzap = -1L;
        this.zzaq = -1L;
        this.zzar = "D";
        this.zzas = -1L;
        this.zzay = -1L;
        this.zzaz = 1000;
        this.zzaA = 1000;
        this.zzaB = "D";
        this.zzaC = zzicnVar;
        this.zzaD = 1000;
        this.zzaE = zzicnVar;
        this.zzaH = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzaI = -1L;
        this.zzaJ = -1L;
        this.zzaK = -1L;
        this.zzaL = -1L;
        this.zzaO = -1L;
        this.zzaP = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzaS = -1L;
        this.zzaT = -1L;
        this.zzaW = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzaX = 2;
        this.zzaZ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzbc = -1L;
        this.zzbd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static zzawp E0(byte[] bArr, zziab zziabVar) {
        return (zzawp) zziar.s(zzbe, bArr, zziabVar);
    }

    public static zzavs F0() {
        return (zzavs) zzbe.u();
    }

    public static zzawp G0() {
        return zzbe;
    }

    public final long A0() {
        return this.zzaj;
    }

    public final long B0() {
        return this.zzan;
    }

    public final boolean C0() {
        return (this.zzc & 1073741824) != 0;
    }

    public final /* synthetic */ void D(String str) {
        str.getClass();
        this.zza |= 16777216;
        this.zzG = str;
    }

    public final zzaxc D0() {
        zzaxc zzaxcVar = this.zzbb;
        if (zzaxcVar == null) {
            return zzaxc.H();
        }
        return zzaxcVar;
    }

    public final /* synthetic */ void E(long j) {
        this.zza |= MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        this.zzH = j;
    }

    public final /* synthetic */ void F(long j) {
        this.zza |= 67108864;
        this.zzI = j;
    }

    public final /* synthetic */ void G(long j) {
        this.zza |= 134217728;
        this.zzJ = j;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zza |= 268435456;
        this.zzK = str;
    }

    public final /* synthetic */ void H0(String str) {
        str.getClass();
        this.zza |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void I(long j) {
        this.zza |= 536870912;
        this.zzL = j;
    }

    public final /* synthetic */ void I0(String str) {
        str.getClass();
        this.zza |= 2;
        this.zzf = str;
    }

    public final /* synthetic */ void J(long j) {
        this.zza |= 1073741824;
        this.zzM = j;
    }

    public final /* synthetic */ void J0(long j) {
        this.zza |= 4;
        this.zzg = j;
    }

    public final /* synthetic */ void K(long j) {
        this.zza |= IntCompanionObject.MIN_VALUE;
        this.zzN = j;
    }

    public final /* synthetic */ void K0(long j) {
        this.zza |= 16;
        this.zzi = j;
    }

    public final /* synthetic */ void L(long j) {
        this.zzb |= 2;
        this.zzP = j;
    }

    public final /* synthetic */ void L0(long j) {
        this.zza |= 32;
        this.zzj = j;
    }

    public final /* synthetic */ void M(long j) {
        this.zzb |= 4;
        this.zzQ = j;
    }

    public final /* synthetic */ void M0(long j) {
        this.zza |= 1024;
        this.zzo = j;
    }

    public final /* synthetic */ void N(long j) {
        this.zzb |= 8;
        this.zzR = j;
    }

    public final /* synthetic */ void N0(long j) {
        this.zza |= 2048;
        this.zzp = j;
    }

    public final /* synthetic */ void O(long j) {
        this.zzb |= 16;
        this.zzS = j;
    }

    public final /* synthetic */ void O0(long j) {
        this.zza |= 8192;
        this.zzv = j;
    }

    public final /* synthetic */ void P(long j) {
        this.zzb |= 32;
        this.zzT = j;
    }

    public final /* synthetic */ void P0(long j) {
        this.zza |= 16384;
        this.zzw = j;
    }

    public final /* synthetic */ void Q(long j) {
        this.zzb |= 64;
        this.zzU = j;
    }

    public final /* synthetic */ void Q0(long j) {
        this.zza |= 32768;
        this.zzx = j;
    }

    public final /* synthetic */ void R(String str) {
        str.getClass();
        this.zzb |= Uuid.SIZE_BITS;
        this.zzV = str;
    }

    public final /* synthetic */ void R0(long j) {
        this.zza |= 65536;
        this.zzy = j;
    }

    public final /* synthetic */ void S(String str) {
        str.getClass();
        this.zzb |= 256;
        this.zzW = str;
    }

    public final /* synthetic */ void S0(long j) {
        this.zza |= 524288;
        this.zzB = j;
    }

    public final /* synthetic */ void T(long j) {
        this.zzb |= ConstantsKt.DEFAULT_BLOCK_SIZE;
        this.zzaa = j;
    }

    public final /* synthetic */ void T0(long j) {
        this.zza |= 1048576;
        this.zzC = j;
    }

    public final /* synthetic */ void U(long j) {
        this.zzb |= 8192;
        this.zzab = j;
    }

    public final /* synthetic */ void U0(long j) {
        this.zza |= 2097152;
        this.zzD = j;
    }

    public final /* synthetic */ void V(long j) {
        this.zzb |= 16384;
        this.zzac = j;
    }

    public final /* synthetic */ void V0(String str) {
        str.getClass();
        this.zza |= 4194304;
        this.zzE = str;
    }

    public final /* synthetic */ void W(zzawm zzawmVar) {
        this.zzag = zzawmVar;
        this.zzb |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
    }

    public final void X(zzawm zzawmVar) {
        zzibd zzibdVar = this.zzah;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzah = zzibdVar.e(size + size);
        }
        this.zzah.add(zzawmVar);
    }

    public final void Y() {
        this.zzah = zzicn.i;
    }

    public final /* synthetic */ void Z(zzawo zzawoVar) {
        this.zzai = zzawoVar;
        this.zzb |= 524288;
    }

    public final /* synthetic */ void a0(long j) {
        this.zzb |= 1048576;
        this.zzaj = j;
    }

    public final /* synthetic */ void b0(long j) {
        this.zzb |= 2097152;
        this.zzak = j;
    }

    public final /* synthetic */ void c0(long j) {
        this.zzb |= 4194304;
        this.zzal = j;
    }

    public final boolean d0() {
        return (this.zza & 4194304) != 0;
    }

    public final /* synthetic */ void e0(long j) {
        this.zzb |= 8388608;
        this.zzam = j;
    }

    public final /* synthetic */ void f0(long j) {
        this.zzb |= 16777216;
        this.zzan = j;
    }

    public final /* synthetic */ void g0(long j) {
        this.zzb |= 67108864;
        this.zzap = j;
    }

    public final /* synthetic */ void h0(long j) {
        this.zzb |= 134217728;
        this.zzaq = j;
    }

    public final /* synthetic */ void i0(String str) {
        str.getClass();
        this.zzb |= 268435456;
        this.zzar = str;
    }

    public final /* synthetic */ void j0(String str) {
        str.getClass();
        this.zzc |= 1024;
        this.zzaH = str;
    }

    public final /* synthetic */ void k0(long j) {
        this.zzc |= 2048;
        this.zzaI = j;
    }

    public final /* synthetic */ void l0(long j) {
        this.zzc |= ConstantsKt.DEFAULT_BLOCK_SIZE;
        this.zzaJ = j;
    }

    public final /* synthetic */ void m0(long j) {
        this.zzc |= 8192;
        this.zzaK = j;
    }

    public final /* synthetic */ void n0(long j) {
        this.zzc |= 16384;
        this.zzaL = j;
    }

    public final /* synthetic */ void o0(String str) {
        str.getClass();
        this.zzc |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
        this.zzaP = str;
    }

    public final /* synthetic */ void p0(long j) {
        this.zzc |= 4194304;
        this.zzaT = j;
    }

    public final /* synthetic */ void q0(long j) {
        this.zzc |= 536870912;
        this.zzba = j;
    }

    public final /* synthetic */ void r0(zzaxc zzaxcVar) {
        zzaxcVar.getClass();
        this.zzbb = zzaxcVar;
        this.zzc |= 1073741824;
    }

    public final /* synthetic */ void s0(int i) {
        this.zzY = i - 1;
        this.zzb |= 1024;
    }

    public final /* synthetic */ void t0(int i) {
        this.zzZ = i - 1;
        this.zzb |= 2048;
    }

    public final /* synthetic */ void u0(int i) {
        this.zzaf = i - 1;
        this.zzb |= 131072;
    }

    public final /* synthetic */ void v0(int i) {
        this.zzaz = i - 1;
        this.zzc |= 16;
    }

    public final /* synthetic */ void w0(int i) {
        this.zzaA = i - 1;
        this.zzc |= 32;
    }

    public final /* synthetic */ void x0(int i) {
        this.zzaU = i - 1;
        this.zzc |= 8388608;
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
                                zzick zzickVar2 = zzbf;
                                if (zzickVar2 == null) {
                                    synchronized (zzawp.class) {
                                        try {
                                            zzickVar = zzbf;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzbe);
                                                zzbf = zzickVar;
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
                        return zzbe;
                    }
                    return new zzial(zzbe);
                }
                return new zzawp();
            }
            zziax zziaxVar = zzawx.f4445a;
            return new zzico(zzbe, "\u0001d\u0000\u0004\u0001Įd\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂX\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈY\u0019ဂ]\u001a᠌Z\u001bဈ\u0016\u001cဇ[\u001dဈ\u0018\u001eဈ\\\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌AEဉBFဂCGဂ8Hဂ9I᠌DJဂ)Kဈ\u0017L᠌EMဈFN\u001bO᠌GP\u001bQဉHRဈJSဂKTဂLUဂMVဂNWဂOXဂQYဈRZဉS[ဉT\\ဂU]ဂV^᠌W_᠌@`ဉIaဂPÉဉ^ĭဂ_Įဈ`", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzaV", "zzC", "zzD", "zzaW", "zzba", "zzaX", zzavw.f4439a, "zzE", "zzaY", "zzG", "zzaZ", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzah", zzawm.class, "zzT", "zzU", "zzV", "zzW", "zzY", zziaxVar, "zzZ", zziaxVar, "zzag", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", zziaxVar, "zzai", "zzaj", "zzak", "zzal", "zzam", "zzap", "zzaq", "zzas", "zzat", zzaww.f4444a, "zzau", zzaxa.f4447a, "zzar", "zzaw", zzavt.f4438a, "zzax", "zzay", "zzan", "zzao", "zzaz", zziaxVar, "zzX", "zzF", "zzaA", zziaxVar, "zzaB", "zzaC", zzawg.class, "zzaD", zziaxVar, "zzaE", zzavv.class, "zzaF", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaO", "zzaP", "zzaQ", "zzaR", "zzaS", "zzaT", "zzaU", zzawd.f4443a, "zzav", zzavx.f4440a, "zzaG", "zzaN", "zzbb", "zzbc", "zzbd"});
        }
        return (byte) 1;
    }

    public final String y0() {
        return this.zzE;
    }

    public final boolean z0() {
        return (this.zzb & 1048576) != 0;
    }
}
