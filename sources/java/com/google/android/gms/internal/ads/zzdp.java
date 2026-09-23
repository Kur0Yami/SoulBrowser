package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzdp {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f5981a = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    public static final Pattern b = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f5982c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");
    public static final HashMap d;

    static {
        HashMap hashMap = new HashMap();
        d = hashMap;
        androidx.work.impl.workers.a.v(-984833, hashMap, "aliceblue", -332841, "antiquewhite");
        androidx.work.impl.workers.a.B(hashMap, "aqua", -16711681, -8388652, "aquamarine");
        androidx.work.impl.workers.a.v(-983041, hashMap, "azure", -657956, "beige");
        androidx.work.impl.workers.a.v(-6972, hashMap, "bisque", -16777216, "black");
        androidx.work.impl.workers.a.v(-5171, hashMap, "blanchedalmond", -16776961, "blue");
        androidx.work.impl.workers.a.v(-7722014, hashMap, "blueviolet", -5952982, "brown");
        androidx.work.impl.workers.a.v(-2180985, hashMap, "burlywood", -10510688, "cadetblue");
        androidx.work.impl.workers.a.v(-8388864, hashMap, "chartreuse", -2987746, "chocolate");
        androidx.work.impl.workers.a.v(-32944, hashMap, "coral", -10185235, "cornflowerblue");
        androidx.work.impl.workers.a.v(-1828, hashMap, "cornsilk", -2354116, "crimson");
        androidx.work.impl.workers.a.B(hashMap, "cyan", -16711681, -16777077, "darkblue");
        androidx.work.impl.workers.a.v(-16741493, hashMap, "darkcyan", -4684277, "darkgoldenrod");
        androidx.work.impl.workers.a.B(hashMap, "darkgray", -5658199, -16751616, "darkgreen");
        androidx.work.impl.workers.a.B(hashMap, "darkgrey", -5658199, -4343957, "darkkhaki");
        androidx.work.impl.workers.a.v(-7667573, hashMap, "darkmagenta", -11179217, "darkolivegreen");
        androidx.work.impl.workers.a.v(-29696, hashMap, "darkorange", -6737204, "darkorchid");
        androidx.work.impl.workers.a.v(-7667712, hashMap, "darkred", -1468806, "darksalmon");
        androidx.work.impl.workers.a.v(-7357297, hashMap, "darkseagreen", -12042869, "darkslateblue");
        hashMap.put("darkslategray", -13676721);
        hashMap.put("darkslategrey", -13676721);
        androidx.work.impl.workers.a.B(hashMap, "darkturquoise", -16724271, -7077677, "darkviolet");
        androidx.work.impl.workers.a.v(-60269, hashMap, "deeppink", -16728065, "deepskyblue");
        hashMap.put("dimgray", -9868951);
        hashMap.put("dimgrey", -9868951);
        androidx.work.impl.workers.a.B(hashMap, "dodgerblue", -14774017, -5103070, "firebrick");
        androidx.work.impl.workers.a.v(-1296, hashMap, "floralwhite", -14513374, "forestgreen");
        androidx.work.impl.workers.a.B(hashMap, "fuchsia", -65281, -2302756, "gainsboro");
        androidx.work.impl.workers.a.v(-460545, hashMap, "ghostwhite", -10496, "gold");
        hashMap.put("goldenrod", -2448096);
        hashMap.put("gray", -8355712);
        androidx.work.impl.workers.a.v(-16744448, hashMap, "green", -5374161, "greenyellow");
        androidx.work.impl.workers.a.B(hashMap, "grey", -8355712, -983056, "honeydew");
        androidx.work.impl.workers.a.v(-38476, hashMap, "hotpink", -3318692, "indianred");
        androidx.work.impl.workers.a.v(-11861886, hashMap, "indigo", -16, "ivory");
        androidx.work.impl.workers.a.v(-989556, hashMap, "khaki", -1644806, "lavender");
        androidx.work.impl.workers.a.v(-3851, hashMap, "lavenderblush", -8586240, "lawngreen");
        androidx.work.impl.workers.a.v(-1331, hashMap, "lemonchiffon", -5383962, "lightblue");
        androidx.work.impl.workers.a.v(-1015680, hashMap, "lightcoral", -2031617, "lightcyan");
        hashMap.put("lightgoldenrodyellow", -329006);
        hashMap.put("lightgray", -2894893);
        hashMap.put("lightgreen", -7278960);
        hashMap.put("lightgrey", -2894893);
        androidx.work.impl.workers.a.v(-18751, hashMap, "lightpink", -24454, "lightsalmon");
        androidx.work.impl.workers.a.v(-14634326, hashMap, "lightseagreen", -7876870, "lightskyblue");
        hashMap.put("lightslategray", -8943463);
        hashMap.put("lightslategrey", -8943463);
        androidx.work.impl.workers.a.B(hashMap, "lightsteelblue", -5192482, -32, "lightyellow");
        androidx.work.impl.workers.a.v(-16711936, hashMap, "lime", -13447886, "limegreen");
        hashMap.put("linen", -331546);
        hashMap.put("magenta", -65281);
        androidx.work.impl.workers.a.v(-8388608, hashMap, "maroon", -10039894, "mediumaquamarine");
        androidx.work.impl.workers.a.v(-16777011, hashMap, "mediumblue", -4565549, "mediumorchid");
        androidx.work.impl.workers.a.v(-7114533, hashMap, "mediumpurple", -12799119, "mediumseagreen");
        androidx.work.impl.workers.a.v(-8689426, hashMap, "mediumslateblue", -16713062, "mediumspringgreen");
        androidx.work.impl.workers.a.v(-12004916, hashMap, "mediumturquoise", -3730043, "mediumvioletred");
        androidx.work.impl.workers.a.v(-15132304, hashMap, "midnightblue", -655366, "mintcream");
        androidx.work.impl.workers.a.v(-6943, hashMap, "mistyrose", -6987, "moccasin");
        androidx.work.impl.workers.a.v(-8531, hashMap, "navajowhite", -16777088, "navy");
        androidx.work.impl.workers.a.v(-133658, hashMap, "oldlace", -8355840, "olive");
        androidx.work.impl.workers.a.v(-9728477, hashMap, "olivedrab", -23296, "orange");
        androidx.work.impl.workers.a.v(-47872, hashMap, "orangered", -2461482, "orchid");
        androidx.work.impl.workers.a.v(-1120086, hashMap, "palegoldenrod", -6751336, "palegreen");
        androidx.work.impl.workers.a.v(-5247250, hashMap, "paleturquoise", -2396013, "palevioletred");
        androidx.work.impl.workers.a.v(-4139, hashMap, "papayawhip", -9543, "peachpuff");
        androidx.work.impl.workers.a.v(-3308225, hashMap, "peru", -16181, "pink");
        androidx.work.impl.workers.a.v(-2252579, hashMap, "plum", -5185306, "powderblue");
        androidx.work.impl.workers.a.v(-8388480, hashMap, "purple", -10079335, "rebeccapurple");
        androidx.work.impl.workers.a.v(-65536, hashMap, "red", -4419697, "rosybrown");
        androidx.work.impl.workers.a.v(-12490271, hashMap, "royalblue", -7650029, "saddlebrown");
        androidx.work.impl.workers.a.v(-360334, hashMap, "salmon", -744352, "sandybrown");
        androidx.work.impl.workers.a.v(-13726889, hashMap, "seagreen", -2578, "seashell");
        androidx.work.impl.workers.a.v(-6270419, hashMap, "sienna", -4144960, "silver");
        androidx.work.impl.workers.a.v(-7876885, hashMap, "skyblue", -9807155, "slateblue");
        hashMap.put("slategray", -9404272);
        hashMap.put("slategrey", -9404272);
        androidx.work.impl.workers.a.B(hashMap, "snow", -1286, -16711809, "springgreen");
        androidx.work.impl.workers.a.v(-12156236, hashMap, "steelblue", -2968436, "tan");
        androidx.work.impl.workers.a.v(-16744320, hashMap, "teal", -2572328, "thistle");
        androidx.work.impl.workers.a.v(-40121, hashMap, "tomato", 0, "transparent");
        androidx.work.impl.workers.a.v(-12525360, hashMap, "turquoise", -1146130, "violet");
        androidx.work.impl.workers.a.v(-663885, hashMap, "wheat", -1, "white");
        androidx.work.impl.workers.a.v(-657931, hashMap, "whitesmoke", -256, "yellow");
        hashMap.put("yellowgreen", -6632142);
    }

    public static int a(String str, boolean z) {
        Pattern pattern;
        int parseInt;
        zzgqa.a(!TextUtils.isEmpty(str));
        String replace = str.replace(" ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                return (-16777216) | parseLong;
            }
            if (replace.length() == 9) {
                return ((parseLong & KotlinVersion.MAX_COMPONENT_VALUE) << 24) | (parseLong >>> 8);
            }
            throw new IllegalArgumentException();
        }
        if (replace.startsWith("rgba")) {
            if (z) {
                pattern = f5982c;
            } else {
                pattern = b;
            }
            Matcher matcher = pattern.matcher(replace);
            if (matcher.matches()) {
                if (z) {
                    String group = matcher.group(4);
                    group.getClass();
                    parseInt = (int) (Float.parseFloat(group) * 255.0f);
                } else {
                    String group2 = matcher.group(4);
                    group2.getClass();
                    parseInt = Integer.parseInt(group2, 10);
                }
                String group3 = matcher.group(1);
                group3.getClass();
                int parseInt2 = Integer.parseInt(group3, 10);
                String group4 = matcher.group(2);
                group4.getClass();
                int parseInt3 = Integer.parseInt(group4, 10);
                String group5 = matcher.group(3);
                group5.getClass();
                return Color.argb(parseInt, parseInt2, parseInt3, Integer.parseInt(group5, 10));
            }
        } else if (replace.startsWith("rgb")) {
            Matcher matcher2 = f5981a.matcher(replace);
            if (matcher2.matches()) {
                String group6 = matcher2.group(1);
                group6.getClass();
                int parseInt4 = Integer.parseInt(group6, 10);
                String group7 = matcher2.group(2);
                group7.getClass();
                int parseInt5 = Integer.parseInt(group7, 10);
                String group8 = matcher2.group(3);
                group8.getClass();
                return Color.rgb(parseInt4, parseInt5, Integer.parseInt(group8, 10));
            }
        } else {
            Integer num = (Integer) d.get(zzgpj.a(replace));
            if (num != null) {
                return num.intValue();
            }
        }
        throw new IllegalArgumentException();
    }
}
