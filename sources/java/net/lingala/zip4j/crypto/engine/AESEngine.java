package net.lingala.zip4j.crypto.engine;

import java.lang.reflect.Array;
import kotlin.KotlinVersion;
import kotlin.UByte;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.uuid.Uuid;
import net.lingala.zip4j.exception.ZipException;

/* loaded from: classes4.dex */
public class AESEngine {
    public static final byte[] g = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, 63, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, ByteCompanionObject.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, ByteCompanionObject.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, -68, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, 23, -60, -89, 126, Base64.padSymbol, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    public static final int[] h = {1, 2, 4, 8, 16, 32, 64, Uuid.SIZE_BITS, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};
    public static final int[] i = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};

    /* renamed from: a, reason: collision with root package name */
    public final int f21987a;
    public final int[][] b;

    /* renamed from: c, reason: collision with root package name */
    public int f21988c;
    public int d;
    public int e;
    public int f;

    public AESEngine(byte[] bArr) {
        this.b = null;
        int length = bArr.length / 4;
        if ((length == 4 || length == 6 || length == 8) && length * 4 == bArr.length) {
            this.f21987a = length + 6;
            int i2 = 0;
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length + 7, 4);
            int i3 = 0;
            while (i2 < bArr.length) {
                iArr[i3 >> 2][i3 & 3] = (bArr[i2] & UByte.MAX_VALUE) | ((bArr[i2 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i2 + 2] & UByte.MAX_VALUE) << 16) | (bArr[i2 + 3] << 24);
                i2 += 4;
                i3++;
            }
            int i4 = (this.f21987a + 1) << 2;
            for (int i5 = length; i5 < i4; i5++) {
                int i6 = i5 - 1;
                int i7 = iArr[i6 >> 2][i6 & 3];
                int i8 = i5 % length;
                if (i8 == 0) {
                    i7 = c(b(i7, 8)) ^ h[(i5 / length) - 1];
                } else if (length > 6 && i8 == 4) {
                    i7 = c(i7);
                }
                int i9 = i5 - length;
                iArr[i5 >> 2][i5 & 3] = i7 ^ iArr[i9 >> 2][i9 & 3];
            }
            this.b = iArr;
            return;
        }
        throw new ZipException("invalid key length (not 128/192/256)");
    }

    public static int b(int i2, int i3) {
        return (i2 << (-i3)) | (i2 >>> i3);
    }

    public static int c(int i2) {
        int i3 = i2 & KotlinVersion.MAX_COMPONENT_VALUE;
        byte[] bArr = g;
        return (bArr[(i2 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE] << 24) | (bArr[i3] & UByte.MAX_VALUE) | ((bArr[(i2 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 8) | ((bArr[(i2 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 16);
    }

    public final void a(byte[] bArr, byte[] bArr2) {
        int[][] iArr = this.b;
        if (iArr != null) {
            if (16 <= bArr.length) {
                if (16 <= bArr2.length) {
                    int i2 = bArr[0] & UByte.MAX_VALUE;
                    this.f21988c = i2;
                    int i3 = i2 | ((bArr[1] & UByte.MAX_VALUE) << 8);
                    this.f21988c = i3;
                    int i4 = i3 | ((bArr[2] & UByte.MAX_VALUE) << 16);
                    this.f21988c = i4;
                    int i5 = i4 | (bArr[3] << 24);
                    this.f21988c = i5;
                    char c2 = 4;
                    int i6 = bArr[4] & UByte.MAX_VALUE;
                    this.d = i6;
                    char c3 = 5;
                    int i7 = i6 | ((bArr[5] & UByte.MAX_VALUE) << 8);
                    this.d = i7;
                    int i8 = ((bArr[6] & UByte.MAX_VALUE) << 16) | i7;
                    this.d = i8;
                    char c4 = 7;
                    int i9 = i8 | (bArr[7] << 24);
                    this.d = i9;
                    int i10 = bArr[8] & UByte.MAX_VALUE;
                    this.e = i10;
                    int i11 = i10 | ((bArr[9] & UByte.MAX_VALUE) << 8);
                    this.e = i11;
                    int i12 = i11 | ((bArr[10] & UByte.MAX_VALUE) << 16);
                    this.e = i12;
                    int i13 = i12 | (bArr[11] << 24);
                    this.e = i13;
                    int i14 = bArr[12] & UByte.MAX_VALUE;
                    this.f = i14;
                    int i15 = i14 | ((bArr[13] & UByte.MAX_VALUE) << 8);
                    this.f = i15;
                    int i16 = i15 | ((bArr[14] & UByte.MAX_VALUE) << 16);
                    this.f = i16;
                    char c5 = 15;
                    int i17 = (bArr[15] << 24) | i16;
                    this.f = i17;
                    int[] iArr2 = iArr[0];
                    this.f21988c = i5 ^ iArr2[0];
                    this.d = i9 ^ iArr2[1];
                    this.e = iArr2[2] ^ i13;
                    this.f = i17 ^ iArr2[3];
                    int i18 = 1;
                    while (true) {
                        int i19 = this.f21987a - 1;
                        int[] iArr3 = i;
                        if (i18 < i19) {
                            int b = (((iArr3[this.f21988c & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.d >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.e >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.f >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][0];
                            int b2 = (((iArr3[this.d & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.e >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.f >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.f21988c >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][1];
                            char c6 = c5;
                            int b3 = (((iArr3[this.e & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.f >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.f21988c >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.d >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][2];
                            char c7 = c2;
                            int i20 = i18 + 1;
                            int b4 = (((iArr3[this.f & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.f21988c >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.d >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.e >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][3];
                            this.f21988c = (((iArr3[b & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(b2 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(b3 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(b4 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i20][0];
                            this.d = (((iArr3[b2 & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(b3 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(b4 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(b >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i20][1];
                            this.e = (((iArr3[b3 & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(b4 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(b >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(b2 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i20][2];
                            i18 += 2;
                            this.f = (((b(iArr3[(b >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24) ^ iArr3[b4 & KotlinVersion.MAX_COMPONENT_VALUE]) ^ b(iArr3[(b2 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(b3 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i20][3];
                            c5 = c6;
                            c2 = c7;
                            c4 = c4;
                            c3 = c3;
                        } else {
                            char c8 = c5;
                            char c9 = c2;
                            char c10 = c4;
                            int b5 = (((iArr3[this.f21988c & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.d >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.e >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.f >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][0];
                            int b6 = (((iArr3[this.d & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.e >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.f >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.f21988c >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][1];
                            int b7 = (((iArr3[this.e & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.f >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.f21988c >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)) ^ b(iArr3[(this.d >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8)) ^ iArr[i18][2];
                            int i21 = i18 + 1;
                            int b8 = iArr[i18][3] ^ (b(iArr3[(this.e >> 24) & KotlinVersion.MAX_COMPONENT_VALUE], 8) ^ ((iArr3[this.f & KotlinVersion.MAX_COMPONENT_VALUE] ^ b(iArr3[(this.f21988c >> 8) & KotlinVersion.MAX_COMPONENT_VALUE], 24)) ^ b(iArr3[(this.d >> 16) & KotlinVersion.MAX_COMPONENT_VALUE], 16)));
                            int i22 = b5 & KotlinVersion.MAX_COMPONENT_VALUE;
                            byte[] bArr3 = g;
                            int i23 = (((bArr3[i22] & UByte.MAX_VALUE) ^ ((bArr3[(b6 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 8)) ^ ((bArr3[(b7 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 16)) ^ (bArr3[(b8 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE] << 24);
                            int[] iArr4 = iArr[i21];
                            int i24 = i23 ^ iArr4[0];
                            this.f21988c = i24;
                            int i25 = ((((bArr3[b6 & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) ^ ((bArr3[(b7 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 8)) ^ ((bArr3[(b8 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 16)) ^ (bArr3[(b5 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE] << 24)) ^ iArr4[1];
                            this.d = i25;
                            int i26 = ((((bArr3[b7 & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) ^ ((bArr3[(b8 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 8)) ^ ((bArr3[(b5 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 16)) ^ (bArr3[(b6 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE] << 24)) ^ iArr4[2];
                            this.e = i26;
                            int i27 = ((((bArr3[b8 & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) ^ ((bArr3[(b5 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 8)) ^ ((bArr3[(b6 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE] & UByte.MAX_VALUE) << 16)) ^ (bArr3[(b7 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE] << 24)) ^ iArr4[3];
                            this.f = i27;
                            bArr2[0] = (byte) i24;
                            bArr2[1] = (byte) (i24 >> 8);
                            bArr2[2] = (byte) (i24 >> 16);
                            bArr2[3] = (byte) (i24 >> 24);
                            bArr2[c9] = (byte) i25;
                            bArr2[c3] = (byte) (i25 >> 8);
                            bArr2[6] = (byte) (i25 >> 16);
                            bArr2[c10] = (byte) (i25 >> 24);
                            bArr2[8] = (byte) i26;
                            bArr2[9] = (byte) (i26 >> 8);
                            bArr2[10] = (byte) (i26 >> 16);
                            bArr2[11] = (byte) (i26 >> 24);
                            bArr2[12] = (byte) i27;
                            bArr2[13] = (byte) (i27 >> 8);
                            bArr2[14] = (byte) (i27 >> 16);
                            bArr2[c8] = (byte) (i27 >> 24);
                            return;
                        }
                    }
                } else {
                    throw new ZipException("output buffer too short");
                }
            } else {
                throw new ZipException("input buffer too short");
            }
        } else {
            throw new ZipException("AES engine not initialised");
        }
    }
}
