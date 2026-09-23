package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdSize;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
final class zzagq implements zzagj {

    /* renamed from: a, reason: collision with root package name */
    public final zzgtd f4016a;
    public final int b;

    public zzagq(int i, zzgtd zzgtdVar) {
        this.b = i;
        this.f4016a = zzgtdVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public static zzagq a(int i, zzer zzerVar) {
        String str;
        String str2;
        int i2;
        zzagj zzagrVar;
        String str3;
        ?? zzgsxVar = new zzgsx(4);
        int i3 = zzerVar.f6835c;
        int i4 = -2;
        while (zzerVar.B() > 8) {
            int c2 = zzerVar.c();
            int c3 = zzerVar.b + zzerVar.c();
            zzerVar.C(c3);
            if (c2 == 1414744396) {
                zzagrVar = a(zzerVar.c(), zzerVar);
            } else {
                zzago zzagoVar = null;
                switch (c2) {
                    case 1718776947:
                        if (i4 == 2) {
                            zzerVar.G(4);
                            int c4 = zzerVar.c();
                            int c5 = zzerVar.c();
                            zzerVar.G(4);
                            int c6 = zzerVar.c();
                            switch (c6) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str3 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str3 = "video/avc";
                                    break;
                                case 842289229:
                                    str3 = "video/mp42";
                                    break;
                                case 859066445:
                                    str3 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str3 = "video/mjpeg";
                                    break;
                                default:
                                    str3 = null;
                                    break;
                            }
                            if (str3 == null) {
                                a.i(new StringBuilder(String.valueOf(c6).length() + 44), "Ignoring track with unsupported compression ", c6, "StreamFormatChunk");
                                break;
                            } else {
                                zzt zztVar = new zzt();
                                zztVar.s = c4;
                                zztVar.t = c5;
                                zztVar.e(str3);
                                zzagrVar = new zzagr(new zzv(zztVar));
                                break;
                            }
                        } else if (i4 == 1) {
                            int M = zzerVar.M();
                            if (M == 1) {
                                str2 = "audio/raw";
                            } else if (M != 85) {
                                if (M == 255) {
                                    str2 = "audio/mp4a-latm";
                                } else if (M != 8192) {
                                    if (M != 8193) {
                                        str2 = null;
                                    } else {
                                        str2 = "audio/vnd.dts";
                                    }
                                } else {
                                    str2 = "audio/ac3";
                                }
                            } else {
                                str2 = "audio/mpeg";
                            }
                            if (str2 == null) {
                                a.i(new StringBuilder(String.valueOf(M).length() + 43), "Ignoring track with unsupported format tag ", M, "StreamFormatChunk");
                                break;
                            } else {
                                int M2 = zzerVar.M();
                                int c7 = zzerVar.c();
                                zzerVar.G(6);
                                int y = zzfj.y(zzerVar.M(), ByteOrder.LITTLE_ENDIAN);
                                if (zzerVar.B() > 0) {
                                    i2 = zzerVar.M();
                                } else {
                                    i2 = 0;
                                }
                                zzt zztVar2 = new zzt();
                                zztVar2.e(str2);
                                zztVar2.D = M2;
                                zztVar2.E = c7;
                                if (str2.equals("audio/raw") && y != 0) {
                                    zztVar2.F = y;
                                }
                                if (str2.equals("audio/mp4a-latm") && i2 > 0) {
                                    byte[] bArr = new byte[i2];
                                    zzerVar.H(bArr, 0, i2);
                                    zztVar2.o = zzgtd.r(bArr);
                                }
                                zzagrVar = new zzagr(new zzv(zztVar2));
                                break;
                            }
                        } else {
                            String str4 = zzfj.f7405a;
                            switch (i4) {
                                case AdSize.AUTO_HEIGHT /* -2 */:
                                    str = "none";
                                    break;
                                case -1:
                                    str = "unknown";
                                    break;
                                case 0:
                                    str = "default";
                                    break;
                                case 1:
                                    str = "audio";
                                    break;
                                case 2:
                                    str = "video";
                                    break;
                                case 3:
                                    str = "text";
                                    break;
                                case 4:
                                    str = "image";
                                    break;
                                case 5:
                                    str = "metadata";
                                    break;
                                default:
                                    str = "camera motion";
                                    break;
                            }
                            zzee.c("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(str));
                            break;
                        }
                    case 1751742049:
                        int c8 = zzerVar.c();
                        zzerVar.G(8);
                        int c9 = zzerVar.c();
                        int c10 = zzerVar.c();
                        zzerVar.G(4);
                        zzerVar.c();
                        zzerVar.G(12);
                        zzagrVar = new zzagn(c8, c9, c10);
                        break;
                    case 1752331379:
                        int c11 = zzerVar.c();
                        zzerVar.G(12);
                        zzerVar.c();
                        int c12 = zzerVar.c();
                        int c13 = zzerVar.c();
                        zzerVar.G(4);
                        int c14 = zzerVar.c();
                        int c15 = zzerVar.c();
                        zzerVar.G(4);
                        zzagoVar = new zzago(c11, c12, c13, c14, c15, zzerVar.c());
                        break;
                    case 1852994675:
                        zzagrVar = new zzags(zzerVar.k(zzerVar.B(), StandardCharsets.UTF_8));
                        break;
                }
                zzagrVar = zzagoVar;
            }
            if (zzagrVar != null) {
                if (zzagrVar.zza() == 1752331379) {
                    i4 = ((zzago) zzagrVar).a();
                }
                zzgsxVar.c(zzagrVar);
            }
            zzerVar.E(c3);
            zzerVar.C(i3);
        }
        return new zzagq(i, zzgsxVar.f());
    }

    public final zzagj b(Class cls) {
        zzgtd zzgtdVar = this.f4016a;
        int size = zzgtdVar.size();
        int i = 0;
        while (i < size) {
            zzagj zzagjVar = (zzagj) zzgtdVar.get(i);
            i++;
            if (zzagjVar.getClass() == cls) {
                return zzagjVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final int zza() {
        return this.b;
    }
}
