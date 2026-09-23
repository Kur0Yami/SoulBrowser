package com.bumptech.glide.load.data;

import android.content.UriMatcher;
import java.io.InputStream;

/* loaded from: classes.dex */
public class StreamLocalUriFetcher extends LocalUriFetcher<InputStream> {
    public static final UriMatcher i;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        i = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final void c(Object obj) {
        ((InputStream) obj).close();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(android.content.ContentResolver r4, android.net.Uri r5) {
        /*
            r3 = this;
            android.content.UriMatcher r0 = com.bumptech.glide.load.data.StreamLocalUriFetcher.i
            int r0 = r0.match(r5)
            r1 = 1
            if (r0 == r1) goto L5a
            r2 = 3
            if (r0 == r2) goto L55
            r2 = 5
            if (r0 == r2) goto L5a
            boolean r0 = r3.f2172c
            if (r0 == 0) goto L50
            boolean r0 = com.bumptech.glide.load.data.mediastore.MediaStoreUtil.b(r5)
            if (r0 == 0) goto L50
            boolean r0 = com.bumptech.glide.load.data.mediastore.MediaStoreUtil.a()
            if (r0 == 0) goto L50
            android.content.res.AssetFileDescriptor r4 = com.bumptech.glide.load.data.mediastore.MediaStoreUtil.c(r4, r5)
            if (r4 == 0) goto L3c
            java.io.FileInputStream r4 = r4.createInputStream()     // Catch: java.io.IOException -> L2a
            goto L64
        L2a:
            r5 = move-exception
            r4.close()     // Catch: java.lang.Exception -> L2e
        L2e:
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.String r0 = "Unable to create stream"
            r4.<init>(r0)
            java.lang.Throwable r4 = r4.initCause(r5)
            java.io.FileNotFoundException r4 = (java.io.FileNotFoundException) r4
            throw r4
        L3c:
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "FileDescriptor is null for: "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r4.<init>(r5)
            throw r4
        L50:
            java.io.InputStream r4 = r4.openInputStream(r5)
            goto L64
        L55:
            java.io.InputStream r4 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r4, r5, r1)
            goto L64
        L5a:
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r4, r5)
            if (r0 == 0) goto L7b
            java.io.InputStream r4 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r4, r0, r1)
        L64:
            if (r4 == 0) goto L67
            return r4
        L67:
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "InputStream is null for "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r4.<init>(r5)
            throw r4
        L7b:
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.String r5 = "Contact cannot be found"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.StreamLocalUriFetcher.f(android.content.ContentResolver, android.net.Uri):java.lang.Object");
    }
}
