package com.google.android.gms.internal.fido;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzhq {
    public static final zzhp a(zzhs zzhsVar) {
        long j;
        try {
            zzhr b = zzhsVar.b();
            if (b != null) {
                try {
                    try {
                        byte b2 = b.f10334a;
                        byte b3 = b.b;
                        int i = 0;
                        if (b2 != Byte.MIN_VALUE) {
                            if (b2 != -96) {
                                if (b2 != -64) {
                                    if (b2 != -32) {
                                        if (b2 != 0 && b2 != 32) {
                                            if (b2 != 64) {
                                                if (b2 == 96) {
                                                    zzhsVar.i((byte) 96);
                                                    String str = new String(zzhsVar.k(), StandardCharsets.UTF_8);
                                                    b(b3, str.length());
                                                    return new zzhn(str);
                                                }
                                                throw new IOException("Unidentifiable major type: " + ((b2 >> 5) & 7));
                                            }
                                            zzhsVar.i((byte) 64);
                                            byte[] k = zzhsVar.k();
                                            int length = k.length;
                                            b(b3, length);
                                            return new zzhi(zzgx.s(k, length));
                                        }
                                        long zzb = zzhsVar.zzb();
                                        if (zzb > 0) {
                                            j = zzb;
                                        } else {
                                            j = ~zzb;
                                        }
                                        b(b3, j);
                                        return new zzhk(zzb);
                                    }
                                    return new zzhh(zzhsVar.d());
                                }
                                throw new IOException("Tags are currently unsupported");
                            }
                            long zzc = zzhsVar.zzc();
                            if (zzc <= 1000) {
                                b(b3, zzc);
                                int i2 = (int) zzc;
                                zzhl[] zzhlVarArr = new zzhl[i2];
                                zzhp zzhpVar = null;
                                int i3 = 0;
                                while (i3 < zzc) {
                                    zzhp a2 = a(zzhsVar);
                                    if (zzhpVar != null && a2.compareTo(zzhpVar) <= 0) {
                                        throw new IOException("Keys in CBOR Map not in strictly ascending natural order:\nPrevious key: " + zzhpVar.toString() + "\nCurrent key: " + a2.toString());
                                    }
                                    zzhlVarArr[i3] = new zzhl(a2, a(zzhsVar));
                                    i3++;
                                    zzhpVar = a2;
                                }
                                TreeMap treeMap = new TreeMap();
                                while (i < i2) {
                                    zzhl zzhlVar = zzhlVarArr[i];
                                    if (!treeMap.containsKey(zzhlVar.f10331a)) {
                                        treeMap.put(zzhlVar.f10331a, zzhlVar.b);
                                        i++;
                                    } else {
                                        throw new IOException("Attempted to add duplicate key to canonical CBOR Map.");
                                    }
                                }
                                return new zzhm(zzcj.e(treeMap));
                            }
                            throw new IOException("Parser being asked to read a large CBOR map");
                        }
                        long a3 = zzhsVar.a();
                        if (a3 <= 1000) {
                            b(b3, a3);
                            zzhp[] zzhpVarArr = new zzhp[(int) a3];
                            while (i < a3) {
                                zzhpVarArr[i] = a(zzhsVar);
                                i++;
                            }
                            return new zzhg(zzcc.r(zzhpVarArr));
                        }
                        throw new IOException("Parser being asked to read a large CBOR array");
                    } catch (RuntimeException e) {
                        e = e;
                        throw new zzhj(e);
                    }
                } catch (IOException | RuntimeException e2) {
                    e = e2;
                    throw new zzhj(e);
                }
            }
            throw new IOException("Parser being asked to parse an empty input stream");
        } catch (IOException e3) {
            throw new zzhj(e3);
        }
    }

    public static final void b(byte b, long j) {
        switch (b) {
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                if (j >= 24) {
                    return;
                }
                throw new IOException("Integer value " + j + " after add info could have been represented in 0 additional bytes, but used 1");
            case 25:
                if (j < 256) {
                    throw new IOException("Integer value " + j + " after add info could have been represented in 0-1 additional bytes, but used 2");
                }
                return;
            case 26:
                if (j < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    throw new IOException("Integer value " + j + " after add info could have been represented in 0-2 additional bytes, but used 4");
                }
                return;
            case 27:
                if (j < 4294967296L) {
                    throw new IOException("Integer value " + j + " after add info could have been represented in 0-4 additional bytes, but used 8");
                }
                return;
            default:
                return;
        }
    }
}
