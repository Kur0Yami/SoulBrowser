package com.google.android.datatransport.cct;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedDestination;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class CCTDestination implements EncodedDestination {

    /* renamed from: c, reason: collision with root package name */
    public static final String f2756c;
    public static final Set d;
    public static final CCTDestination e;

    /* renamed from: a, reason: collision with root package name */
    public final String f2757a;
    public final String b;

    static {
        String a2 = StringMerger.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f2756c = a2;
        StringMerger.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        StringMerger.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        d = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(new Encoding("proto"), new Encoding("json"))));
        e = new CCTDestination(a2, null);
    }

    public CCTDestination(String str, String str2) {
        this.f2757a = str;
        this.b = str2;
    }

    public static CCTDestination b(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split2 = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split2.length == 2) {
                String str2 = split2[0];
                if (!str2.isEmpty()) {
                    String str3 = split2[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new CCTDestination(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // com.google.android.datatransport.runtime.EncodedDestination
    public final Set a() {
        return d;
    }

    @Override // com.google.android.datatransport.runtime.Destination
    public final byte[] getExtras() {
        String str = this.f2757a;
        String str2 = this.b;
        if (str2 == null && str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return android.support.v4.media.a.m("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
    }
}
