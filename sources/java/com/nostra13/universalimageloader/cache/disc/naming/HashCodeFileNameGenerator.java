package com.nostra13.universalimageloader.cache.disc.naming;

/* loaded from: classes3.dex */
public class HashCodeFileNameGenerator implements FileNameGenerator {
    @Override // com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator
    public final String a(String str) {
        return String.valueOf(str.hashCode());
    }
}
