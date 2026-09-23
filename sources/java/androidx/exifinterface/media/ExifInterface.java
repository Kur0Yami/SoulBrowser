package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.support.v4.media.a;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import j$.util.DesugarCollections;
import j$.util.DesugarTimeZone;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import kotlin.KotlinVersion;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes.dex */
public class ExifInterface {
    public static final String[] G;
    public static final int[] H;
    public static final byte[] I;
    public static final ExifTag J;
    public static final ExifTag[][] K;
    public static final ExifTag[] L;
    public static final HashMap[] M;
    public static final HashMap[] N;
    public static final Set O;
    public static final HashMap P;
    public static final Charset Q;
    public static final byte[] R;
    public static final byte[] S;

    /* renamed from: a, reason: collision with root package name */
    public final String f1058a;
    public final FileDescriptor b;

    /* renamed from: c, reason: collision with root package name */
    public final AssetManager.AssetInputStream f1059c;
    public int d;
    public final boolean e;
    public final HashMap[] f;
    public final HashSet g;
    public ByteOrder h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public int m;
    public ExifAttribute n;
    public static final boolean o = Log.isLoggable("ExifInterface", 3);
    public static final List p = Arrays.asList(1, 6, 3, 8);
    public static final List q = Arrays.asList(2, 7, 4, 5);
    public static final int[] r = {8, 8, 8};
    public static final int[] s = {8};
    public static final byte[] t = {-1, -40, -1};
    public static final byte[] u = {102, 116, 121, 112};
    public static final byte[] v = {109, 105, 102, 49};
    public static final byte[] w = {104, 101, 105, 99};
    public static final byte[] x = {97, 118, 105, 102};
    public static final byte[] y = {97, 118, 105, 115};
    public static final byte[] z = {79, 76, 89, 77, 80, 0};
    public static final byte[] A = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    public static final byte[] B = {-119, 80, 78, 71, 13, 10, 26, 10};
    public static final byte[] C = "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000".getBytes(StandardCharsets.UTF_8);
    public static final byte[] D = {82, 73, 70, 70};
    public static final byte[] E = {87, 69, 66, 80};
    public static final byte[] F = {69, 88, 73, 70};

    /* loaded from: classes.dex */
    public static class ByteOrderedDataOutputStream extends FilterOutputStream {
        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) {
            throw null;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class ExifAttribute {

        /* renamed from: a, reason: collision with root package name */
        public final int f1062a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final long f1063c;
        public final byte[] d;

        public ExifAttribute(byte[] bArr, int i, int i2) {
            this(-1L, bArr, i, i2);
        }

        public static ExifAttribute a(long j, ByteOrder byteOrder) {
            long[] jArr = {j};
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.H[4]]);
            wrap.order(byteOrder);
            wrap.putInt((int) jArr[0]);
            return new ExifAttribute(wrap.array(), 4, 1);
        }

