package com.google.android.gms.internal.ads;

import com.google.api.client.googleapis.media.MediaHttpUploader;
import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzawm extends zziar implements zzicd {
    private static final zzawm zzA;
    private static volatile zzick zzB;
    private int zza;
    private long zzu;
    private long zzv;
    private long zzb = -1;
    private long zzc = -1;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private int zzh = 1000;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private int zzl = 1000;
    private long zzm = -1;
    private long zzn = -1;
    private long zzo = -1;
    private long zzp = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;
    private long zzz = -1;

    static {
        zzawm zzawmVar = new zzawm();
        zzA = zzawmVar;
        zziar.x(zzawm.class, zzawmVar);
    }

    public static zzawl D() {
        return (zzawl) zzA.u();
    }

    public final /* synthetic */ void E(long j) {
        this.zza |= 1;
        this.zzb = j;
    }

    public final /* synthetic */ void F(long j) {
        this.zza |= 2;
        this.zzc = j;
    }

    public final /* synthetic */ void G(long j) {
        this.zza |= 4;
        this.zzd = j;
    }

    public final /* synthetic */ void H(long j) {
        this.zza |= 8;
        this.zze = j;
    }

    public final /* synthetic */ void I() {
        this.zza &= -9;
        this.zze = -1L;
    }

    public final /* synthetic */ void J(long j) {
        this.zza |= 16;
        this.zzf = j;
    }

    public final /* synthetic */ void K(long j) {
        this.zza |= 32;
        this.zzg = j;
    }

    public final /* synthetic */ void L(long j) {
        this.zza |= Uuid.SIZE_BITS;
        this.zzi = j;
    }

    public final /* synthetic */ void M(long j) {
        this.zza |= 256;
        this.zzj = j;
    }

    public final /* synthetic */ void N(long j) {
        this.zza |= 512;
        this.zzk = j;
    }

    public final /* synthetic */ void O(long j) {
        this.zza |= 2048;
        this.zzm = j;
    }

    public final /* synthetic */ void P(long j) {
        this.zza |= ConstantsKt.DEFAULT_BLOCK_SIZE;
        this.zzn = j;
    }

    public final /* synthetic */ void Q(long j) {
        this.zza |= 8192;
        this.zzo = j;
    }

    public final /* synthetic */ void R(long j) {
        this.zza |= 16384;
        this.zzp = j;
    }

    public final /* synthetic */ void S(long j) {
        this.zza |= 32768;
        this.zzu = j;
    }

    public final /* synthetic */ void T(long j) {
        this.zza |= 65536;
        this.zzv = j;
    }

    public final /* synthetic */ void U(long j) {
        this.zza |= 131072;
        this.zzw = j;
    }

    public final /* synthetic */ void V(long j) {
        this.zza |= MediaHttpUploader.MINIMUM_CHUNK_SIZE;
        this.zzx = j;
    }

    public final /* synthetic */ void W(int i) {
        this.zzh = i - 1;
        this.zza |= 64;
    }

    public final /* synthetic */ void X(int i) {
        this.zzl = i - 1;
        this.zza |= 1024;
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
                                zzick zzickVar2 = zzB;
                                if (zzickVar2 == null) {
                                    synchronized (zzawm.class) {
                                        try {
                                            zzickVar = zzB;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzA);
                                                zzB = zzickVar;
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
                        return zzA;
                    }
                    return new zzial(zzA);
                }
                return new zzawm();
            }
            zziax zziaxVar = zzawx.f4445a;
            return new zzico(zzA, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007᠌\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000b᠌\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", zziaxVar, "zzi", "zzj", "zzk", "zzl", zziaxVar, "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz"});
        }
        return (byte) 1;
    }
}
