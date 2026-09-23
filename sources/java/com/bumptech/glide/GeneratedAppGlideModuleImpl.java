package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.mycompany.app.view.MyGlideModule;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a, reason: collision with root package name */
    public final MyGlideModule f2076a = new MyGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.mycompany.app.view.MyGlideModule");
            Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.webp.WebpGlideLibraryModule");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.integration.webp.WebpGlideLibraryModule, java.lang.Object] */
    @Override // com.bumptech.glide.module.LibraryGlideModule
    public final void a(Context context, Glide glide, Registry registry) {
        new Object().a(context, glide, registry);
        this.f2076a.a(context, glide, registry);
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public final void b() {
        this.f2076a.getClass();
    }

    @Override // com.bumptech.glide.module.AppGlideModule
    public final boolean c() {
        this.f2076a.getClass();
        return false;
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public final Set d() {
        return Collections.EMPTY_SET;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.manager.RequestManagerRetriever$RequestManagerFactory, java.lang.Object] */
    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public final RequestManagerRetriever.RequestManagerFactory e() {
        return new Object();
    }
}