        public static ExifAttribute b(Rational rational, ByteOrder byteOrder) {
            Rational[] rationalArr = {rational};
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.H[5]]);
            wrap.order(byteOrder);
            Rational rational2 = rationalArr[0];
            wrap.putInt((int) rational2.f1066a);
            wrap.putInt((int) rational2.b);
            return new ExifAttribute(wrap.array(), 5, 1);
        }

        public static ExifAttribute c(int i, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.H[3]]);
            wrap.order(byteOrder);
            wrap.putShort((short) new int[]{i}[0]);
            return new ExifAttribute(wrap.array(), 3, 1);
        }

        public final double d(ByteOrder byteOrder) {
            Object g = g(byteOrder);
            if (g != null) {
                if (g instanceof String) {
                    return Double.parseDouble((String) g);
                }
                if (g instanceof long[]) {
                    if (((long[]) g).length == 1) {
                        return r5[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof int[]) {
                    if (((int[]) g).length == 1) {
                        return r5[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof double[]) {
                    double[] dArr = (double[]) g;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) g;
                    if (rationalArr.length == 1) {
                        Rational rational = rationalArr[0];
                        return rational.f1066a / rational.b;
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a double value");
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public final int e(ByteOrder byteOrder) {
            Object g = g(byteOrder);
            if (g != null) {
                if (g instanceof String) {
                    return Integer.parseInt((String) g);
                }
                if (g instanceof long[]) {
                    long[] jArr = (long[]) g;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof int[]) {
                    int[] iArr = (int[]) g;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a integer value");
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public final String f(ByteOrder byteOrder) {
            Object g = g(byteOrder);
            if (g != null) {
                if (g instanceof String) {
                    return (String) g;
                }
                StringBuilder sb = new StringBuilder();
                int i = 0;
                if (g instanceof long[]) {
                    long[] jArr = (long[]) g;
                    while (i < jArr.length) {
                        sb.append(jArr[i]);
                        i++;
                        if (i != jArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                if (g instanceof int[]) {
                    int[] iArr = (int[]) g;
                    while (i < iArr.length) {
                        sb.append(iArr[i]);
                        i++;
                        if (i != iArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                if (g instanceof double[]) {
                    double[] dArr = (double[]) g;
                    while (i < dArr.length) {
                        sb.append(dArr[i]);
                        i++;
                        if (i != dArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                if (g instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) g;
                    while (i < rationalArr.length) {
                        sb.append(rationalArr[i].f1066a);
                        sb.append('/');
                        sb.append(rationalArr[i].b);
                        i++;
                        if (i != rationalArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                return null;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0032: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:51), block:B:100:0x0032 */
        /* JADX WARN: Removed duplicated region for block: B:103:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r14v11, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r14v19, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r14v23, types: [int[]] */
        /* JADX WARN: Type inference failed for: r14v24, types: [long[]] */
        /* JADX WARN: Type inference failed for: r14v25, types: [androidx.exifinterface.media.ExifInterface$Rational[]] */
        /* JADX WARN: Type inference failed for: r14v26, types: [int[]] */
        /* JADX WARN: Type inference failed for: r14v27, types: [int[]] */
        /* JADX WARN: Type inference failed for: r14v28, types: [androidx.exifinterface.media.ExifInterface$Rational[]] */
        /* JADX WARN: Type inference failed for: r14v29, types: [double[]] */
        /* JADX WARN: Type inference failed for: r14v30, types: [java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r14v31, types: [double[]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.io.Serializable g(java.nio.ByteOrder r14) {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.ExifAttribute.g(java.nio.ByteOrder):java.io.Serializable");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(ExifInterface.G[this.f1062a]);
            sb.append(", data length:");
            return a.g(this.d.length, ")", sb);
        }

        public ExifAttribute(long j, byte[] bArr, int i, int i2) {
            this.f1062a = i;
            this.b = i2;
            this.f1063c = j;
            this.d = bArr;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ExifStreamType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface IfdType {
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class Rational {

        /* renamed from: a, reason: collision with root package name */
        public final long f1066a;
        public final long b;

        public Rational(long j, long j2) {
            if (j2 == 0) {
                this.f1066a = 0L;
                this.b = 1L;
            } else {
                this.f1066a = j;
                this.b = j2;
            }
        }

        public final String toString() {
            return this.f1066a + "/" + this.b;
        }
    }

    static {
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        G = new String[]{RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        H = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        I = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        ExifTag[] exifTagArr = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", KotlinVersion.MAX_COMPONENT_VALUE, 4), new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7), new ExifTag("Xmp", 700, 1)};
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("OECF", 34856, 7), new ExifTag("SensitivityType", 34864, 3), new ExifTag("StandardOutputSensitivity", 34865, 4), new ExifTag("RecommendedExposureIndex", 34866, 4), new ExifTag("ISOSpeed", 34867, 4), new ExifTag("ISOSpeedLatitudeyyy", 34868, 4), new ExifTag("ISOSpeedLatitudezzz", 34869, 4), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("OffsetTime", 36880, 2), new ExifTag("OffsetTimeOriginal", 36881, 2), new ExifTag("OffsetTimeDigitized", 36882, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("CameraOwnerName", 42032, 2), new ExifTag("BodySerialNumber", 42033, 2), new ExifTag("LensSpecification", 42034, 5), new ExifTag("LensMake", 42035, 2), new ExifTag("LensModel", 42036, 2), new ExifTag("Gamma", 42240, 5), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3), new ExifTag("GPSHPositioningError", 31, 5)};
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        ExifTag[] exifTagArr5 = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", KotlinVersion.MAX_COMPONENT_VALUE, 4), new ExifTag("ThumbnailImageWidth", 256, 3, 4), new ExifTag("ThumbnailImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("ThumbnailOrientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        J = new ExifTag("StripOffsets", 273, 3);
        K = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, new ExifTag[]{new ExifTag("ThumbnailImage", 256, 7), new ExifTag("CameraSettingsIFDPointer", 8224, 4), new ExifTag("ImageProcessingIFDPointer", 8256, 4)}, new ExifTag[]{new ExifTag("PreviewImageStart", 257, 4), new ExifTag("PreviewImageLength", 258, 4)}, new ExifTag[]{new ExifTag("AspectFrame", 4371, 3)}, new ExifTag[]{new ExifTag("ColorSpace", 55, 3)}};
        L = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("CameraSettingsIFDPointer", 8224, 1), new ExifTag("ImageProcessingIFDPointer", 8256, 1)};
        M = new HashMap[10];
        N = new HashMap[10];
        O = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance")));
        P = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        Q = forName;
        R = "Exif\u0000\u0000".getBytes(forName);
        S = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            ExifTag[][] exifTagArr6 = K;
            if (i < exifTagArr6.length) {
                M[i] = new HashMap();
                N[i] = new HashMap();
                for (ExifTag exifTag : exifTagArr6[i]) {
                    M[i].put(Integer.valueOf(exifTag.f1064a), exifTag);
                    N[i].put(exifTag.b, exifTag);
                }
                i++;
            } else {
                HashMap hashMap = P;
                ExifTag[] exifTagArr7 = L;
                hashMap.put(Integer.valueOf(exifTagArr7[0].f1064a), 5);
                hashMap.put(Integer.valueOf(exifTagArr7[1].f1064a), 1);
                hashMap.put(Integer.valueOf(exifTagArr7[2].f1064a), 2);
                hashMap.put(Integer.valueOf(exifTagArr7[3].f1064a), 3);
                hashMap.put(Integer.valueOf(exifTagArr7[4].f1064a), 7);
                hashMap.put(Integer.valueOf(exifTagArr7[5].f1064a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
        }
    }

    public ExifInterface(String str) {
        FileInputStream fileInputStream;
        boolean z2;
        ExifTag[][] exifTagArr = K;
        this.f = new HashMap[exifTagArr.length];
        this.g = new HashSet(exifTagArr.length);
        this.h = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            FileInputStream fileInputStream2 = null;
            this.f1059c = null;
            this.f1058a = str;
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                    z2 = true;
                } catch (Exception unused) {
                    if (o) {
                        Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                    }
                    z2 = false;
                }
                if (z2) {
                    this.b = fileInputStream.getFD();
                } else {
                    this.b = null;
                }
                q(fileInputStream);
                try {
                    fileInputStream.close();
                    return;
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused2) {
                    return;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        }
        throw new NullPointerException("filename cannot be null");
    }

    public static ByteOrder t(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        short readShort = byteOrderedDataInputStream.readShort();
        boolean z2 = o;
        if (readShort != 18761) {
            if (readShort == 19789) {
                if (z2) {
                    Log.d("ExifInterface", "readExifSegment: Byte Align MM");
                }
                return ByteOrder.BIG_ENDIAN;
            }
            throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
        }
        if (z2) {
            Log.d("ExifInterface", "readExifSegment: Byte Align II");
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    public final void A() {
        y(0, 5);
        y(0, 4);
        y(5, 4);
        HashMap[] hashMapArr = this.f;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[1].get("PixelYDimension");
        if (exifAttribute != null && exifAttribute2 != null) {
            hashMapArr[0].put("ImageWidth", exifAttribute);
            hashMapArr[0].put("ImageLength", exifAttribute2);
        }
        if (hashMapArr[4].isEmpty() && p(hashMapArr[5])) {
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        if (!p(hashMapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        w(0, "ThumbnailOrientation", "Orientation");
        w(0, "ThumbnailImageLength", "ImageLength");
        w(0, "ThumbnailImageWidth", "ImageWidth");
        w(5, "ThumbnailOrientation", "Orientation");
        w(5, "ThumbnailImageLength", "ImageLength");
        w(5, "ThumbnailImageWidth", "ImageWidth");
        w(4, "Orientation", "ThumbnailOrientation");
        w(4, "ImageLength", "ThumbnailImageLength");
        w(4, "ImageWidth", "ThumbnailImageWidth");
    }

    public final void a() {
        String b = b("DateTimeOriginal");
        HashMap[] hashMapArr = this.f;
        if (b != null && b("DateTime") == null) {
            HashMap hashMap = hashMapArr[0];
            byte[] bytes = b.concat(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR).getBytes(Q);
            hashMap.put("DateTime", new ExifAttribute(bytes, 2, bytes.length));
        }
        if (b("ImageWidth") == null) {
            hashMapArr[0].put("ImageWidth", ExifAttribute.a(0L, this.h));
        }
        if (b("ImageLength") == null) {
            hashMapArr[0].put("ImageLength", ExifAttribute.a(0L, this.h));
        }
        if (b("Orientation") == null) {
            hashMapArr[0].put("Orientation", ExifAttribute.a(0L, this.h));
        }
        if (b("LightSource") == null) {
            hashMapArr[1].put("LightSource", ExifAttribute.a(0L, this.h));
        }
    }

    public final String b(String str) {
        ExifAttribute d = d(str);
        if (d != null) {
            int i = d.f1062a;
            if (str.equals("GPSTimeStamp")) {
                if (i != 5 && i != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i);
                    return null;
                }
                Rational[] rationalArr = (Rational[]) d.g(this.h);
                if (rationalArr != null && rationalArr.length == 3) {
                    Rational rational = rationalArr[0];
                    Integer valueOf = Integer.valueOf((int) (((float) rational.f1066a) / ((float) rational.b)));
                    Rational rational2 = rationalArr[1];
                    Integer valueOf2 = Integer.valueOf((int) (((float) rational2.f1066a) / ((float) rational2.b)));
                    Rational rational3 = rationalArr[2];
                    return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) rational3.f1066a) / ((float) rational3.b))));
                }
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(rationalArr));
                return null;
            }
            if (O.contains(str)) {
                try {
                    return Double.toString(d.d(this.h));
                } catch (NumberFormatException unused) {
                }
            } else {
                return d.f(this.h);
            }
        }
        return null;
    }

    public final int c() {
        ExifAttribute d = d("Orientation");
        if (d != null) {
            try {
                return d.e(this.h);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }
        return 1;
    }

    public final ExifAttribute d(String str) {
        ExifAttribute exifAttribute;
        int i;
        ExifAttribute exifAttribute2;
        if ("ISOSpeedRatings".equals(str)) {
            if (o) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        if ("Xmp".equals(str) && (i = this.d) != 4 && ((i == 9 || i == 15 || i == 12 || i == 13) && (exifAttribute2 = this.n) != null)) {
            return exifAttribute2;
        }
        for (int i2 = 0; i2 < K.length; i2++) {
            ExifAttribute exifAttribute3 = (ExifAttribute) this.f[i2].get(str);
            if (exifAttribute3 != null) {
                return exifAttribute3;
            }
        }
        if ("Xmp".equals(str) && (exifAttribute = this.n) != null) {
            return exifAttribute;
        }
        return null;
    }

    public final void e(final SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        String str;
        String str2;
        String str3;
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 28) {
            if (i == 15 && i3 < 31) {
                throw new UnsupportedOperationException("Reading EXIF from AVIF files is supported from SDK 31 and above");
            }
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    mediaMetadataRetriever.setDataSource(new MediaDataSource() { // from class: androidx.exifinterface.media.ExifInterface.1

                        /* renamed from: c, reason: collision with root package name */
                        public long f1060c;

                        @Override // java.io.Closeable, java.lang.AutoCloseable
                        public final void close() {
                        }

                        @Override // android.media.MediaDataSource
                        public final long getSize() {
                            return -1L;
                        }

                        @Override // android.media.MediaDataSource
                        public final int readAt(long j, byte[] bArr, int i4, int i5) {
                            if (i5 == 0) {
                                return 0;
                            }
                            if (j < 0) {
                                return -1;
                            }
                            try {
                                long j2 = this.f1060c;
                                SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = SeekableByteOrderedDataInputStream.this;
                                if (j2 != j) {
                                    if (j2 >= 0 && j >= j2 + seekableByteOrderedDataInputStream2.f1061c.available()) {
                                        return -1;
                                    }
                                    seekableByteOrderedDataInputStream2.b(j);
                                    this.f1060c = j;
                                }
                                if (i5 > seekableByteOrderedDataInputStream2.f1061c.available()) {
                                    i5 = seekableByteOrderedDataInputStream2.f1061c.available();
                                }
                                int read = seekableByteOrderedDataInputStream2.read(bArr, i4, i5);
                                if (read >= 0) {
                                    this.f1060c += read;
                                    return read;
                                }
                            } catch (IOException unused) {
                            }
                            this.f1060c = -1L;
                            return -1;
                        }
                    });
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                    String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                    String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                    String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                    if ("yes".equals(extractMetadata3)) {
                        str = mediaMetadataRetriever.extractMetadata(29);
                        str3 = mediaMetadataRetriever.extractMetadata(30);
                        str2 = mediaMetadataRetriever.extractMetadata(31);
                    } else if ("yes".equals(extractMetadata4)) {
                        str = mediaMetadataRetriever.extractMetadata(18);
                        str3 = mediaMetadataRetriever.extractMetadata(19);
                        str2 = mediaMetadataRetriever.extractMetadata(24);
                    } else {
                        str = null;
                        str2 = null;
                        str3 = null;
                    }
                    HashMap[] hashMapArr = this.f;
                    if (str != null) {
                        hashMapArr[0].put("ImageWidth", ExifAttribute.c(Integer.parseInt(str), this.h));
                    }
                    if (str3 != null) {
                        hashMapArr[0].put("ImageLength", ExifAttribute.c(Integer.parseInt(str3), this.h));
                    }
                    if (str2 != null) {
                        int parseInt = Integer.parseInt(str2);
                        if (parseInt != 90) {
                            if (parseInt != 180) {
                                if (parseInt != 270) {
                                    i2 = 1;
                                } else {
                                    i2 = 8;
                                }
                            } else {
                                i2 = 3;
                            }
                        } else {
                            i2 = 6;
                        }
                        hashMapArr[0].put("Orientation", ExifAttribute.c(i2, this.h));
                    }
                    if (extractMetadata != null && extractMetadata2 != null) {
                        int parseInt2 = Integer.parseInt(extractMetadata);
                        int parseInt3 = Integer.parseInt(extractMetadata2);
                        if (parseInt3 > 6) {
                            seekableByteOrderedDataInputStream.b(parseInt2);
                            byte[] bArr = new byte[6];
                            seekableByteOrderedDataInputStream.readFully(bArr);
                            int i4 = parseInt2 + 6;
                            int i5 = parseInt3 - 6;
                            if (Arrays.equals(bArr, R)) {
                                byte[] bArr2 = new byte[i5];
                                seekableByteOrderedDataInputStream.readFully(bArr2);
                                this.j = i4;
                                u(bArr2, 0);
                            } else {
                                throw new IOException("Invalid identifier");
                            }
                        } else {
                            throw new IOException("Invalid exif length");
                        }
                    }
                    String extractMetadata5 = mediaMetadataRetriever.extractMetadata(41);
                    String extractMetadata6 = mediaMetadataRetriever.extractMetadata(42);
                    if (extractMetadata5 != null && extractMetadata6 != null) {
                        int parseInt4 = Integer.parseInt(extractMetadata5);
                        int parseInt5 = Integer.parseInt(extractMetadata6);
                        long j = parseInt4;
                        seekableByteOrderedDataInputStream.b(j);
                        byte[] bArr3 = new byte[parseInt5];
                        seekableByteOrderedDataInputStream.readFully(bArr3);
                        this.n = new ExifAttribute(j, bArr3, 1, parseInt5);
                    }
                    if (o) {
                        Log.d("ExifInterface", "Heif meta: " + str + "x" + str3 + ", rotation " + str2);
                    }
                    try {
                        mediaMetadataRetriever.release();
                    } catch (IOException unused) {
                    }
                } catch (RuntimeException e) {
                    throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.", e);
                }
            } finally {
            }
        } else {
            throw new UnsupportedOperationException("Reading EXIF from HEIC files is supported from SDK 28 and above");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0172, code lost:
    
        r23.g = r22.h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0176, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00a5. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x00a8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015f A[LOOP:0: B:9:0x0034->B:35:0x015f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.f(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x0062, code lost:
    
        if (r9 < 16) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x00ec, code lost:
    
        if (r8 != null) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0163 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int g(java.io.BufferedInputStream r18) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.g(java.io.BufferedInputStream):int");
    }

    public final void h(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        int i;
        int i2;
        k(seekableByteOrderedDataInputStream);
        HashMap[] hashMapArr = this.f;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("MakerNote");
        if (exifAttribute != null) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.d);
            seekableByteOrderedDataInputStream2.g = this.h;
            byte[] bArr = z;
            byte[] bArr2 = new byte[bArr.length];
            seekableByteOrderedDataInputStream2.readFully(bArr2);
            seekableByteOrderedDataInputStream2.b(0L);
            byte[] bArr3 = A;
            byte[] bArr4 = new byte[bArr3.length];
            seekableByteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                seekableByteOrderedDataInputStream2.b(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                seekableByteOrderedDataInputStream2.b(12L);
            }
            v(seekableByteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[7].get("PreviewImageStart");
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[7].get("PreviewImageLength");
            if (exifAttribute2 != null && exifAttribute3 != null) {
                hashMapArr[5].put("JPEGInterchangeFormat", exifAttribute2);
                hashMapArr[5].put("JPEGInterchangeFormatLength", exifAttribute3);
            }
            ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[8].get("AspectFrame");
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.g(this.h);
                if (iArr != null && iArr.length == 4) {
                    int i3 = iArr[2];
                    int i4 = iArr[0];
                    if (i3 > i4 && (i = iArr[3]) > (i2 = iArr[1])) {
                        int i5 = (i3 - i4) + 1;
                        int i6 = (i - i2) + 1;
                        if (i5 < i6) {
                            int i7 = i5 + i6;
                            i6 = i7 - i6;
                            i5 = i7 - i6;
                        }
                        ExifAttribute c2 = ExifAttribute.c(i5, this.h);
                        ExifAttribute c3 = ExifAttribute.c(i6, this.h);
                        hashMapArr[0].put("ImageWidth", c2);
                        hashMapArr[0].put("ImageLength", c3);
                        return;
                    }
                    return;
                }
                Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
            }
        }
    }

    public final void i(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        if (o) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.g = ByteOrder.BIG_ENDIAN;
        int i = byteOrderedDataInputStream.f;
        byteOrderedDataInputStream.a(B.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (!z2 || !z3) {
                try {
                    int readInt = byteOrderedDataInputStream.readInt();
                    int readInt2 = byteOrderedDataInputStream.readInt();
                    int i2 = byteOrderedDataInputStream.f;
                    int i3 = i2 + readInt + 4;
                    int i4 = i2 - i;
                    if (i4 == 16 && readInt2 != 1229472850) {
                        throw new IOException("Encountered invalid PNG file--IHDR chunk should appear as the first chunk");
                    }
                    if (readInt2 == 1229278788) {
                        return;
                    }
                    if (readInt2 == 1700284774 && !z2) {
                        this.j = i4;
                        byte[] bArr = new byte[readInt];
                        byteOrderedDataInputStream.readFully(bArr);
                        int readInt3 = byteOrderedDataInputStream.readInt();
                        CRC32 crc32 = new CRC32();
                        crc32.update(readInt2 >>> 24);
                        crc32.update(readInt2 >>> 16);
                        crc32.update(readInt2 >>> 8);
                        crc32.update(readInt2);
                        crc32.update(bArr);
                        if (((int) crc32.getValue()) == readInt3) {
                            u(bArr, 0);
                            A();
                            x(new ByteOrderedDataInputStream(bArr));
                            z2 = true;
                        } else {
                            throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt3 + ", calculated CRC value: " + crc32.getValue());
                        }
                    } else if (readInt2 == 1767135348 && !z3) {
                        byte[] bArr2 = C;
                        if (readInt >= bArr2.length) {
                            int length = bArr2.length;
                            byte[] bArr3 = new byte[length];
                            byteOrderedDataInputStream.readFully(bArr3);
                            if (Arrays.equals(bArr3, bArr2)) {
                                int i5 = byteOrderedDataInputStream.f - i;
                                int i6 = readInt - length;
                                byte[] bArr4 = new byte[i6];
                                byteOrderedDataInputStream.readFully(bArr4);
                                this.n = new ExifAttribute(i5, bArr4, 1, i6);
                                z3 = true;
                            }
                        }
                    }
                    byteOrderedDataInputStream.a(i3 - byteOrderedDataInputStream.f);
                } catch (EOFException e) {
                    throw new IOException("Encountered corrupt PNG file.", e);
                }
            } else {
                return;
            }
        }
    }

    public final void j(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        boolean z2 = o;
        if (z2) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.a(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        byteOrderedDataInputStream.readFully(bArr);
        byteOrderedDataInputStream.readFully(bArr2);
        byteOrderedDataInputStream.readFully(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        byteOrderedDataInputStream.a(i - byteOrderedDataInputStream.f);
        byteOrderedDataInputStream.readFully(bArr4);
        f(new ByteOrderedDataInputStream(bArr4), i, 5);
        byteOrderedDataInputStream.a(i3 - byteOrderedDataInputStream.f);
        byteOrderedDataInputStream.g = ByteOrder.BIG_ENDIAN;
        int readInt = byteOrderedDataInputStream.readInt();
        if (z2) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + readInt);
        }
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (readUnsignedShort == J.f1064a) {
                short readShort = byteOrderedDataInputStream.readShort();
                short readShort2 = byteOrderedDataInputStream.readShort();
                ExifAttribute c2 = ExifAttribute.c(readShort, this.h);
                ExifAttribute c3 = ExifAttribute.c(readShort2, this.h);
                HashMap[] hashMapArr = this.f;
                hashMapArr[0].put("ImageLength", c2);
                hashMapArr[0].put("ImageWidth", c3);
                if (z2) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                    return;
                }
                return;
            }
            byteOrderedDataInputStream.a(readUnsignedShort2);
        }
    }

    public final void k(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        r(seekableByteOrderedDataInputStream);
        v(seekableByteOrderedDataInputStream, 0);
        z(seekableByteOrderedDataInputStream, 0);
        z(seekableByteOrderedDataInputStream, 5);
        z(seekableByteOrderedDataInputStream, 4);
        A();
        if (this.d == 8) {
            HashMap[] hashMapArr = this.f;
            ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("MakerNote");
            if (exifAttribute != null) {
                SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.d);
                seekableByteOrderedDataInputStream2.g = this.h;
                seekableByteOrderedDataInputStream2.a(6);
                v(seekableByteOrderedDataInputStream2, 9);
                ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[9].get("ColorSpace");
                if (exifAttribute2 != null) {
                    hashMapArr[1].put("ColorSpace", exifAttribute2);
                }
            }
        }
    }

    public final void l(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        if (o) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + seekableByteOrderedDataInputStream);
        }
        k(seekableByteOrderedDataInputStream);
        HashMap[] hashMapArr = this.f;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[0].get("JpgFromRaw");
        if (exifAttribute != null) {
            f(new ByteOrderedDataInputStream(exifAttribute.d), (int) exifAttribute.f1063c, 5);
        }
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[0].get("ISO");
        ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[1].get("PhotographicSensitivity");
        if (exifAttribute2 != null && exifAttribute3 == null) {
            hashMapArr[1].put("PhotographicSensitivity", exifAttribute2);
        }
    }

    public final boolean m(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        byte[] bArr = R;
        byte[] bArr2 = new byte[bArr.length];
        seekableByteOrderedDataInputStream.readFully(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            Log.w("ExifInterface", "Given data is not EXIF-only.");
            return false;
        }
        byte[] bArr3 = new byte[1024];
        int i = 0;
        while (true) {
            if (i == bArr3.length) {
                bArr3 = Arrays.copyOf(bArr3, bArr3.length * 2);
            }
            int read = seekableByteOrderedDataInputStream.f1061c.read(bArr3, i, bArr3.length - i);
            if (read != -1) {
                i += read;
                seekableByteOrderedDataInputStream.f += read;
            } else {
                byte[] copyOf = Arrays.copyOf(bArr3, i);
                this.j = bArr.length;
                u(copyOf, 0);
                return true;
            }
        }
    }

    public final void n(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        if (o) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.g = ByteOrder.LITTLE_ENDIAN;
        byteOrderedDataInputStream.a(D.length);
        int readInt = byteOrderedDataInputStream.readInt() + 8;
        byte[] bArr = E;
        byteOrderedDataInputStream.a(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr2);
                int readInt2 = byteOrderedDataInputStream.readInt();
                int i = length + 8;
                if (Arrays.equals(F, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    byteOrderedDataInputStream.readFully(bArr3);
                    byte[] bArr4 = R;
                    if (ExifInterfaceUtils.b(bArr3, bArr4)) {
                        bArr3 = Arrays.copyOfRange(bArr3, bArr4.length, readInt2);
                    }
                    this.j = i;
                    u(bArr3, 0);
                    x(new ByteOrderedDataInputStream(bArr3));
                    return;
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length <= readInt) {
                    byteOrderedDataInputStream.a(readInt2);
                } else {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt WebP file.", e);
            }
        }
    }

    public final void o(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("JPEGInterchangeFormatLength");
        if (exifAttribute != null && exifAttribute2 != null) {
            int e = exifAttribute.e(this.h);
            int e2 = exifAttribute2.e(this.h);
            if (this.d == 7) {
                e += this.k;
            }
            if (e > 0 && e2 > 0 && this.f1058a == null && this.f1059c == null && this.b == null) {
                byteOrderedDataInputStream.a(e);
                byteOrderedDataInputStream.readFully(new byte[e2]);
            }
            if (o) {
                Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + e + ", length: " + e2);
            }
        }
    }

    public final boolean p(HashMap hashMap) {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("ImageWidth");
        if (exifAttribute != null && exifAttribute2 != null) {
            int e = exifAttribute.e(this.h);
            int e2 = exifAttribute2.e(this.h);
            if (e <= 512 && e2 <= 512) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(java.io.InputStream r9) {
        /*
            r8 = this;
            boolean r0 = androidx.exifinterface.media.ExifInterface.o
            r1 = 0
            r2 = r1
        L4:
            androidx.exifinterface.media.ExifInterface$ExifTag[][] r3 = androidx.exifinterface.media.ExifInterface.K     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r3 = r3.length     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r2 >= r3) goto L1e
            java.util.HashMap[] r3 = r8.f     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            java.util.HashMap r4 = new java.util.HashMap     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r4.<init>()     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r3[r2] = r4     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r2 = r2 + 1
            goto L4
        L15:
            r9 = move-exception
            goto Lb4
        L18:
            r9 = move-exception
            goto Laa
        L1b:
            r9 = move-exception
            goto Laa
        L1e:
            boolean r2 = r8.e
            if (r2 != 0) goto L30
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r4 = 5000(0x1388, float:7.006E-42)
            r3.<init>(r9, r4)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r9 = r8.g(r3)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r8.d = r9     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r9 = r3
        L30:
            int r3 = r8.d     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r4 = 14
            r5 = 13
            r6 = 9
            r7 = 4
            if (r3 == r7) goto L83
            if (r3 == r6) goto L83
            if (r3 == r5) goto L83
            if (r3 != r4) goto L42
            goto L83
        L42:
            androidx.exifinterface.media.ExifInterface$SeekableByteOrderedDataInputStream r1 = new androidx.exifinterface.media.ExifInterface$SeekableByteOrderedDataInputStream     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r2 == 0) goto L58
            boolean r9 = r8.m(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r9 != 0) goto L79
            r8.a()
            if (r0 == 0) goto Lc5
            r8.s()
            return
        L58:
            int r9 = r8.d     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r2 = 12
            if (r9 == r2) goto L76
            r2 = 15
            if (r9 != r2) goto L63
            goto L76
        L63:
            r2 = 7
            if (r9 != r2) goto L6a
            r8.h(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L79
        L6a:
            r2 = 10
            if (r9 != r2) goto L72
            r8.l(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L79
        L72:
            r8.k(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto L79
        L76:
            r8.e(r1, r9)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
        L79:
            int r9 = r8.j     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            long r2 = (long) r9     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r1.b(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r8.x(r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto La1
        L83:
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream r2 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            int r9 = r8.d     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            if (r9 != r7) goto L90
            r8.f(r2, r1, r1)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto La1
        L90:
            if (r9 != r5) goto L96
            r8.i(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto La1
        L96:
            if (r9 != r6) goto L9c
            r8.j(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
            goto La1
        L9c:
            if (r9 != r4) goto La1
            r8.n(r2)     // Catch: java.lang.Throwable -> L15 java.lang.UnsupportedOperationException -> L18 java.io.IOException -> L1b
        La1:
            r8.a()
            if (r0 == 0) goto Lc5
            r8.s()
            return
        Laa:
            if (r0 == 0) goto Lbd
            java.lang.String r1 = "ExifInterface"
            java.lang.String r2 = "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."
            android.util.Log.w(r1, r2, r9)     // Catch: java.lang.Throwable -> L15
            goto Lbd
        Lb4:
            r8.a()
            if (r0 == 0) goto Lbc
            r8.s()
        Lbc:
            throw r9
        Lbd:
            r8.a()
            if (r0 == 0) goto Lc5
            r8.s()
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.q(java.io.InputStream):void");
    }

    public final void r(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        ByteOrder t2 = t(seekableByteOrderedDataInputStream);
        this.h = t2;
        seekableByteOrderedDataInputStream.g = t2;
        int readUnsignedShort = seekableByteOrderedDataInputStream.readUnsignedShort();
        int i = this.d;
        if (i != 7 && i != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = seekableByteOrderedDataInputStream.readInt();
        if (readInt >= 8) {
            int i2 = readInt - 8;
            if (i2 > 0) {
                seekableByteOrderedDataInputStream.a(i2);
                return;
            }
            return;
        }
        throw new IOException(a.e(readInt, "Invalid first Ifd offset: "));
    }

    public final void s() {
        int i = 0;
        while (true) {
            HashMap[] hashMapArr = this.f;
            if (i < hashMapArr.length) {
                StringBuilder s2 = a.s(i, "The size of tag group[", "]: ");
                s2.append(hashMapArr[i].size());
                Log.d("ExifInterface", s2.toString());
                for (Map.Entry entry : hashMapArr[i].entrySet()) {
                    ExifAttribute exifAttribute = (ExifAttribute) entry.getValue();
                    Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + exifAttribute.toString() + ", tagValue: '" + exifAttribute.f(this.h) + "'");
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final void u(byte[] bArr, int i) {
        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(bArr);
        r(seekableByteOrderedDataInputStream);
        v(seekableByteOrderedDataInputStream, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(androidx.exifinterface.media.ExifInterface.SeekableByteOrderedDataInputStream r36, int r37) {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.v(androidx.exifinterface.media.ExifInterface$SeekableByteOrderedDataInputStream, int):void");
    }

    public final void w(int i, String str, String str2) {
        HashMap[] hashMapArr = this.f;
        if (!hashMapArr[i].isEmpty() && hashMapArr[i].get(str) != null) {
            HashMap hashMap = hashMapArr[i];
            hashMap.put(str2, (ExifAttribute) hashMap.get(str));
            hashMapArr[i].remove(str);
        }
    }

    public final void x(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        ExifAttribute exifAttribute;
        int e;
        HashMap hashMap = this.f[4];
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("Compression");
        if (exifAttribute2 != null) {
            int e2 = exifAttribute2.e(this.h);
            if (e2 != 1) {
                if (e2 != 6) {
                    if (e2 != 7) {
                        return;
                    }
                } else {
                    o(byteOrderedDataInputStream, hashMap);
                    return;
                }
            }
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMap.get("BitsPerSample");
            if (exifAttribute3 != null) {
                int[] iArr = (int[]) exifAttribute3.g(this.h);
                int[] iArr2 = r;
                if (Arrays.equals(iArr2, iArr) || (this.d == 3 && (exifAttribute = (ExifAttribute) hashMap.get("PhotometricInterpretation")) != null && (((e = exifAttribute.e(this.h)) == 1 && Arrays.equals(iArr, s)) || (e == 6 && Arrays.equals(iArr, iArr2))))) {
                    ExifAttribute exifAttribute4 = (ExifAttribute) hashMap.get("StripOffsets");
                    ExifAttribute exifAttribute5 = (ExifAttribute) hashMap.get("StripByteCounts");
                    if (exifAttribute4 != null && exifAttribute5 != null) {
                        long[] a2 = ExifInterfaceUtils.a(exifAttribute4.g(this.h));
                        long[] a3 = ExifInterfaceUtils.a(exifAttribute5.g(this.h));
                        if (a2 != null && a2.length != 0) {
                            if (a3 != null && a3.length != 0) {
                                if (a2.length != a3.length) {
                                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                                    return;
                                }
                                long j = 0;
                                for (long j2 : a3) {
                                    j += j2;
                                }
                                byte[] bArr = new byte[(int) j];
                                this.i = true;
                                int i = 0;
                                int i2 = 0;
                                for (int i3 = 0; i3 < a2.length; i3++) {
                                    int i4 = (int) a2[i3];
                                    int i5 = (int) a3[i3];
                                    if (i3 < a2.length - 1 && i4 + i5 != a2[i3 + 1]) {
                                        this.i = false;
                                    }
                                    int i6 = i4 - i;
                                    if (i6 < 0) {
                                        Log.d("ExifInterface", "Invalid strip offset value");
                                        return;
                                    }
                                    try {
                                        byteOrderedDataInputStream.a(i6);
                                        int i7 = i + i6;
                                        byte[] bArr2 = new byte[i5];
                                        try {
                                            byteOrderedDataInputStream.readFully(bArr2);
                                            i = i7 + i5;
                                            System.arraycopy(bArr2, 0, bArr, i2, i5);
                                            i2 += i5;
                                        } catch (EOFException unused) {
                                            Log.d("ExifInterface", "Failed to read " + i5 + " bytes.");
                                            return;
                                        }
                                    } catch (EOFException unused2) {
                                        Log.d("ExifInterface", "Failed to skip " + i6 + " bytes.");
                                        return;
                                    }
                                }
                                if (this.i) {
                                    long j3 = a2[0];
                                    return;
                                }
                                return;
                            }
                            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                            return;
                        }
                        Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                        return;
                    }
                    return;
                }
            }
            if (o) {
                Log.d("ExifInterface", "Unsupported data type value");
                return;
            }
            return;
        }
        o(byteOrderedDataInputStream, hashMap);
    }

    public final void y(int i, int i2) {
        HashMap[] hashMapArr = this.f;
        boolean isEmpty = hashMapArr[i].isEmpty();
        boolean z2 = o;
        if (!isEmpty && !hashMapArr[i2].isEmpty()) {
            ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[i].get("ImageLength");
            ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[i].get("ImageWidth");
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[i2].get("ImageLength");
            ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[i2].get("ImageWidth");
            if (exifAttribute != null && exifAttribute2 != null) {
                if (exifAttribute3 != null && exifAttribute4 != null) {
                    int e = exifAttribute.e(this.h);
                    int e2 = exifAttribute2.e(this.h);
                    int e3 = exifAttribute3.e(this.h);
                    int e4 = exifAttribute4.e(this.h);
                    if (e < e3 && e2 < e4) {
                        HashMap hashMap = hashMapArr[i];
                        hashMapArr[i] = hashMapArr[i2];
                        hashMapArr[i2] = hashMap;
                        return;
                    }
                    return;
                }
                if (z2) {
                    Log.d("ExifInterface", "Second image does not contain valid size information");
                    return;
                }
                return;
            }
            if (z2) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (z2) {
            Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
        }
    }

    public final void z(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        ExifAttribute c2;
        ExifAttribute c3;
        HashMap[] hashMapArr = this.f;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[i].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[i].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[i].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[i].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = (ExifAttribute) hashMapArr[i].get("SensorRightBorder");
        if (exifAttribute != null) {
            if (exifAttribute.f1062a == 5) {
                Rational[] rationalArr = (Rational[]) exifAttribute.g(this.h);
                if (rationalArr != null && rationalArr.length == 2) {
                    c2 = ExifAttribute.b(rationalArr[0], this.h);
                    c3 = ExifAttribute.b(rationalArr[1], this.h);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(rationalArr));
                    return;
                }
            } else {
                int[] iArr = (int[]) exifAttribute.g(this.h);
                if (iArr != null && iArr.length == 2) {
                    c2 = ExifAttribute.c(iArr[0], this.h);
                    c3 = ExifAttribute.c(iArr[1], this.h);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
            }
            hashMapArr[i].put("ImageWidth", c2);
            hashMapArr[i].put("ImageLength", c3);
            return;
        }
        if (exifAttribute2 != null && exifAttribute3 != null && exifAttribute4 != null && exifAttribute5 != null) {
            int e = exifAttribute2.e(this.h);
            int e2 = exifAttribute4.e(this.h);
            int e3 = exifAttribute5.e(this.h);
            int e4 = exifAttribute3.e(this.h);
            if (e2 > e && e3 > e4) {
                ExifAttribute c4 = ExifAttribute.c(e2 - e, this.h);
                ExifAttribute c5 = ExifAttribute.c(e3 - e4, this.h);
                hashMapArr[i].put("ImageLength", c4);
                hashMapArr[i].put("ImageWidth", c5);
                return;
            }
            return;
        }
        ExifAttribute exifAttribute6 = (ExifAttribute) hashMapArr[i].get("ImageLength");
        ExifAttribute exifAttribute7 = (ExifAttribute) hashMapArr[i].get("ImageWidth");
        if (exifAttribute6 == null || exifAttribute7 == null) {
            ExifAttribute exifAttribute8 = (ExifAttribute) hashMapArr[i].get("JPEGInterchangeFormat");
            ExifAttribute exifAttribute9 = (ExifAttribute) hashMapArr[i].get("JPEGInterchangeFormatLength");
            if (exifAttribute8 != null && exifAttribute9 != null) {
                int e5 = exifAttribute8.e(this.h);
                int e6 = exifAttribute8.e(this.h);
                seekableByteOrderedDataInputStream.b(e5);
                byte[] bArr = new byte[e6];
                seekableByteOrderedDataInputStream.readFully(bArr);
                f(new ByteOrderedDataInputStream(bArr), e5, i);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {

        /* renamed from: c, reason: collision with root package name */
        public final DataInputStream f1061c;
        public int f;
        public ByteOrder g;
        public byte[] h;
        public final int i;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ByteOrderedDataInputStream(byte[] r3) {
            /*
                r2 = this;
                java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
                r0.<init>(r3)
                java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
                r1 = 0
                r2.<init>(r0, r1)
                int r3 = r3.length
                r2.i = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream.<init>(byte[]):void");
        }

        public final void a(int i) {
            int i2 = 0;
            while (i2 < i) {
                int i3 = i - i2;
                DataInputStream dataInputStream = this.f1061c;
                int skip = (int) dataInputStream.skip(i3);
                if (skip <= 0) {
                    if (this.h == null) {
                        this.h = new byte[8192];
                    }
                    skip = dataInputStream.read(this.h, 0, Math.min(8192, i3));
                    if (skip == -1) {
                        throw new EOFException(a.f(i, "Reached EOF while skipping ", " bytes."));
                    }
                }
                i2 += skip;
            }
            this.f += i2;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f1061c.available();
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public final int read() {
            this.f++;
            return this.f1061c.read();
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() {
            this.f++;
            return this.f1061c.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() {
            this.f++;
            int read = this.f1061c.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final char readChar() {
            this.f += 2;
            return this.f1061c.readChar();
        }

        @Override // java.io.DataInput
        public final double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public final float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i, int i2) {
            this.f += i2;
            this.f1061c.readFully(bArr, i, i2);
        }

        @Override // java.io.DataInput
        public final int readInt() {
            this.f += 4;
            DataInputStream dataInputStream = this.f1061c;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            int read3 = dataInputStream.read();
            int read4 = dataInputStream.read();
            if ((read | read2 | read3 | read4) >= 0) {
                ByteOrder byteOrder = this.g;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                throw new IOException("Invalid byte order: " + this.g);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() {
            long j;
            long j2;
            this.f += 8;
            DataInputStream dataInputStream = this.f1061c;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            int read3 = dataInputStream.read();
            int read4 = dataInputStream.read();
            int read5 = dataInputStream.read();
            int read6 = dataInputStream.read();
            int read7 = dataInputStream.read();
            int read8 = dataInputStream.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                ByteOrder byteOrder = this.g;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    j = (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8);
                    j2 = read;
                } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    j = (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8);
                    j2 = read8;
                } else {
                    throw new IOException("Invalid byte order: " + this.g);
                }
                return j + j2;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final short readShort() {
            this.f += 2;
            DataInputStream dataInputStream = this.f1061c;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.g;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (short) ((read << 8) + read2);
                }
                throw new IOException("Invalid byte order: " + this.g);
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readUTF() {
            this.f += 2;
            return this.f1061c.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() {
            this.f++;
            return this.f1061c.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() {
            this.f += 2;
            DataInputStream dataInputStream = this.f1061c;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.g;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 8) + read2;
                }
                throw new IOException("Invalid byte order: " + this.g);
            }
            throw new EOFException();
        }

        @Override // java.io.InputStream
        public final void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public ByteOrderedDataInputStream(InputStream inputStream) {
            this(inputStream, 0);
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int read = this.f1061c.read(bArr, i, i2);
            this.f += read;
            return read;
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) {
            this.f += bArr.length;
            this.f1061c.readFully(bArr);
        }

        public ByteOrderedDataInputStream(InputStream inputStream, int i) {
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f1061c = dataInputStream;
            dataInputStream.mark(0);
            this.f = 0;
            this.g = byteOrder;
            this.i = inputStream instanceof ByteOrderedDataInputStream ? ((ByteOrderedDataInputStream) inputStream).i : -1;
        }
    }

    /* loaded from: classes.dex */
    public static class SeekableByteOrderedDataInputStream extends ByteOrderedDataInputStream {
        public SeekableByteOrderedDataInputStream(byte[] bArr) {
            super(bArr);
            this.f1061c.mark(Integer.MAX_VALUE);
        }

        public final void b(long j) {
            int i = this.f;
            if (i > j) {
                this.f = 0;
                this.f1061c.reset();
            } else {
                j -= i;
            }
            a((int) j);
        }

        public SeekableByteOrderedDataInputStream(InputStream inputStream) {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.f1061c.mark(Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
        }
    }

    /* loaded from: classes.dex */
    public static class ExifTag {

        /* renamed from: a, reason: collision with root package name */
        public final int f1064a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1065c;
        public final int d;

        public ExifTag(String str, int i, int i2) {
            this.b = str;
            this.f1064a = i;
            this.f1065c = i2;
            this.d = -1;
        }

        public ExifTag(String str, int i, int i2, int i3) {
            this.b = str;
            this.f1064a = i;
            this.f1065c = i2;
            this.d = i3;
        }
    }

    public ExifInterface(InputStream inputStream) {
        ExifTag[][] exifTagArr = K;
        this.f = new HashMap[exifTagArr.length];
        this.g = new HashSet(exifTagArr.length);
        this.h = ByteOrder.BIG_ENDIAN;
        this.f1058a = null;
        this.e = false;
        if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f1059c = (AssetManager.AssetInputStream) inputStream;
            this.b = null;
        } else {
            if (inputStream instanceof FileInputStream) {
                FileInputStream fileInputStream = (FileInputStream) inputStream;
                try {
                    Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                    this.f1059c = null;
                    this.b = fileInputStream.getFD();
                } catch (Exception unused) {
                    if (o) {
                        Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                    }
                }
            }
            this.f1059c = null;
            this.b = null;
        }
        q(inputStream);
    }
}
