package com.mycompany.app.compress;

import android.content.Context;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.main.MainItem;
import java.util.List;

/* loaded from: classes3.dex */
public class CompressUtilAlbum extends CompressUtilZip {
    @Override // com.mycompany.app.compress.Compress
    public final int i() {
        Context context = this.f12867a;
        if (context == null) {
            return 0;
        }
        return DataAlbum.m(context).d();
    }

    @Override // com.mycompany.app.compress.Compress
    public final int j(String str) {
        Context context = this.f12867a;
        if (context == null) {
            return 0;
        }
        return DataAlbum.m(context).e(str);
    }

    @Override // com.mycompany.app.compress.Compress
    public final MainItem.ChildItem k(int i) {
        Context context = this.f12867a;
        if (context == null) {
            return null;
        }
        return DataAlbum.m(context).f(i);
    }

    @Override // com.mycompany.app.compress.Compress
    public final List l() {
        Context context = this.f12867a;
        if (context == null) {
            return null;
        }
        return DataAlbum.m(context).f12895a;
    }

    @Override // com.mycompany.app.compress.CompressUtilZip, com.mycompany.app.compress.Compress
    public final int s() {
        return 3;
    }
}
