package com.mycompany.app.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.NetworkOnMainThreadException;
import android.text.TextUtils;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CompressUtilUrl extends Compress {
    public List l;

    @Override // com.mycompany.app.compress.Compress
    public final void M() {
        int i = 0;
        this.j = 0;
        this.l = null;
        int i2 = PrefAlbum.k;
        if (i2 != 0) {
            if (i2 == 126) {
                List list = DataUrl.b(this.f12867a).f12901a;
                this.l = list;
                if (list != null) {
                    i = list.size();
                }
                this.j = i;
                return;
            }
            List list2 = DataUrl.b(this.f12867a).f12901a;
            if (list2 != null && !list2.isEmpty()) {
                int i3 = PrefAlbum.k;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList(list2);
                int i4 = this.e;
                if (i4 == 1) {
                    int size = arrayList2.size();
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        String str = (String) obj;
                        if ((i3 & 2) == 2) {
                            arrayList.add(str);
                        }
                    }
                } else if (i4 == 2) {
                    int size2 = arrayList2.size();
                    while (i < size2) {
                        Object obj2 = arrayList2.get(i);
                        i++;
                        String str2 = (String) obj2;
                        if ((i3 & 16) == 16) {
                            arrayList.add(str2);
                        }
                    }
                } else {
                    int size3 = arrayList2.size();
                    while (i < size3) {
                        Object obj3 = arrayList2.get(i);
                        i++;
                        String str3 = (String) obj3;
                        String W3 = MainUtil.W3(str3, true);
                        if (TextUtils.isEmpty(W3)) {
                            if ((i3 & 64) == 64) {
                                arrayList.add(str3);
                            }
                        } else if (W3.equals("jpg")) {
                            if ((i3 & 2) == 2) {
                                arrayList.add(str3);
                            }
                        } else if (W3.equals("png")) {
                            if ((i3 & 4) == 4) {
                                arrayList.add(str3);
                            }
                        } else if (W3.equals("gif")) {
                            if ((i3 & 8) == 8) {
                                arrayList.add(str3);
                            }
                        } else if (W3.equals("webp")) {
                            if ((i3 & 16) == 16) {
                                arrayList.add(str3);
                            }
                        } else if ((i3 & 32) == 32) {
                            arrayList.add(str3);
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.l = arrayList;
                    this.j = arrayList.size();
                }
            }
        }
    }

    @Override // com.mycompany.app.compress.Compress
    public final int R() {
        return this.j;
    }

    @Override // com.mycompany.app.compress.Compress
    public final void S() {
        int size;
        List list = DataUrl.b(this.f12867a).f12901a;
        if (list != null && this.l != null && (size = list.size()) == this.l.size()) {
            for (int i = 0; i < size; i++) {
                this.l.set(i, (String) list.get(i));
            }
        }
    }

    @Override // com.mycompany.app.compress.Compress
    public final void T(int i, String str) {
        List list = this.l;
        if (list != null && i >= 0 && i < list.size()) {
            this.l.set(i, str);
        }
    }

    @Override // com.mycompany.app.compress.Compress
    public final void U(int i, String str, String str2) {
        List list = this.l;
        if (list != null && i >= 0 && i < list.size()) {
            this.l.set(i, str2);
            DataUrl.b(this.f12867a).c(str, str2);
        }
    }

    @Override // com.mycompany.app.compress.Compress
    public final void a() {
        super.a();
        this.l = null;
    }

    @Override // com.mycompany.app.compress.Compress
    public final int i() {
        return this.j;
    }

    @Override // com.mycompany.app.compress.Compress
    public final int j(String str) {
        List list;
        if (TextUtils.isEmpty(str) || (list = this.l) == null || list.isEmpty()) {
            return -1;
        }
        return this.l.indexOf(str);
    }

    @Override // com.mycompany.app.compress.Compress
    public final MainItem.ChildItem k(int i) {
        return null;
    }

    @Override // com.mycompany.app.compress.Compress
    public final List l() {
        return null;
    }

    @Override // com.mycompany.app.compress.Compress
    public final int m(String str) {
        List list;
        if (TextUtils.isEmpty(str) || (list = this.l) == null || list.isEmpty()) {
            return -1;
        }
        return this.l.indexOf(str);
    }

    @Override // com.mycompany.app.compress.Compress
    public final String n(int i) {
        String str;
        List list = this.l;
        if (list != null && i >= 0 && i < list.size()) {
            str = (String) this.l.get(i);
        } else {
            str = null;
        }
        if (str != null) {
            return str;
        }
        return this.b;
    }

    @Override // com.mycompany.app.compress.Compress
    public final Bitmap p(int i) {
        List list;
        InputStream inputStream;
        Bitmap e;
        Bitmap bitmap = null;
        if (this.f12867a != null && (list = this.l) != null && i >= 0 && i < list.size()) {
            String str = (String) this.l.get(i);
            if (!TextUtils.isEmpty(str)) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 4;
                Context context = this.f12867a;
                String str2 = this.f12868c;
                if (context != null) {
                    try {
                        inputStream = new BaseImageDownloader(context).b(str, str2);
                    } catch (NetworkOnMainThreadException | Exception unused) {
                        inputStream = null;
                    }
                    if (inputStream != null) {
                        if (Compress.I(MainUtil.V3(str, null, null, true))) {
                            e = MainUtil.C3(inputStream);
                        } else {
                            e = BitmapUtil.e(inputStream, options);
                        }
                        bitmap = e;
                        IoUtils.a(inputStream);
                    }
                }
            }
        }
        return bitmap;
    }
}
