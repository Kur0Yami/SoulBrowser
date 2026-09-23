package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.util.Log;
import android.util.Xml;
import androidx.work.impl.workers.a;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.ConnectionResult;
import com.google.api.client.http.HttpStatusCodes;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import kotlin.KotlinVersion;
import kotlin.io.ConstantsKt;
import org.jsoup.parser.Parser;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SVGParser {
    public int d;

    /* renamed from: a, reason: collision with root package name */
    public SVG f2585a = null;
    public SVG.SvgContainer b = null;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2586c = false;
    public boolean e = false;
    public SVGElem f = null;
    public StringBuilder g = null;
    public boolean h = false;
    public StringBuilder i = null;

    /* renamed from: com.caverock.androidsvg.SVGParser$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2587a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[SVGAttr.values().length];
            b = iArr;
            try {
                SVGAttr sVGAttr = SVGAttr.f2593c;
                iArr[82] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = b;
                SVGAttr sVGAttr2 = SVGAttr.f2593c;
                iArr2[83] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = b;
                SVGAttr sVGAttr3 = SVGAttr.f2593c;
                iArr3[81] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = b;
                SVGAttr sVGAttr4 = SVGAttr.f2593c;
                iArr4[25] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = b;
                SVGAttr sVGAttr5 = SVGAttr.f2593c;
                iArr5[79] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = b;
                SVGAttr sVGAttr6 = SVGAttr.f2593c;
                iArr6[26] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = b;
                SVGAttr sVGAttr7 = SVGAttr.f2593c;
                iArr7[48] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = b;
                SVGAttr sVGAttr8 = SVGAttr.f2593c;
                iArr8[13] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = b;
                SVGAttr sVGAttr9 = SVGAttr.f2593c;
                iArr9[43] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = b;
                SVGAttr sVGAttr10 = SVGAttr.f2593c;
                iArr10[56] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = b;
                SVGAttr sVGAttr11 = SVGAttr.f2593c;
                iArr11[57] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = b;
                SVGAttr sVGAttr12 = SVGAttr.f2593c;
                iArr12[6] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                int[] iArr13 = b;
                SVGAttr sVGAttr13 = SVGAttr.f2593c;
                iArr13[7] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                int[] iArr14 = b;
                SVGAttr sVGAttr14 = SVGAttr.f2593c;
                iArr14[49] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                int[] iArr15 = b;
                SVGAttr sVGAttr15 = SVGAttr.f2593c;
                iArr15[84] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                int[] iArr16 = b;
                SVGAttr sVGAttr16 = SVGAttr.f2593c;
                iArr16[85] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                int[] iArr17 = b;
                SVGAttr sVGAttr17 = SVGAttr.f2593c;
                iArr17[86] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                int[] iArr18 = b;
                SVGAttr sVGAttr18 = SVGAttr.f2593c;
                iArr18[87] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                int[] iArr19 = b;
                SVGAttr sVGAttr19 = SVGAttr.f2593c;
                iArr19[9] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                int[] iArr20 = b;
                SVGAttr sVGAttr20 = SVGAttr.f2593c;
                iArr20[10] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                int[] iArr21 = b;
                SVGAttr sVGAttr21 = SVGAttr.f2593c;
                iArr21[52] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                int[] iArr22 = b;
                SVGAttr sVGAttr22 = SVGAttr.f2593c;
                iArr22[53] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                int[] iArr23 = b;
                SVGAttr sVGAttr23 = SVGAttr.f2593c;
                iArr23[73] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                int[] iArr24 = b;
                SVGAttr sVGAttr24 = SVGAttr.f2593c;
                iArr24[54] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                int[] iArr25 = b;
                SVGAttr sVGAttr25 = SVGAttr.f2593c;
                iArr25[55] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                int[] iArr26 = b;
                SVGAttr sVGAttr26 = SVGAttr.f2593c;
                iArr26[50] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                int[] iArr27 = b;
                SVGAttr sVGAttr27 = SVGAttr.f2593c;
                iArr27[51] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                int[] iArr28 = b;
                SVGAttr sVGAttr28 = SVGAttr.f2593c;
                iArr28[34] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                int[] iArr29 = b;
                SVGAttr sVGAttr29 = SVGAttr.f2593c;
                iArr29[32] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                int[] iArr30 = b;
                SVGAttr sVGAttr30 = SVGAttr.f2593c;
                iArr30[33] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                int[] iArr31 = b;
                SVGAttr sVGAttr31 = SVGAttr.f2593c;
                iArr31[41] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                int[] iArr32 = b;
                SVGAttr sVGAttr32 = SVGAttr.f2593c;
                iArr32[24] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                int[] iArr33 = b;
                SVGAttr sVGAttr33 = SVGAttr.f2593c;
                iArr33[23] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                int[] iArr34 = b;
                SVGAttr sVGAttr34 = SVGAttr.f2593c;
                iArr34[60] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                int[] iArr35 = b;
                SVGAttr sVGAttr35 = SVGAttr.f2593c;
                iArr35[11] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                int[] iArr36 = b;
                SVGAttr sVGAttr36 = SVGAttr.f2593c;
                iArr36[12] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                int[] iArr37 = b;
                SVGAttr sVGAttr37 = SVGAttr.f2593c;
                iArr37[39] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                int[] iArr38 = b;
                SVGAttr sVGAttr38 = SVGAttr.f2593c;
                iArr38[3] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                int[] iArr39 = b;
                SVGAttr sVGAttr39 = SVGAttr.f2593c;
                iArr39[61] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                int[] iArr40 = b;
                SVGAttr sVGAttr40 = SVGAttr.f2593c;
                iArr40[46] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                int[] iArr41 = b;
                SVGAttr sVGAttr41 = SVGAttr.f2593c;
                iArr41[44] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                int[] iArr42 = b;
                SVGAttr sVGAttr42 = SVGAttr.f2593c;
                iArr42[45] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                int[] iArr43 = b;
                SVGAttr sVGAttr43 = SVGAttr.f2593c;
                iArr43[37] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                int[] iArr44 = b;
                SVGAttr sVGAttr44 = SVGAttr.f2593c;
                iArr44[36] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                int[] iArr45 = b;
                SVGAttr sVGAttr45 = SVGAttr.f2593c;
                iArr45[72] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                int[] iArr46 = b;
                SVGAttr sVGAttr46 = SVGAttr.f2593c;
                iArr46[0] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                int[] iArr47 = b;
                SVGAttr sVGAttr47 = SVGAttr.f2593c;
                iArr47[15] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                int[] iArr48 = b;
                SVGAttr sVGAttr48 = SVGAttr.f2593c;
                iArr48[16] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                int[] iArr49 = b;
                SVGAttr sVGAttr49 = SVGAttr.f2593c;
                iArr49[17] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                int[] iArr50 = b;
                SVGAttr sVGAttr50 = SVGAttr.f2593c;
                iArr50[64] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                int[] iArr51 = b;
                SVGAttr sVGAttr51 = SVGAttr.f2593c;
                iArr51[70] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                int[] iArr52 = b;
                SVGAttr sVGAttr52 = SVGAttr.f2593c;
                iArr52[71] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                int[] iArr53 = b;
                SVGAttr sVGAttr53 = SVGAttr.f2593c;
                iArr53[67] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                int[] iArr54 = b;
                SVGAttr sVGAttr54 = SVGAttr.f2593c;
                iArr54[68] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                int[] iArr55 = b;
                SVGAttr sVGAttr55 = SVGAttr.f2593c;
                iArr55[69] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                int[] iArr56 = b;
                SVGAttr sVGAttr56 = SVGAttr.f2593c;
                iArr56[65] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                int[] iArr57 = b;
                SVGAttr sVGAttr57 = SVGAttr.f2593c;
                iArr57[66] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                int[] iArr58 = b;
                SVGAttr sVGAttr58 = SVGAttr.f2593c;
                iArr58[40] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                int[] iArr59 = b;
                SVGAttr sVGAttr59 = SVGAttr.f2593c;
                iArr59[5] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                int[] iArr60 = b;
                SVGAttr sVGAttr60 = SVGAttr.f2593c;
                iArr60[18] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                int[] iArr61 = b;
                SVGAttr sVGAttr61 = SVGAttr.f2593c;
                iArr61[19] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                int[] iArr62 = b;
                SVGAttr sVGAttr62 = SVGAttr.f2593c;
                iArr62[20] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                int[] iArr63 = b;
                SVGAttr sVGAttr63 = SVGAttr.f2593c;
                iArr63[21] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                int[] iArr64 = b;
                SVGAttr sVGAttr64 = SVGAttr.f2593c;
                iArr64[22] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                int[] iArr65 = b;
                SVGAttr sVGAttr65 = SVGAttr.f2593c;
                iArr65[75] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                int[] iArr66 = b;
                SVGAttr sVGAttr66 = SVGAttr.f2593c;
                iArr66[8] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                int[] iArr67 = b;
                SVGAttr sVGAttr67 = SVGAttr.f2593c;
                iArr67[74] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                int[] iArr68 = b;
                SVGAttr sVGAttr68 = SVGAttr.f2593c;
                iArr68[42] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                int[] iArr69 = b;
                SVGAttr sVGAttr69 = SVGAttr.f2593c;
                iArr69[28] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                int[] iArr70 = b;
                SVGAttr sVGAttr70 = SVGAttr.f2593c;
                iArr70[29] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                int[] iArr71 = b;
                SVGAttr sVGAttr71 = SVGAttr.f2593c;
                iArr71[30] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                int[] iArr72 = b;
                SVGAttr sVGAttr72 = SVGAttr.f2593c;
                iArr72[31] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                int[] iArr73 = b;
                SVGAttr sVGAttr73 = SVGAttr.f2593c;
                iArr73[14] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                int[] iArr74 = b;
                SVGAttr sVGAttr74 = SVGAttr.f2593c;
                iArr74[90] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                int[] iArr75 = b;
                SVGAttr sVGAttr75 = SVGAttr.f2593c;
                iArr75[62] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                int[] iArr76 = b;
                SVGAttr sVGAttr76 = SVGAttr.f2593c;
                iArr76[63] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                int[] iArr77 = b;
                SVGAttr sVGAttr77 = SVGAttr.f2593c;
                iArr77[1] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                int[] iArr78 = b;
                SVGAttr sVGAttr78 = SVGAttr.f2593c;
                iArr78[2] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                int[] iArr79 = b;
                SVGAttr sVGAttr79 = SVGAttr.f2593c;
                iArr79[4] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                int[] iArr80 = b;
                SVGAttr sVGAttr80 = SVGAttr.f2593c;
                iArr80[35] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                int[] iArr81 = b;
                SVGAttr sVGAttr81 = SVGAttr.f2593c;
                iArr81[58] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                int[] iArr82 = b;
                SVGAttr sVGAttr82 = SVGAttr.f2593c;
                iArr82[59] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                int[] iArr83 = b;
                SVGAttr sVGAttr83 = SVGAttr.f2593c;
                iArr83[88] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                int[] iArr84 = b;
                SVGAttr sVGAttr84 = SVGAttr.f2593c;
                iArr84[89] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                int[] iArr85 = b;
                SVGAttr sVGAttr85 = SVGAttr.f2593c;
                iArr85[78] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                int[] iArr86 = b;
                SVGAttr sVGAttr86 = SVGAttr.f2593c;
                iArr86[27] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                int[] iArr87 = b;
                SVGAttr sVGAttr87 = SVGAttr.f2593c;
                iArr87[80] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                int[] iArr88 = b;
                SVGAttr sVGAttr88 = SVGAttr.f2593c;
                iArr88[77] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                int[] iArr89 = b;
                SVGAttr sVGAttr89 = SVGAttr.f2593c;
                iArr89[38] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            int[] iArr90 = new int[SVGElem.values().length];
            f2587a = iArr90;
            try {
                SVGElem sVGElem = SVGElem.f2594c;
                iArr90[0] = 1;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                int[] iArr91 = f2587a;
                SVGElem sVGElem2 = SVGElem.f2594c;
                iArr91[7] = 2;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                int[] iArr92 = f2587a;
                SVGElem sVGElem3 = SVGElem.f2594c;
                iArr92[1] = 3;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                int[] iArr93 = f2587a;
                SVGElem sVGElem4 = SVGElem.f2594c;
                iArr93[4] = 4;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                int[] iArr94 = f2587a;
                SVGElem sVGElem5 = SVGElem.f2594c;
                iArr94[29] = 5;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                int[] iArr95 = f2587a;
                SVGElem sVGElem6 = SVGElem.f2594c;
                iArr95[13] = 6;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                int[] iArr96 = f2587a;
                SVGElem sVGElem7 = SVGElem.f2594c;
                iArr96[18] = 7;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                int[] iArr97 = f2587a;
                SVGElem sVGElem8 = SVGElem.f2594c;
                iArr97[2] = 8;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                int[] iArr98 = f2587a;
                SVGElem sVGElem9 = SVGElem.f2594c;
                iArr98[6] = 9;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                int[] iArr99 = f2587a;
                SVGElem sVGElem10 = SVGElem.f2594c;
                iArr99[9] = 10;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                int[] iArr100 = f2587a;
                SVGElem sVGElem11 = SVGElem.f2594c;
                iArr100[16] = 11;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                int[] iArr101 = f2587a;
                SVGElem sVGElem12 = SVGElem.f2594c;
                iArr101[15] = 12;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                int[] iArr102 = f2587a;
                SVGElem sVGElem13 = SVGElem.f2594c;
                iArr102[24] = 13;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                int[] iArr103 = f2587a;
                SVGElem sVGElem14 = SVGElem.f2594c;
                iArr103[28] = 14;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                int[] iArr104 = f2587a;
                SVGElem sVGElem15 = SVGElem.f2594c;
                iArr104[27] = 15;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                int[] iArr105 = f2587a;
                SVGElem sVGElem16 = SVGElem.f2594c;
                iArr105[22] = 16;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                int[] iArr106 = f2587a;
                SVGElem sVGElem17 = SVGElem.f2594c;
                iArr106[23] = 17;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                int[] iArr107 = f2587a;
                SVGElem sVGElem18 = SVGElem.f2594c;
                iArr107[11] = 18;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                int[] iArr108 = f2587a;
                SVGElem sVGElem19 = SVGElem.f2594c;
                iArr108[10] = 19;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                int[] iArr109 = f2587a;
                SVGElem sVGElem20 = SVGElem.f2594c;
                iArr109[17] = 20;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                int[] iArr110 = f2587a;
                SVGElem sVGElem21 = SVGElem.f2594c;
                iArr110[20] = 21;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                int[] iArr111 = f2587a;
                SVGElem sVGElem22 = SVGElem.f2594c;
                iArr111[26] = 22;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                int[] iArr112 = f2587a;
                SVGElem sVGElem23 = SVGElem.f2594c;
                iArr112[5] = 23;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                int[] iArr113 = f2587a;
                SVGElem sVGElem24 = SVGElem.f2594c;
                iArr113[3] = 24;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                int[] iArr114 = f2587a;
                SVGElem sVGElem25 = SVGElem.f2594c;
                iArr114[25] = 25;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                int[] iArr115 = f2587a;
                SVGElem sVGElem26 = SVGElem.f2594c;
                iArr115[14] = 26;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                int[] iArr116 = f2587a;
                SVGElem sVGElem27 = SVGElem.f2594c;
                iArr116[8] = 27;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                int[] iArr117 = f2587a;
                SVGElem sVGElem28 = SVGElem.f2594c;
                iArr117[30] = 28;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                int[] iArr118 = f2587a;
                SVGElem sVGElem29 = SVGElem.f2594c;
                iArr118[12] = 29;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                int[] iArr119 = f2587a;
                SVGElem sVGElem30 = SVGElem.f2594c;
                iArr119[21] = 30;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                int[] iArr120 = f2587a;
                SVGElem sVGElem31 = SVGElem.f2594c;
                iArr120[19] = 31;
            } catch (NoSuchFieldError unused120) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class AspectRatioKeywords {

        /* renamed from: a, reason: collision with root package name */
        public static final HashMap f2588a;

        static {
            HashMap hashMap = new HashMap(10);
            f2588a = hashMap;
            hashMap.put("none", PreserveAspectRatio.Alignment.f2531c);
            hashMap.put("xMinYMin", PreserveAspectRatio.Alignment.f);
            hashMap.put("xMidYMin", PreserveAspectRatio.Alignment.g);
            hashMap.put("xMaxYMin", PreserveAspectRatio.Alignment.h);
            hashMap.put("xMinYMid", PreserveAspectRatio.Alignment.i);
            hashMap.put("xMidYMid", PreserveAspectRatio.Alignment.j);
            hashMap.put("xMaxYMid", PreserveAspectRatio.Alignment.k);
            hashMap.put("xMinYMax", PreserveAspectRatio.Alignment.l);
            hashMap.put("xMidYMax", PreserveAspectRatio.Alignment.m);
            hashMap.put("xMaxYMax", PreserveAspectRatio.Alignment.n);
        }
    }

    /* loaded from: classes.dex */
    public static class ColourKeywords {

        /* renamed from: a, reason: collision with root package name */
        public static final HashMap f2589a;

        static {
            HashMap hashMap = new HashMap(47);
            f2589a = hashMap;
            a.v(-984833, hashMap, "aliceblue", -332841, "antiquewhite");
            a.B(hashMap, "aqua", -16711681, -8388652, "aquamarine");
            a.v(-983041, hashMap, "azure", -657956, "beige");
            a.v(-6972, hashMap, "bisque", -16777216, "black");
            a.v(-5171, hashMap, "blanchedalmond", -16776961, "blue");
            a.v(-7722014, hashMap, "blueviolet", -5952982, "brown");
            a.v(-2180985, hashMap, "burlywood", -10510688, "cadetblue");
            a.v(-8388864, hashMap, "chartreuse", -2987746, "chocolate");
            a.v(-32944, hashMap, "coral", -10185235, "cornflowerblue");
            a.v(-1828, hashMap, "cornsilk", -2354116, "crimson");
            a.B(hashMap, "cyan", -16711681, -16777077, "darkblue");
            a.v(-16741493, hashMap, "darkcyan", -4684277, "darkgoldenrod");
            a.B(hashMap, "darkgray", -5658199, -16751616, "darkgreen");
            a.B(hashMap, "darkgrey", -5658199, -4343957, "darkkhaki");
            a.v(-7667573, hashMap, "darkmagenta", -11179217, "darkolivegreen");
            a.v(-29696, hashMap, "darkorange", -6737204, "darkorchid");
            a.v(-7667712, hashMap, "darkred", -1468806, "darksalmon");
            a.v(-7357297, hashMap, "darkseagreen", -12042869, "darkslateblue");
            hashMap.put("darkslategray", -13676721);
            hashMap.put("darkslategrey", -13676721);
            a.B(hashMap, "darkturquoise", -16724271, -7077677, "darkviolet");
            a.v(-60269, hashMap, "deeppink", -16728065, "deepskyblue");
            hashMap.put("dimgray", -9868951);
            hashMap.put("dimgrey", -9868951);
            a.B(hashMap, "dodgerblue", -14774017, -5103070, "firebrick");
            a.v(-1296, hashMap, "floralwhite", -14513374, "forestgreen");
            a.B(hashMap, "fuchsia", -65281, -2302756, "gainsboro");
            a.v(-460545, hashMap, "ghostwhite", -10496, "gold");
            hashMap.put("goldenrod", -2448096);
            hashMap.put("gray", -8355712);
            a.v(-16744448, hashMap, "green", -5374161, "greenyellow");
            a.B(hashMap, "grey", -8355712, -983056, "honeydew");
            a.v(-38476, hashMap, "hotpink", -3318692, "indianred");
            a.v(-11861886, hashMap, "indigo", -16, "ivory");
            a.v(-989556, hashMap, "khaki", -1644806, "lavender");
            a.v(-3851, hashMap, "lavenderblush", -8586240, "lawngreen");
            a.v(-1331, hashMap, "lemonchiffon", -5383962, "lightblue");
            a.v(-1015680, hashMap, "lightcoral", -2031617, "lightcyan");
            hashMap.put("lightgoldenrodyellow", -329006);
            hashMap.put("lightgray", -2894893);
            hashMap.put("lightgreen", -7278960);
            hashMap.put("lightgrey", -2894893);
            a.v(-18751, hashMap, "lightpink", -24454, "lightsalmon");
            a.v(-14634326, hashMap, "lightseagreen", -7876870, "lightskyblue");
            hashMap.put("lightslategray", -8943463);
            hashMap.put("lightslategrey", -8943463);
            a.B(hashMap, "lightsteelblue", -5192482, -32, "lightyellow");
            a.v(-16711936, hashMap, "lime", -13447886, "limegreen");
            hashMap.put("linen", -331546);
            hashMap.put("magenta", -65281);
            a.v(-8388608, hashMap, "maroon", -10039894, "mediumaquamarine");
            a.v(-16777011, hashMap, "mediumblue", -4565549, "mediumorchid");
            a.v(-7114533, hashMap, "mediumpurple", -12799119, "mediumseagreen");
            a.v(-8689426, hashMap, "mediumslateblue", -16713062, "mediumspringgreen");
            a.v(-12004916, hashMap, "mediumturquoise", -3730043, "mediumvioletred");
            a.v(-15132304, hashMap, "midnightblue", -655366, "mintcream");
            a.v(-6943, hashMap, "mistyrose", -6987, "moccasin");
            a.v(-8531, hashMap, "navajowhite", -16777088, "navy");
            a.v(-133658, hashMap, "oldlace", -8355840, "olive");
            a.v(-9728477, hashMap, "olivedrab", -23296, "orange");
            a.v(-47872, hashMap, "orangered", -2461482, "orchid");
            a.v(-1120086, hashMap, "palegoldenrod", -6751336, "palegreen");
            a.v(-5247250, hashMap, "paleturquoise", -2396013, "palevioletred");
            a.v(-4139, hashMap, "papayawhip", -9543, "peachpuff");
            a.v(-3308225, hashMap, "peru", -16181, "pink");
            a.v(-2252579, hashMap, "plum", -5185306, "powderblue");
            a.v(-8388480, hashMap, "purple", -10079335, "rebeccapurple");
            a.v(-65536, hashMap, "red", -4419697, "rosybrown");
            a.v(-12490271, hashMap, "royalblue", -7650029, "saddlebrown");
            a.v(-360334, hashMap, "salmon", -744352, "sandybrown");
            a.v(-13726889, hashMap, "seagreen", -2578, "seashell");
            a.v(-6270419, hashMap, "sienna", -4144960, "silver");
            a.v(-7876885, hashMap, "skyblue", -9807155, "slateblue");
            hashMap.put("slategray", -9404272);
            hashMap.put("slategrey", -9404272);
            a.B(hashMap, "snow", -1286, -16711809, "springgreen");
            a.v(-12156236, hashMap, "steelblue", -2968436, "tan");
            a.v(-16744320, hashMap, "teal", -2572328, "thistle");
            a.v(-40121, hashMap, "tomato", -12525360, "turquoise");
            a.v(-1146130, hashMap, "violet", -663885, "wheat");
            a.v(-1, hashMap, "white", -657931, "whitesmoke");
            a.v(-256, hashMap, "yellow", -6632142, "yellowgreen");
            hashMap.put("transparent", 0);
        }
    }

    /* loaded from: classes.dex */
    public static class FontSizeKeywords {

        /* renamed from: a, reason: collision with root package name */
        public static final HashMap f2590a;

        static {
            HashMap hashMap = new HashMap(9);
            f2590a = hashMap;
            SVG.Unit unit = SVG.Unit.f;
            hashMap.put("xx-small", new SVG.Length(0.694f, unit));
            hashMap.put("x-small", new SVG.Length(0.833f, unit));
            hashMap.put("small", new SVG.Length(10.0f, unit));
            hashMap.put("medium", new SVG.Length(12.0f, unit));
            hashMap.put("large", new SVG.Length(14.4f, unit));
            hashMap.put("x-large", new SVG.Length(17.3f, unit));
            hashMap.put("xx-large", new SVG.Length(20.7f, unit));
            SVG.Unit unit2 = SVG.Unit.g;
            hashMap.put("smaller", new SVG.Length(83.33f, unit2));
            hashMap.put("larger", new SVG.Length(120.0f, unit2));
        }
    }

    /* loaded from: classes.dex */
    public static class FontWeightKeywords {

        /* renamed from: a, reason: collision with root package name */
        public static final HashMap f2591a;

        static {
            HashMap hashMap = new HashMap(13);
            f2591a = hashMap;
            Integer valueOf = Integer.valueOf(HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
            hashMap.put("normal", valueOf);
            hashMap.put("bold", 700);
            a.v(1, hashMap, "bolder", -1, "lighter");
            a.v(100, hashMap, "100", HttpStatusCodes.STATUS_CODE_OK, "200");
            hashMap.put("300", Integer.valueOf(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES));
            hashMap.put("400", valueOf);
            a.v(500, hashMap, "500", 600, "600");
            a.B(hashMap, "700", 700, 800, "800");
            hashMap.put("900", 900);
        }
    }

    /* loaded from: classes.dex */
    public class SAXHandler extends DefaultHandler2 {
        public SAXHandler() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void characters(char[] cArr, int i, int i2) {
            SVGParser.this.H(new String(cArr, i, i2));
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endDocument() {
            SVGParser.this.getClass();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            SVGParser.this.c(str, str2, str3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void processingInstruction(String str, String str2) {
            SVGParser.z(new TextScanner(str2));
            str.equals("xml-stylesheet");
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startDocument() {
            SVGParser.this.F();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            SVGParser.this.G(str, str2, str3, attributes);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class SVGAttr {

        /* renamed from: c, reason: collision with root package name */
        public static final SVGAttr f2593c;
        public static final SVGAttr f;
        public static final SVGAttr g;
        public static final SVGAttr h;
        public static final HashMap i;
        public static final /* synthetic */ SVGAttr[] j;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGAttr] */
        /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGAttr] */
        /* JADX WARN: Type inference failed for: r0v78, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGAttr] */
        /* JADX WARN: Type inference failed for: r1v63, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGAttr] */
        static {
            ?? r0 = new Enum("CLASS", 0);
            f2593c = r0;
            Enum r1 = new Enum("clip", 1);
            Enum r3 = new Enum("clip_path", 2);
            Enum r5 = new Enum("clipPathUnits", 3);
            Enum r7 = new Enum("clip_rule", 4);
            Enum r9 = new Enum("color", 5);
            Enum r11 = new Enum("cx", 6);
            Enum r13 = new Enum("cy", 7);
            Enum r15 = new Enum("direction", 8);
            Enum r2 = new Enum("dx", 9);
            Enum r4 = new Enum("dy", 10);
            Enum r6 = new Enum("fx", 11);
            Enum r8 = new Enum("fy", 12);
            Enum r10 = new Enum("d", 13);
            Enum r12 = new Enum("display", 14);
            Enum r14 = new Enum("fill", 15);
            Enum r02 = new Enum("fill_rule", 16);
            Enum r16 = new Enum("fill_opacity", 17);
            Enum r22 = new Enum("font", 18);
            Enum r03 = new Enum("font_family", 19);
            Enum r17 = new Enum("font_size", 20);
            Enum r23 = new Enum("font_weight", 21);
            Enum r04 = new Enum("font_style", 22);
            Enum r18 = new Enum("gradientTransform", 23);
            Enum r05 = new Enum("gradientUnits", 24);
            Enum r19 = new Enum("height", 25);
            Enum r06 = new Enum("href", 26);
            Enum r110 = new Enum("image_rendering", 27);
            Enum r07 = new Enum("marker", 28);
            Enum r111 = new Enum("marker_start", 29);
            Enum r08 = new Enum("marker_mid", 30);
            Enum r112 = new Enum("marker_end", 31);
            Enum r09 = new Enum("markerHeight", 32);
            Enum r113 = new Enum("markerUnits", 33);
            Enum r010 = new Enum("markerWidth", 34);
            Enum r114 = new Enum("mask", 35);
            Enum r011 = new Enum("maskContentUnits", 36);
            Enum r115 = new Enum("maskUnits", 37);
            Enum r012 = new Enum("media", 38);
            Enum r116 = new Enum("offset", 39);
            Enum r013 = new Enum("opacity", 40);
            Enum r117 = new Enum("orient", 41);
            Enum r014 = new Enum("overflow", 42);
            Enum r118 = new Enum("pathLength", 43);
            Enum r015 = new Enum("patternContentUnits", 44);
            Enum r119 = new Enum("patternTransform", 45);
            Enum r24 = new Enum("patternUnits", 46);
            ?? r016 = new Enum("points", 47);
            f = r016;
            Enum r120 = new Enum("preserveAspectRatio", 48);
            Enum r017 = new Enum("r", 49);
            Enum r121 = new Enum("refX", 50);
            Enum r018 = new Enum("refY", 51);
            Enum r122 = new Enum("requiredFeatures", 52);
            Enum r019 = new Enum("requiredExtensions", 53);
            Enum r123 = new Enum("requiredFormats", 54);
            Enum r020 = new Enum("requiredFonts", 55);
            Enum r124 = new Enum("rx", 56);
            Enum r021 = new Enum("ry", 57);
            Enum r125 = new Enum("solid_color", 58);
            Enum r022 = new Enum("solid_opacity", 59);
            Enum r126 = new Enum("spreadMethod", 60);
            Enum r023 = new Enum("startOffset", 61);
            Enum r127 = new Enum("stop_color", 62);
            Enum r024 = new Enum("stop_opacity", 63);
            Enum r128 = new Enum("stroke", 64);
            Enum r025 = new Enum("stroke_dasharray", 65);
            Enum r129 = new Enum("stroke_dashoffset", 66);
            Enum r026 = new Enum("stroke_linecap", 67);
            Enum r130 = new Enum("stroke_linejoin", 68);
            Enum r027 = new Enum("stroke_miterlimit", 69);
            Enum r131 = new Enum("stroke_opacity", 70);
            Enum r028 = new Enum("stroke_width", 71);
            Enum r132 = new Enum("style", 72);
            Enum r029 = new Enum("systemLanguage", 73);
            Enum r133 = new Enum("text_anchor", 74);
            Enum r030 = new Enum("text_decoration", 75);
            ?? r134 = new Enum("transform", 76);
            g = r134;
            Enum r031 = new Enum("type", 77);
            Enum r135 = new Enum("vector_effect", 78);
            Enum r032 = new Enum("version", 79);
            Enum r136 = new Enum("viewBox", 80);
            Enum r033 = new Enum("width", 81);
            Enum r137 = new Enum("x", 82);
            Enum r034 = new Enum("y", 83);
            Enum r138 = new Enum("x1", 84);
            Enum r035 = new Enum("y1", 85);
            Enum r139 = new Enum("x2", 86);
            Enum r036 = new Enum("y2", 87);
            Enum r140 = new Enum("viewport_fill", 88);
            Enum r037 = new Enum("viewport_fill_opacity", 89);
            Enum r141 = new Enum("visibility", 90);
            ?? r038 = new Enum("UNSUPPORTED", 91);
            h = r038;
            j = new SVGAttr[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6, r8, r10, r12, r14, r02, r16, r22, r03, r17, r23, r04, r18, r05, r19, r06, r110, r07, r111, r08, r112, r09, r113, r010, r114, r011, r115, r012, r116, r013, r117, r014, r118, r015, r119, r24, r016, r120, r017, r121, r018, r122, r019, r123, r020, r124, r021, r125, r022, r126, r023, r127, r024, r128, r025, r129, r026, r130, r027, r131, r028, r132, r029, r133, r030, r134, r031, r135, r032, r136, r033, r137, r034, r138, r035, r139, r036, r140, r037, r141, r038};
            i = new HashMap();
            for (SVGAttr sVGAttr : values()) {
                if (sVGAttr == f2593c) {
                    i.put("class", sVGAttr);
                } else if (sVGAttr != h) {
                    i.put(sVGAttr.name().replace('_', '-'), sVGAttr);
                }
            }
        }

        public static SVGAttr a(String str) {
            SVGAttr sVGAttr = (SVGAttr) i.get(str);
            if (sVGAttr != null) {
                return sVGAttr;
            }
            return h;
        }

        public static SVGAttr valueOf(String str) {
            return (SVGAttr) Enum.valueOf(SVGAttr.class, str);
        }

        public static SVGAttr[] values() {
            return (SVGAttr[]) j.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class SVGElem {

        /* renamed from: c, reason: collision with root package name */
        public static final SVGElem f2594c;
        public static final SVGElem f;
        public static final SVGElem g;
        public static final SVGElem h;
        public static final HashMap i;
        public static final /* synthetic */ SVGElem[] j;

        /* JADX INFO: Fake field, exist only in values array */
        SVGElem EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGElem] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGElem] */
        /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGElem] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, com.caverock.androidsvg.SVGParser$SVGElem] */
        static {
            Enum r0 = new Enum("svg", 0);
            Enum r1 = new Enum("a", 1);
            Enum r3 = new Enum("circle", 2);
            Enum r5 = new Enum("clipPath", 3);
            Enum r7 = new Enum("defs", 4);
            ?? r9 = new Enum("desc", 5);
            f2594c = r9;
            Enum r11 = new Enum("ellipse", 6);
            Enum r13 = new Enum("g", 7);
            Enum r15 = new Enum("image", 8);
            Enum r2 = new Enum("line", 9);
            Enum r4 = new Enum("linearGradient", 10);
            Enum r6 = new Enum("marker", 11);
            Enum r8 = new Enum("mask", 12);
            Enum r10 = new Enum("path", 13);
            Enum r12 = new Enum("pattern", 14);
            Enum r14 = new Enum("polygon", 15);
            Enum r02 = new Enum("polyline", 16);
            Enum r16 = new Enum("radialGradient", 17);
            Enum r22 = new Enum("rect", 18);
            Enum r03 = new Enum("solidColor", 19);
            Enum r17 = new Enum("stop", 20);
            Enum r23 = new Enum("style", 21);
            ?? r04 = new Enum("SWITCH", 22);
            f = r04;
            Enum r18 = new Enum("symbol", 23);
            Enum r05 = new Enum("text", 24);
            Enum r19 = new Enum("textPath", 25);
            ?? r06 = new Enum("title", 26);
            g = r06;
            Enum r110 = new Enum("tref", 27);
            Enum r07 = new Enum("tspan", 28);
            Enum r111 = new Enum("use", 29);
            Enum r08 = new Enum("view", 30);
            ?? r112 = new Enum("UNSUPPORTED", 31);
            h = r112;
            j = new SVGElem[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6, r8, r10, r12, r14, r02, r16, r22, r03, r17, r23, r04, r18, r05, r19, r06, r110, r07, r111, r08, r112};
            i = new HashMap();
            for (SVGElem sVGElem : values()) {
                if (sVGElem == f) {
                    i.put("switch", sVGElem);
                } else if (sVGElem != h) {
                    i.put(sVGElem.name(), sVGElem);
                }
            }
        }

        public static SVGElem valueOf(String str) {
            return (SVGElem) Enum.valueOf(SVGElem.class, str);
        }

        public static SVGElem[] values() {
            return (SVGElem[]) j.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class TextScanner {

        /* renamed from: a, reason: collision with root package name */
        public final String f2595a;

        /* renamed from: c, reason: collision with root package name */
        public final int f2596c;
        public int b = 0;
        public final NumberParser d = new Object();

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.caverock.androidsvg.NumberParser] */
        public TextScanner(String str) {
            this.f2596c = 0;
            String trim = str.trim();
            this.f2595a = trim;
            this.f2596c = trim.length();
        }

        public static boolean g(int i) {
            if (i != 32 && i != 10 && i != 13 && i != 9) {
                return false;
            }
            return true;
        }

        public final int a() {
            int i = this.b;
            int i2 = this.f2596c;
            if (i == i2) {
                return -1;
            }
            int i3 = i + 1;
            this.b = i3;
            if (i3 >= i2) {
                return -1;
            }
            return this.f2595a.charAt(i3);
        }

        public final Boolean b(Object obj) {
            if (obj != null) {
                p();
                int i = this.b;
                if (i != this.f2596c) {
                    char charAt = this.f2595a.charAt(i);
                    if (charAt != '0' && charAt != '1') {
                        return null;
                    }
                    boolean z = true;
                    this.b++;
                    if (charAt != '1') {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
                return null;
            }
            return null;
        }

        public final float c(float f) {
            if (Float.isNaN(f)) {
                return Float.NaN;
            }
            p();
            return i();
        }

        public final boolean d(char c2) {
            boolean z;
            int i = this.b;
            if (i < this.f2596c && this.f2595a.charAt(i) == c2) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.b++;
            }
            return z;
        }

        public final boolean e(String str) {
            boolean z;
            int length = str.length();
            int i = this.b;
            if (i <= this.f2596c - length && this.f2595a.substring(i, i + length).equals(str)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.b += length;
            }
            return z;
        }

        public final boolean f() {
            if (this.b == this.f2596c) {
                return true;
            }
            return false;
        }

        public final Integer h() {
            int i = this.b;
            if (i == this.f2596c) {
                return null;
            }
            this.b = i + 1;
            return Integer.valueOf(this.f2595a.charAt(i));
        }

        public final float i() {
            int i = this.b;
            int i2 = this.f2596c;
            NumberParser numberParser = this.d;
            float a2 = numberParser.a(i, i2, this.f2595a);
            if (!Float.isNaN(a2)) {
                this.b = numberParser.f2528a;
            }
            return a2;
        }

        public final SVG.Length j() {
            float i = i();
            if (Float.isNaN(i)) {
                return null;
            }
            SVG.Unit n = n();
            if (n == null) {
                return new SVG.Length(i, SVG.Unit.f2561c);
            }
            return new SVG.Length(i, n);
        }

        public final String k() {
            if (f()) {
                return null;
            }
            int i = this.b;
            String str = this.f2595a;
            char charAt = str.charAt(i);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            int a2 = a();
            while (a2 != -1 && a2 != charAt) {
                a2 = a();
            }
            if (a2 == -1) {
                this.b = i;
                return null;
            }
            int i2 = this.b;
            this.b = i2 + 1;
            return str.substring(i + 1, i2);
        }

        public final String l() {
            return m(' ', false);
        }

        public final String m(char c2, boolean z) {
            if (!f()) {
                int i = this.b;
                String str = this.f2595a;
                char charAt = str.charAt(i);
                if ((!z && g(charAt)) || charAt == c2) {
                    return null;
                }
                int i2 = this.b;
                int a2 = a();
                while (a2 != -1 && a2 != c2 && (z || !g(a2))) {
                    a2 = a();
                }
                return str.substring(i2, this.b);
            }
            return null;
        }

        public final SVG.Unit n() {
            if (f()) {
                return null;
            }
            int i = this.b;
            String str = this.f2595a;
            if (str.charAt(i) == '%') {
                this.b++;
                return SVG.Unit.g;
            }
            int i2 = this.b;
            if (i2 > this.f2596c - 2) {
                return null;
            }
            try {
                SVG.Unit valueOf = SVG.Unit.valueOf(str.substring(i2, i2 + 2).toLowerCase(Locale.US));
                this.b += 2;
                return valueOf;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final float o() {
            p();
            int i = this.b;
            int i2 = this.f2596c;
            NumberParser numberParser = this.d;
            float a2 = numberParser.a(i, i2, this.f2595a);
            if (!Float.isNaN(a2)) {
                this.b = numberParser.f2528a;
            }
            return a2;
        }

        public final boolean p() {
            q();
            int i = this.b;
            if (i == this.f2596c || this.f2595a.charAt(i) != ',') {
                return false;
            }
            this.b++;
            q();
            return true;
        }

        public final void q() {
            while (true) {
                int i = this.b;
                if (i < this.f2596c && g(this.f2595a.charAt(i))) {
                    this.b++;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class XPPAttributesWrapper implements Attributes {

        /* renamed from: a, reason: collision with root package name */
        public XmlPullParser f2597a;

        @Override // org.xml.sax.Attributes
        public final int getIndex(String str) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public final int getLength() {
            return this.f2597a.getAttributeCount();
        }

        @Override // org.xml.sax.Attributes
        public final String getLocalName(int i) {
            return this.f2597a.getAttributeName(i);
        }

        @Override // org.xml.sax.Attributes
        public final String getQName(int i) {
            XmlPullParser xmlPullParser = this.f2597a;
            String attributeName = xmlPullParser.getAttributeName(i);
            if (xmlPullParser.getAttributePrefix(i) != null) {
                return xmlPullParser.getAttributePrefix(i) + ':' + attributeName;
            }
            return attributeName;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(int i) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getURI(int i) {
            return this.f2597a.getAttributeNamespace(i);
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(String str) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final int getIndex(String str, String str2) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(String str) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(int i) {
            return this.f2597a.getAttributeValue(i);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x0064. Please report as an issue. */
    public static Matrix A(String str) {
        Matrix matrix = new Matrix();
        TextScanner textScanner = new TextScanner(str);
        textScanner.q();
        while (!textScanner.f()) {
            String str2 = null;
            if (!textScanner.f()) {
                int i = textScanner.b;
                String str3 = textScanner.f2595a;
                int charAt = str3.charAt(i);
                while (true) {
                    if ((charAt >= 97 && charAt <= 122) || (charAt >= 65 && charAt <= 90)) {
                        charAt = textScanner.a();
                    }
                }
                int i2 = textScanner.b;
                while (TextScanner.g(charAt)) {
                    charAt = textScanner.a();
                }
                if (charAt == 40) {
                    textScanner.b++;
                    str2 = str3.substring(i, i2);
                } else {
                    textScanner.b = i;
                }
            }
            if (str2 != null) {
                char c2 = 65535;
                switch (str2.hashCode()) {
                    case -1081239615:
                        if (str2.equals("matrix")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -925180581:
                        if (str2.equals("rotate")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 109250890:
                        if (str2.equals("scale")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 109493390:
                        if (str2.equals("skewX")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 109493391:
                        if (str2.equals("skewY")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 1052832078:
                        if (str2.equals("translate")) {
                            c2 = 5;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        textScanner.q();
                        float i3 = textScanner.i();
                        textScanner.p();
                        float i4 = textScanner.i();
                        textScanner.p();
                        float i5 = textScanner.i();
                        textScanner.p();
                        float i6 = textScanner.i();
                        textScanner.p();
                        float i7 = textScanner.i();
                        textScanner.p();
                        float i8 = textScanner.i();
                        textScanner.q();
                        if (!Float.isNaN(i8) && textScanner.d(')')) {
                            Matrix matrix2 = new Matrix();
                            matrix2.setValues(new float[]{i3, i5, i7, i4, i6, i8, 0.0f, 0.0f, 1.0f});
                            matrix.preConcat(matrix2);
                            break;
                        } else {
                            throw new SAXException("Invalid transform list: ".concat(str));
                        }
                    case 1:
                        textScanner.q();
                        float i9 = textScanner.i();
                        float o = textScanner.o();
                        float o2 = textScanner.o();
                        textScanner.q();
                        if (!Float.isNaN(i9) && textScanner.d(')')) {
                            if (Float.isNaN(o)) {
                                matrix.preRotate(i9);
                                break;
                            } else if (!Float.isNaN(o2)) {
                                matrix.preRotate(i9, o, o2);
                                break;
                            } else {
                                throw new SAXException("Invalid transform list: ".concat(str));
                            }
                        } else {
                            throw new SAXException("Invalid transform list: ".concat(str));
                        }
                    case 2:
                        textScanner.q();
                        float i10 = textScanner.i();
                        float o3 = textScanner.o();
                        textScanner.q();
                        if (!Float.isNaN(i10) && textScanner.d(')')) {
                            if (Float.isNaN(o3)) {
                                matrix.preScale(i10, i10);
                                break;
                            } else {
                                matrix.preScale(i10, o3);
                                break;
                            }
                        } else {
                            throw new SAXException("Invalid transform list: ".concat(str));
                        }
                        break;
                    case 3:
                        textScanner.q();
                        float i11 = textScanner.i();
                        textScanner.q();
                        if (!Float.isNaN(i11) && textScanner.d(')')) {
                            matrix.preSkew((float) Math.tan(Math.toRadians(i11)), 0.0f);
                            break;
                        } else {
                            throw new SAXException("Invalid transform list: ".concat(str));
                        }
                        break;
                    case 4:
                        textScanner.q();
                        float i12 = textScanner.i();
                        textScanner.q();
                        if (!Float.isNaN(i12) && textScanner.d(')')) {
                            matrix.preSkew(0.0f, (float) Math.tan(Math.toRadians(i12)));
                            break;
                        } else {
                            throw new SAXException("Invalid transform list: ".concat(str));
                        }
                        break;
                    case 5:
                        textScanner.q();
                        float i13 = textScanner.i();
                        float o4 = textScanner.o();
                        textScanner.q();
                        if (!Float.isNaN(i13) && textScanner.d(')')) {
                            if (Float.isNaN(o4)) {
                                matrix.preTranslate(i13, 0.0f);
                                break;
                            } else {
                                matrix.preTranslate(i13, o4);
                                break;
                            }
                        } else {
                            throw new SAXException("Invalid transform list: ".concat(str));
                        }
                        break;
                    default:
                        throw new SAXException(android.support.v4.media.a.l("Invalid transform list fn: ", str2, ")"));
                }
                if (!textScanner.f()) {
                    textScanner.p();
                } else {
                    return matrix;
                }
            } else {
                throw new SAXException("Bad transform function encountered in transform list: ".concat(str));
            }
        }
        return matrix;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:464:0x06c7  */
    /* JADX WARN: Removed duplicated region for block: B:466:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.caverock.androidsvg.SVG$CSSClipRect, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void E(com.caverock.androidsvg.SVG.Style r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 1976
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.E(com.caverock.androidsvg.SVG$Style, java.lang.String, java.lang.String):void");
    }

    public static int b(float f) {
        if (f < 0.0f) {
            return 0;
        }
        if (f > 255.0f) {
            return KotlinVersion.MAX_COMPONENT_VALUE;
        }
        return Math.round(f);
    }

    public static int d(float f, float f2, float f3) {
        float f4;
        float f5 = 0.0f;
        float f6 = f % 360.0f;
        if (f < 0.0f) {
            f6 += 360.0f;
        }
        float f7 = f6 / 60.0f;
        float f8 = f2 / 100.0f;
        float f9 = f3 / 100.0f;
        if (f8 < 0.0f) {
            f8 = 0.0f;
        } else if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        if (f9 >= 0.0f) {
            if (f9 > 1.0f) {
                f5 = 1.0f;
            } else {
                f5 = f9;
            }
        }
        if (f5 <= 0.5f) {
            f4 = (f8 + 1.0f) * f5;
        } else {
            f4 = (f5 + f8) - (f8 * f5);
        }
        float f10 = (f5 * 2.0f) - f4;
        float e = e(f10, f4, f7 + 2.0f);
        float e2 = e(f10, f4, f7);
        return b(e(f10, f4, f7 - 2.0f) * 256.0f) | (b(e * 256.0f) << 16) | (b(e2 * 256.0f) << 8);
    }

    public static float e(float f, float f2, float f3) {
        if (f3 < 0.0f) {
            f3 += 6.0f;
        }
        if (f3 >= 6.0f) {
            f3 -= 6.0f;
        }
        if (f3 < 1.0f) {
            return android.support.v4.media.a.a(f2, f, f3, f);
        }
        if (f3 < 3.0f) {
            return f2;
        }
        if (f3 < 4.0f) {
            return android.support.v4.media.a.a(4.0f, f3, f2 - f, f);
        }
        return f;
    }

    public static void g(SVG.SvgConditional svgConditional, Attributes attributes) {
        HashSet hashSet;
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int ordinal = SVGAttr.a(attributes.getLocalName(i)).ordinal();
            if (ordinal != 73) {
                switch (ordinal) {
                    case 52:
                        TextScanner textScanner = new TextScanner(trim);
                        HashSet hashSet2 = new HashSet();
                        while (!textScanner.f()) {
                            String l = textScanner.l();
                            if (l.startsWith("http://www.w3.org/TR/SVG11/feature#")) {
                                hashSet2.add(l.substring(35));
                            } else {
                                hashSet2.add("UNSUPPORTED");
                            }
                            textScanner.q();
                        }
                        svgConditional.f(hashSet2);
                        break;
                    case 53:
                        svgConditional.h(trim);
                        break;
                    case 54:
                        TextScanner textScanner2 = new TextScanner(trim);
                        HashSet hashSet3 = new HashSet();
                        while (!textScanner2.f()) {
                            hashSet3.add(textScanner2.l());
                            textScanner2.q();
                        }
                        svgConditional.i(hashSet3);
                        break;
                    case 55:
                        ArrayList r = r(trim);
                        if (r != null) {
                            hashSet = new HashSet(r);
                        } else {
                            hashSet = new HashSet(0);
                        }
                        svgConditional.g(hashSet);
                        break;
                }
            } else {
                TextScanner textScanner3 = new TextScanner(trim);
                HashSet hashSet4 = new HashSet();
                while (!textScanner3.f()) {
                    String l2 = textScanner3.l();
                    int indexOf = l2.indexOf(45);
                    if (indexOf != -1) {
                        l2 = l2.substring(0, indexOf);
                    }
                    hashSet4.add(new Locale(l2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).getLanguage());
                    textScanner3.q();
                }
                svgConditional.j(hashSet4);
            }
        }
    }

    public static void h(SVG.SvgElementBase svgElementBase, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String qName = attributes.getQName(i);
            if (!qName.equals("id") && !qName.equals("xml:id")) {
                if (qName.equals("xml:space")) {
                    String trim = attributes.getValue(i).trim();
                    if ("default".equals(trim)) {
                        svgElementBase.d = Boolean.FALSE;
                        return;
                    } else {
                        if ("preserve".equals(trim)) {
                            svgElementBase.d = Boolean.TRUE;
                            return;
                        }
                        throw new SAXException(android.support.v4.media.a.C("Invalid value for \"xml:space\" attribute: ", trim));
                    }
                }
            } else {
                svgElementBase.f2558c = attributes.getValue(i).trim();
                return;
            }
        }
    }

    public static void i(SVG.GradientElement gradientElement, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int ordinal = SVGAttr.a(attributes.getLocalName(i)).ordinal();
            if (ordinal != 23) {
                if (ordinal != 24) {
                    if (ordinal != 26) {
                        if (ordinal != 60) {
                            continue;
                        } else {
                            try {
                                gradientElement.k = SVG.GradientSpread.valueOf(trim);
                            } catch (IllegalArgumentException unused) {
                                throw new SAXException(android.support.v4.media.a.l("Invalid spreadMethod attribute. \"", trim, "\" is not a valid value."));
                            }
                        }
                    } else if (RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(attributes.getURI(i)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        gradientElement.l = trim;
                    }
                } else if ("objectBoundingBox".equals(trim)) {
                    gradientElement.i = Boolean.FALSE;
                } else if ("userSpaceOnUse".equals(trim)) {
                    gradientElement.i = Boolean.TRUE;
                } else {
                    throw new SAXException("Invalid value for attribute gradientUnits");
                }
            } else {
                gradientElement.j = A(trim);
            }
        }
    }

    public static void j(SVG.PolyLine polyLine, Attributes attributes, String str) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.a(attributes.getLocalName(i)) == SVGAttr.f) {
                TextScanner textScanner = new TextScanner(attributes.getValue(i));
                ArrayList arrayList = new ArrayList();
                textScanner.q();
                while (!textScanner.f()) {
                    float i2 = textScanner.i();
                    if (!Float.isNaN(i2)) {
                        textScanner.p();
                        float i3 = textScanner.i();
                        if (!Float.isNaN(i3)) {
                            textScanner.p();
                            arrayList.add(Float.valueOf(i2));
                            arrayList.add(Float.valueOf(i3));
                        } else {
                            throw new SAXException(android.support.v4.media.a.l("Invalid <", str, "> points attribute. There should be an even number of coordinates."));
                        }
                    } else {
                        throw new SAXException(android.support.v4.media.a.l("Invalid <", str, "> points attribute. Non-coordinate content found in list."));
                    }
                }
                polyLine.o = new float[arrayList.size()];
                int size = arrayList.size();
                int i4 = 0;
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    polyLine.o[i4] = ((Float) obj).floatValue();
                    i4++;
                }
            }
        }
    }

    public static void k(SVG.SvgElementBase svgElementBase, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (trim.length() != 0) {
                int ordinal = SVGAttr.a(attributes.getLocalName(i)).ordinal();
                if (ordinal != 0) {
                    if (ordinal != 72) {
                        if (svgElementBase.e == null) {
                            svgElementBase.e = new SVG.Style();
                        }
                        E(svgElementBase.e, attributes.getLocalName(i), attributes.getValue(i).trim());
                    } else {
                        TextScanner textScanner = new TextScanner(trim.replaceAll("/\\*.*?\\*/", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                        while (true) {
                            String m = textScanner.m(':', false);
                            textScanner.q();
                            if (!textScanner.d(':')) {
                                break;
                            }
                            textScanner.q();
                            String m2 = textScanner.m(';', true);
                            if (m2 == null) {
                                break;
                            }
                            textScanner.q();
                            if (textScanner.f() || textScanner.d(';')) {
                                if (svgElementBase.f == null) {
                                    svgElementBase.f = new SVG.Style();
                                }
                                E(svgElementBase.f, m, m2);
                                textScanner.q();
                            }
                        }
                    }
                } else {
                    CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(trim);
                    ArrayList arrayList = null;
                    while (!cSSTextScanner.f()) {
                        String l = cSSTextScanner.l();
                        if (l != null) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(l);
                            cSSTextScanner.q();
                        }
                    }
                    svgElementBase.g = arrayList;
                }
            }
        }
    }

    public static void l(SVG.TextPositionedContainer textPositionedContainer, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int ordinal = SVGAttr.a(attributes.getLocalName(i)).ordinal();
            if (ordinal != 9) {
                if (ordinal != 10) {
                    if (ordinal != 82) {
                        if (ordinal == 83) {
                            textPositionedContainer.o = u(trim);
                        }
                    } else {
                        textPositionedContainer.n = u(trim);
                    }
                } else {
                    textPositionedContainer.q = u(trim);
                }
            } else {
                textPositionedContainer.p = u(trim);
            }
        }
    }

    public static void m(SVG.HasTransform hasTransform, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.a(attributes.getLocalName(i)) == SVGAttr.g) {
                hasTransform.k(A(attributes.getValue(i)));
            }
        }
    }

    public static void n(SVG.SvgViewBoxContainer svgViewBoxContainer, Attributes attributes) {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            int ordinal = SVGAttr.a(attributes.getLocalName(i)).ordinal();
            if (ordinal != 48) {
                if (ordinal != 80) {
                    continue;
                } else {
                    TextScanner textScanner = new TextScanner(trim);
                    textScanner.q();
                    float i2 = textScanner.i();
                    textScanner.p();
                    float i3 = textScanner.i();
                    textScanner.p();
                    float i4 = textScanner.i();
                    textScanner.p();
                    float i5 = textScanner.i();
                    if (!Float.isNaN(i2) && !Float.isNaN(i3) && !Float.isNaN(i4) && !Float.isNaN(i5)) {
                        if (i4 >= 0.0f) {
                            if (i5 >= 0.0f) {
                                svgViewBoxContainer.o = new SVG.Box(i2, i3, i4, i5);
                            } else {
                                throw new SAXException("Invalid viewBox. height cannot be negative");
                            }
                        } else {
                            throw new SAXException("Invalid viewBox. width cannot be negative");
                        }
                    } else {
                        throw new SAXException("Invalid viewBox definition - should have four numbers");
                    }
                }
            } else {
                y(svgViewBoxContainer, trim);
            }
        }
    }

    public static SVG.Colour o(String str) {
        long j;
        int i;
        int i2 = 5;
        if (str.charAt(0) == '#') {
            int length = str.length();
            IntegerParser integerParser = null;
            if (1 < length) {
                long j2 = 0;
                int i3 = 1;
                while (i3 < length) {
                    char charAt = str.charAt(i3);
                    if (charAt >= '0' && charAt <= '9') {
                        j2 = (j2 * 16) + (charAt - '0');
                    } else {
                        if (charAt >= 'A' && charAt <= 'F') {
                            j = j2 * 16;
                            i = charAt - 'A';
                        } else {
                            if (charAt < 'a' || charAt > 'f') {
                                break;
                            }
                            j = j2 * 16;
                            i = charAt - 'a';
                        }
                        j2 = j + i + 10;
                    }
                    if (j2 > 4294967295L) {
                        break;
                    }
                    i3++;
                }
                if (i3 != 1) {
                    integerParser = new IntegerParser(j2, i3);
                }
            }
            if (integerParser != null) {
                long j3 = integerParser.b;
                int i4 = integerParser.f2526a;
                if (i4 != 4) {
                    if (i4 != 5) {
                        if (i4 != 7) {
                            if (i4 == 9) {
                                int i5 = (int) j3;
                                return new SVG.Colour((i5 >>> 8) | (i5 << 24));
                            }
                            throw new SAXException("Bad hex colour value: ".concat(str));
                        }
                        return new SVG.Colour(((int) j3) | (-16777216));
                    }
                    int i6 = (int) j3;
                    int i7 = 61440 & i6;
                    int i8 = i6 & 3840;
                    int i9 = i6 & 240;
                    int i10 = i6 & 15;
                    return new SVG.Colour((i10 << 24) | (i10 << 28) | (i7 << 8) | (i7 << 4) | (i8 << 4) | i8 | i9 | (i9 >> 4));
                }
                int i11 = (int) j3;
                int i12 = i11 & 3840;
                int i13 = i11 & 240;
                int i14 = i11 & 15;
                return new SVG.Colour(i14 | (i12 << 8) | (-16777216) | (i12 << 12) | (i13 << 8) | (i13 << 4) | (i14 << 4));
            }
            throw new SAXException("Bad hex colour value: ".concat(str));
        }
        String lowerCase = str.toLowerCase(Locale.US);
        boolean startsWith = lowerCase.startsWith("rgba(");
        if (!startsWith && !lowerCase.startsWith("rgb(")) {
            boolean startsWith2 = lowerCase.startsWith("hsla(");
            if (!startsWith2 && !lowerCase.startsWith("hsl(")) {
                Integer num = (Integer) ColourKeywords.f2589a.get(lowerCase);
                if (num != null) {
                    return new SVG.Colour(num.intValue());
                }
                throw new SAXException("Invalid colour keyword: ".concat(lowerCase));
            }
            if (!startsWith2) {
                i2 = 4;
            }
            TextScanner textScanner = new TextScanner(str.substring(i2));
            textScanner.q();
            float i15 = textScanner.i();
            float c2 = textScanner.c(i15);
            if (!Float.isNaN(c2)) {
                textScanner.d('%');
            }
            float c3 = textScanner.c(c2);
            if (!Float.isNaN(c3)) {
                textScanner.d('%');
            }
            if (startsWith2) {
                float c4 = textScanner.c(c3);
                textScanner.q();
                if (!Float.isNaN(c4) && textScanner.d(')')) {
                    return new SVG.Colour((b(c4 * 256.0f) << 24) | d(i15, c2, c3));
                }
                throw new SAXException("Bad hsla() colour value: ".concat(str));
            }
            textScanner.q();
            if (!Float.isNaN(c3) && textScanner.d(')')) {
                return new SVG.Colour(d(i15, c2, c3) | (-16777216));
            }
            throw new SAXException("Bad hsl() colour value: ".concat(str));
        }
        if (!startsWith) {
            i2 = 4;
        }
        TextScanner textScanner2 = new TextScanner(str.substring(i2));
        textScanner2.q();
        float i16 = textScanner2.i();
        if (!Float.isNaN(i16) && textScanner2.d('%')) {
            i16 = (i16 * 256.0f) / 100.0f;
        }
        float c5 = textScanner2.c(i16);
        if (!Float.isNaN(c5) && textScanner2.d('%')) {
            c5 = (c5 * 256.0f) / 100.0f;
        }
        float c6 = textScanner2.c(c5);
        if (!Float.isNaN(c6) && textScanner2.d('%')) {
            c6 = (c6 * 256.0f) / 100.0f;
        }
        if (startsWith) {
            float c7 = textScanner2.c(c6);
            textScanner2.q();
            if (!Float.isNaN(c7) && textScanner2.d(')')) {
                return new SVG.Colour((b(c7 * 256.0f) << 24) | (b(i16) << 16) | (b(c5) << 8) | b(c6));
            }
            throw new SAXException("Bad rgba() colour value: ".concat(str));
        }
        textScanner2.q();
        if (!Float.isNaN(c6) && textScanner2.d(')')) {
            return new SVG.Colour((b(i16) << 16) | (-16777216) | (b(c5) << 8) | b(c6));
        }
        throw new SAXException("Bad rgb() colour value: ".concat(str));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.caverock.androidsvg.NumberParser] */
    public static float p(int i, String str) {
        float a2 = new Object().a(0, i, str);
        if (!Float.isNaN(a2)) {
            return a2;
        }
        throw new SAXException(android.support.v4.media.a.C("Invalid float value: ", str));
    }

    public static float q(String str) {
        int length = str.length();
        if (length != 0) {
            return p(length, str);
        }
        throw new SAXException("Invalid float value (empty string)");
    }

    public static ArrayList r(String str) {
        TextScanner textScanner = new TextScanner(str);
        ArrayList arrayList = null;
        do {
            String k = textScanner.k();
            if (k == null) {
                k = textScanner.m(',', true);
            }
            if (k == null) {
                return arrayList;
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(k);
            textScanner.p();
        } while (!textScanner.f());
        return arrayList;
    }

    public static String s(String str) {
        if (str.equals("none") || !str.startsWith("url(")) {
            return null;
        }
        if (str.endsWith(")")) {
            return str.substring(4, str.length() - 1).trim();
        }
        return str.substring(4).trim();
    }

    public static SVG.Length t(String str) {
        SVG.Unit unit;
        if (str.length() != 0) {
            int length = str.length();
            char charAt = str.charAt(length - 1);
            if (charAt == '%') {
                length--;
                unit = SVG.Unit.g;
            } else if (length > 2 && Character.isLetter(charAt) && Character.isLetter(str.charAt(length - 2))) {
                length -= 2;
                try {
                    unit = SVG.Unit.valueOf(str.substring(length).toLowerCase(Locale.US));
                } catch (IllegalArgumentException unused) {
                    throw new SAXException("Invalid length unit specifier: ".concat(str));
                }
            } else {
                unit = SVG.Unit.f2561c;
            }
            try {
                return new SVG.Length(p(length, str), unit);
            } catch (NumberFormatException e) {
                throw new SAXException("Invalid length value: ".concat(str), e);
            }
        }
        throw new SAXException("Invalid length value (empty string)");
    }

    public static ArrayList u(String str) {
        String str2;
        if (str.length() != 0) {
            ArrayList arrayList = new ArrayList(1);
            TextScanner textScanner = new TextScanner(str);
            textScanner.q();
            while (!textScanner.f()) {
                float i = textScanner.i();
                if (Float.isNaN(i)) {
                    StringBuilder sb = new StringBuilder("Invalid length list value: ");
                    int i2 = textScanner.b;
                    while (true) {
                        boolean f = textScanner.f();
                        str2 = textScanner.f2595a;
                        if (f || TextScanner.g(str2.charAt(textScanner.b))) {
                            break;
                        }
                        textScanner.b++;
                    }
                    String substring = str2.substring(i2, textScanner.b);
                    textScanner.b = i2;
                    sb.append(substring);
                    throw new SAXException(sb.toString());
                }
                SVG.Unit n = textScanner.n();
                if (n == null) {
                    n = SVG.Unit.f2561c;
                }
                arrayList.add(new SVG.Length(i, n));
                textScanner.p();
            }
            return arrayList;
        }
        throw new SAXException("Invalid length list (empty string)");
    }

    public static SVG.Length v(TextScanner textScanner) {
        if (textScanner.e("auto")) {
            return new SVG.Length(0.0f);
        }
        return textScanner.j();
    }

    public static Float w(String str) {
        try {
            float q = q(str);
            float f = 0.0f;
            if (q >= 0.0f) {
                f = 1.0f;
                if (q > 1.0f) {
                }
                return Float.valueOf(q);
            }
            q = f;
            return Float.valueOf(q);
        } catch (SVGParseException unused) {
            return null;
        }
    }

    public static SVG.SvgPaint x(String str) {
        boolean startsWith = str.startsWith("url(");
        SVG.SvgPaint svgPaint = SVG.Colour.g;
        SVG.SvgPaint svgPaint2 = SVG.CurrentColor.f2542c;
        SVG.SvgPaint svgPaint3 = null;
        if (startsWith) {
            int indexOf = str.indexOf(")");
            if (indexOf != -1) {
                String trim = str.substring(4, indexOf).trim();
                String trim2 = str.substring(indexOf + 1).trim();
                if (trim2.length() > 0) {
                    if (!trim2.equals("none")) {
                        if (!trim2.equals("currentColor")) {
                            try {
                                svgPaint = o(trim2);
                            } catch (SVGParseException unused) {
                                svgPaint = null;
                            }
                        } else {
                            svgPaint = svgPaint2;
                        }
                    }
                    svgPaint3 = svgPaint;
                }
                return new SVG.PaintReference(trim, svgPaint3);
            }
            return new SVG.PaintReference(str.substring(4).trim(), null);
        }
        if (!str.equals("none")) {
            if (!str.equals("currentColor")) {
                try {
                    return o(str);
                } catch (SVGParseException unused2) {
                    return null;
                }
            }
            return svgPaint2;
        }
        return svgPaint;
    }

    public static void y(SVG.SvgPreserveAspectRatioContainer svgPreserveAspectRatioContainer, String str) {
        PreserveAspectRatio.Scale scale;
        TextScanner textScanner = new TextScanner(str);
        textScanner.q();
        String l = textScanner.l();
        if ("defer".equals(l)) {
            textScanner.q();
            l = textScanner.l();
        }
        PreserveAspectRatio.Alignment alignment = (PreserveAspectRatio.Alignment) AspectRatioKeywords.f2588a.get(l);
        textScanner.q();
        if (!textScanner.f()) {
            String l2 = textScanner.l();
            l2.getClass();
            if (!l2.equals("meet")) {
                if (l2.equals("slice")) {
                    scale = PreserveAspectRatio.Scale.f;
                } else {
                    throw new SAXException("Invalid preserveAspectRatio definition: ".concat(str));
                }
            } else {
                scale = PreserveAspectRatio.Scale.f2532c;
            }
        } else {
            scale = null;
        }
        svgPreserveAspectRatioContainer.n = new PreserveAspectRatio(alignment, scale);
    }

    public static HashMap z(TextScanner textScanner) {
        HashMap hashMap = new HashMap();
        textScanner.q();
        String m = textScanner.m('=', false);
        while (m != null) {
            textScanner.d('=');
            hashMap.put(m, textScanner.k());
            textScanner.q();
            m = textScanner.m('=', false);
        }
        return hashMap;
    }

    public final void B(InputStream inputStream) {
        Log.d("SVGParser", "Falling back to SAX parser");
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            newInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
            SAXHandler sAXHandler = new SAXHandler();
            xMLReader.setContentHandler(sAXHandler);
            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", sAXHandler);
            xMLReader.parse(new InputSource(inputStream));
        } catch (IOException e) {
            throw new SAXException("Stream error", e);
        } catch (ParserConfigurationException e2) {
            throw new SAXException("XML parser problem", e2);
        } catch (SAXException e3) {
            throw new SAXException("SVG parse error", e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.caverock.androidsvg.SVGParser$XPPAttributesWrapper, org.xml.sax.Attributes, java.lang.Object] */
    public final void C(InputStream inputStream) {
        try {
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                ?? obj = new Object();
                obj.f2597a = newPullParser;
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-docdecl", false);
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                newPullParser.setInput(inputStream, null);
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.nextToken()) {
                    if (eventType != 0) {
                        if (eventType != 8) {
                            if (eventType != 10) {
                                if (eventType != 2) {
                                    if (eventType != 3) {
                                        if (eventType != 4) {
                                            if (eventType == 5) {
                                                H(newPullParser.getText());
                                            }
                                        } else {
                                            int[] iArr = new int[2];
                                            I(newPullParser.getTextCharacters(iArr), iArr[0], iArr[1]);
                                        }
                                    } else {
                                        String name = newPullParser.getName();
                                        if (newPullParser.getPrefix() != null) {
                                            name = newPullParser.getPrefix() + ':' + name;
                                        }
                                        c(newPullParser.getNamespace(), newPullParser.getName(), name);
                                    }
                                } else {
                                    String name2 = newPullParser.getName();
                                    if (newPullParser.getPrefix() != null) {
                                        name2 = newPullParser.getPrefix() + ':' + name2;
                                    }
                                    G(newPullParser.getNamespace(), newPullParser.getName(), name2, obj);
                                }
                            } else if (this.f2585a.f2534a == null && newPullParser.getText().contains("<!ENTITY ")) {
                                try {
                                    Log.d("SVGParser", "Switching to SAX parser to process entities");
                                    inputStream.reset();
                                    B(inputStream);
                                    return;
                                } catch (IOException unused) {
                                    Log.w("SVGParser", "Detected internal entity definitions, but could not parse them.");
                                    return;
                                }
                            }
                        } else {
                            Log.d("SVGParser", "PROC INSTR: " + newPullParser.getText());
                            TextScanner textScanner = new TextScanner(newPullParser.getText());
                            String l = textScanner.l();
                            z(textScanner);
                            l.equals("xml-stylesheet");
                        }
                    } else {
                        F();
                    }
                }
            } catch (XmlPullParserException e) {
                throw new SAXException("XML parser problem", e);
            }
        } catch (IOException e2) {
            throw new SAXException("Stream error", e2);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x00a2. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x035c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$Path, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, com.caverock.androidsvg.SVG$PathDefinition] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(org.xml.sax.Attributes r25) {
        /*
            Method dump skipped, instructions count: 966
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.D(org.xml.sax.Attributes):void");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.SVG, java.lang.Object] */
    public final void F() {
        ?? obj = new Object();
        obj.f2534a = null;
        obj.b = new CSSParser.Ruleset();
        obj.f2535c = new HashMap();
        this.f2585a = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:262:0x04a8, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0671, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0735, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0106, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0978, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:716:0x0bc8, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:467:0x0793. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v136, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v139, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgPreserveAspectRatioContainer, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgViewBoxContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v142, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$TextPositionedContainer, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v145, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$TextPath, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v150, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$TRef, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer] */
    /* JADX WARN: Type inference failed for: r0v155, types: [com.caverock.androidsvg.SVG$TSpan, com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$TextPositionedContainer, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v158, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$Use, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v163, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgPreserveAspectRatioContainer, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgViewBoxContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$ClipPath, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v47, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$Image, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgPreserveAspectRatioContainer, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgContainer, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r0v62, types: [com.caverock.androidsvg.SVG$GradientElement, com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgLinearGradient, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v65, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$Marker, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgPreserveAspectRatioContainer, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgViewBoxContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$Svg, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgPreserveAspectRatioContainer, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgViewBoxContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v71, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$Mask, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgConditionalContainer, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v78, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgPreserveAspectRatioContainer, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgViewBoxContainer, com.caverock.androidsvg.SVG$Pattern, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r0v93, types: [com.caverock.androidsvg.SVG$GradientElement, com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgRadialGradient, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r3v102, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$Rect, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r3v103, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r3v105, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$Stop, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$SvgContainer] */
    /* JADX WARN: Type inference failed for: r3v18, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$Circle, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r3v29, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$Ellipse, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r3v41, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$Line, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r3v89, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$PolyLine, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$HasTransform] */
    /* JADX WARN: Type inference failed for: r3v90, types: [com.caverock.androidsvg.SVG$SvgObject, com.caverock.androidsvg.SVG$GraphicsElement, com.caverock.androidsvg.SVG$PolyLine, com.caverock.androidsvg.SVG$SvgConditional, com.caverock.androidsvg.SVG$SvgElementBase, com.caverock.androidsvg.SVG$HasTransform] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(java.lang.String r17, java.lang.String r18, java.lang.String r19, org.xml.sax.Attributes r20) {
        /*
            Method dump skipped, instructions count: 3212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.G(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }

    public final void H(String str) {
        if (!this.f2586c) {
            if (this.e) {
                if (this.g == null) {
                    this.g = new StringBuilder(str.length());
                }
                this.g.append(str);
            } else if (this.h) {
                if (this.i == null) {
                    this.i = new StringBuilder(str.length());
                }
                this.i.append(str);
            } else if (this.b instanceof SVG.TextContainer) {
                a(str);
            }
        }
    }

    public final void I(char[] cArr, int i, int i2) {
        if (!this.f2586c) {
            if (this.e) {
                if (this.g == null) {
                    this.g = new StringBuilder(i2);
                }
                this.g.append(cArr, i, i2);
            } else if (this.h) {
                if (this.i == null) {
                    this.i = new StringBuilder(i2);
                }
                this.i.append(cArr, i, i2);
            } else if (this.b instanceof SVG.TextContainer) {
                a(new String(cArr, i, i2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.caverock.androidsvg.SVG$SvgObject, java.lang.Object, com.caverock.androidsvg.SVG$TextSequence] */
    public final void a(String str) {
        SVG.SvgObject svgObject;
        SVG.SvgConditionalContainer svgConditionalContainer = (SVG.SvgConditionalContainer) this.b;
        int size = svgConditionalContainer.i.size();
        if (size == 0) {
            svgObject = null;
        } else {
            svgObject = (SVG.SvgObject) svgConditionalContainer.i.get(size - 1);
        }
        if (svgObject instanceof SVG.TextSequence) {
            SVG.TextSequence textSequence = (SVG.TextSequence) svgObject;
            textSequence.f2560c = android.support.v4.media.a.p(new StringBuilder(), textSequence.f2560c, str);
        } else {
            SVG.SvgContainer svgContainer = this.b;
            ?? obj = new Object();
            obj.f2560c = str;
            svgContainer.c(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [com.caverock.androidsvg.CSSParser, java.lang.Object] */
    public final void c(String str, String str2, String str3) {
        if (this.f2586c) {
            int i = this.d - 1;
            this.d = i;
            if (i == 0) {
                this.f2586c = false;
                return;
            }
        }
        if (Parser.NamespaceSvg.equals(str) || RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str)) {
            if (str2.length() <= 0) {
                str2 = str3;
            }
            SVGElem sVGElem = (SVGElem) SVGElem.i.get(str2);
            if (sVGElem == null) {
                sVGElem = SVGElem.h;
            }
            switch (sVGElem.ordinal()) {
                case 0:
                case 3:
                case 4:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 14:
                case 17:
                case 19:
                case 20:
                case 22:
                case ConnectionResult.API_DISABLED /* 23 */:
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case 25:
                case 28:
                case 29:
                case 30:
                    this.b = ((SVG.SvgObject) this.b).b;
                    return;
                case 1:
                case 2:
                case 6:
                case 9:
                case 13:
                case 15:
                case 16:
                case 18:
                case 27:
                default:
                    return;
                case 5:
                case 26:
                    this.e = false;
                    if (this.g != null) {
                        SVGElem sVGElem2 = this.f;
                        if (sVGElem2 == SVGElem.g) {
                            this.f2585a.getClass();
                        } else if (sVGElem2 == SVGElem.f2594c) {
                            this.f2585a.getClass();
                        }
                        this.g.setLength(0);
                        return;
                    }
                    return;
                case 21:
                    StringBuilder sb = this.i;
                    if (sb != null) {
                        this.h = false;
                        String sb2 = sb.toString();
                        ?? obj = new Object();
                        obj.f2505c = false;
                        obj.f2504a = CSSParser.MediaType.f;
                        obj.b = CSSParser.Source.f2525c;
                        SVG svg = this.f2585a;
                        CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(sb2);
                        cSSTextScanner.q();
                        svg.b.b(obj.e(cSSTextScanner));
                        this.i.setLength(0);
                        return;
                    }
                    return;
            }
        }
    }

    public final SVG f(InputStream inputStream) {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream);
        }
        try {
            inputStream.mark(3);
            int read = inputStream.read() + (inputStream.read() << 8);
            inputStream.reset();
            if (read == 35615) {
                inputStream = new BufferedInputStream(new GZIPInputStream(inputStream));
            }
        } catch (IOException unused) {
        }
        try {
            inputStream.mark(ConstantsKt.DEFAULT_BLOCK_SIZE);
            C(inputStream);
            return this.f2585a;
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused2) {
                Log.e("SVGParser", "Exception thrown closing input stream");
            }
        }
    }
}
