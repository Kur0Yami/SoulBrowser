package com.bumptech.glide.module;

import com.mycompany.app.view.MyGlideModule;

/* loaded from: classes.dex */
public abstract class AppGlideModule extends LibraryGlideModule implements AppliesOptions {
    public boolean c() {
        return !(this instanceof MyGlideModule);
    }

    public void b() {
    }
}
