package com.mycompany.app.gdrive;

import android.content.Context;
import android.text.TextUtils;
import com.google.api.client.googleapis.batch.json.JsonBatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.google.api.client.googleapis.media.MediaHttpUploaderProgressListener;
import com.google.api.client.http.FileContent;
import com.google.api.client.http.HttpHeaders;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.Permission;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public class GdriveManager {

    /* renamed from: a, reason: collision with root package name */
    public Context f15712a;
    public Drive b;

    /* renamed from: c, reason: collision with root package name */
    public long f15713c;

    /* renamed from: com.mycompany.app.gdrive.GdriveManager$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends JsonBatchCallback<Permission> {
        @Override // com.google.api.client.googleapis.batch.json.JsonBatchCallback
        public final void onFailure(GoogleJsonError googleJsonError, HttpHeaders httpHeaders) {
        }

        @Override // com.google.api.client.googleapis.batch.BatchCallback
        public final /* bridge */ /* synthetic */ void onSuccess(Object obj, HttpHeaders httpHeaders) {
        }
    }

    /* renamed from: com.mycompany.app.gdrive.GdriveManager$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements MediaHttpUploaderProgressListener {
        @Override // com.google.api.client.googleapis.media.MediaHttpUploaderProgressListener
        public final void progressChanged(MediaHttpUploader mediaHttpUploader) {
        }
    }

    /* loaded from: classes3.dex */
    public static class ServerFile {

        /* renamed from: a, reason: collision with root package name */
        public boolean f15714a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f15715c;
        public long d;
        public long e;
    }

    /* loaded from: classes3.dex */
    public interface ServerListener {
    }

    /* loaded from: classes3.dex */
    public interface ShareListener {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.api.client.googleapis.media.MediaHttpUploaderProgressListener, java.lang.Object] */
    public final boolean a(String str, String str2) {
        String c2 = c("/", true);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(c2) && this.b != null) {
            try {
                File file = new File();
                file.setParents(Collections.singletonList(c2));
                file.setName(str2);
                Drive.Files.Create create = this.b.files().create(file, new FileContent("text/plain", new java.io.File(str)));
                create.getMediaHttpUploader().setProgressListener(new Object());
                create.execute();
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public final boolean b(String str) {
        Drive drive;
        ArrayList arrayList;
        int indexOf;
        String c2 = c(str, false);
        if (!TextUtils.isEmpty(c2) && (drive = this.b) != null) {
            try {
                drive.files().delete(c2).execute();
                DataGdrive b = DataGdrive.b(this.f15712a);
                b.getClass();
                if (!TextUtils.isEmpty(str) && (arrayList = b.b) != null && !arrayList.isEmpty() && (indexOf = b.b.indexOf(str)) >= 0) {
                    ArrayList arrayList2 = b.f15708a;
                    if (arrayList2 != null && indexOf < arrayList2.size()) {
                        b.f15708a.remove(indexOf);
                    }
                    ArrayList arrayList3 = b.b;
                    if (arrayList3 != null && indexOf < arrayList3.size()) {
                        b.b.remove(indexOf);
                        return true;
                    }
                    return true;
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0052 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String c(java.lang.String r7, boolean r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f15712a
            r1 = 0
            if (r0 != 0) goto L7
            goto Lcb
        L7:
            com.mycompany.app.gdrive.DataGdrive r0 = com.mycompany.app.gdrive.DataGdrive.b(r0)
            r0.getClass()
            boolean r2 = android.text.TextUtils.isEmpty(r7)
            if (r2 == 0) goto L16
        L14:
            r0 = r1
            goto L4c
        L16:
            java.lang.String r2 = "/"
            boolean r2 = r2.equals(r7)
            if (r2 == 0) goto L21
            java.lang.String r0 = "root"
            goto L4c
        L21:
            java.util.ArrayList r2 = r0.b
            if (r2 == 0) goto L14
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L2c
            goto L14
        L2c:
            java.util.ArrayList r2 = r0.b
            int r2 = r2.indexOf(r7)
            if (r2 < 0) goto L14
            java.util.ArrayList r3 = r0.f15708a
            if (r3 == 0) goto L14
            int r3 = r3.size()
            if (r2 < r3) goto L3f
            goto L14
        L3f:
            java.util.ArrayList r0 = r0.f15708a
            java.lang.Object r0 = r0.get(r2)
            com.mycompany.app.gdrive.DataGdrive$GdriveItem r0 = (com.mycompany.app.gdrive.DataGdrive.GdriveItem) r0
            if (r0 != 0) goto L4a
            goto L14
        L4a:
            java.lang.String r0 = r0.b
        L4c:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L53
            return r0
        L53:
            java.lang.String r0 = "'"
            java.lang.String r2 = com.mycompany.app.main.MainUtil.d1(r1, r7)
            r3 = 1
            java.lang.String r2 = r6.c(r2, r3)
            boolean r4 = android.text.TextUtils.isEmpty(r2)
            if (r4 == 0) goto L66
        L64:
            r8 = r1
            goto Lbe
        L66:
            com.google.api.services.drive.Drive r4 = r6.b
            if (r4 != 0) goto L6b
            goto L64
        L6b:
            java.lang.String r4 = com.mycompany.app.main.MainUtil.b1(r1, r7)     // Catch: java.lang.Exception -> L64
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L64
            r5.<init>(r0)     // Catch: java.lang.Exception -> L64
            r5.append(r2)     // Catch: java.lang.Exception -> L64
            java.lang.String r0 = "' in parents and name='"
            r5.append(r0)     // Catch: java.lang.Exception -> L64
            r5.append(r4)     // Catch: java.lang.Exception -> L64
            if (r8 == 0) goto L87
            java.lang.String r8 = "' and mimeType='application/vnd.google-apps.folder' and trashed=false"
            r5.append(r8)     // Catch: java.lang.Exception -> L64
            goto L8c
        L87:
            java.lang.String r8 = "' and mimeType!='application/vnd.google-apps.folder' and trashed=false"
            r5.append(r8)     // Catch: java.lang.Exception -> L64
        L8c:
            com.google.api.services.drive.Drive r8 = r6.b     // Catch: java.lang.Exception -> L64
            com.google.api.services.drive.Drive$Files r8 = r8.files()     // Catch: java.lang.Exception -> L64
            com.google.api.services.drive.Drive$Files$List r8 = r8.list()     // Catch: java.lang.Exception -> L64
            java.lang.String r0 = r5.toString()     // Catch: java.lang.Exception -> L64
            com.google.api.services.drive.Drive$Files$List r8 = r8.setQ(r0)     // Catch: java.lang.Exception -> L64
            java.lang.String r0 = "nextPageToken, files(id, name, modifiedTime, size, mimeType)"
            com.google.api.services.drive.Drive$Files$List r8 = r8.setFields2(r0)     // Catch: java.lang.Exception -> L64
            java.lang.Object r8 = r8.execute()     // Catch: java.lang.Exception -> L64
            com.google.api.services.drive.model.FileList r8 = (com.google.api.services.drive.model.FileList) r8     // Catch: java.lang.Exception -> L64
            java.util.List r8 = r8.getFiles()     // Catch: java.lang.Exception -> L64
            if (r8 == 0) goto L64
            int r0 = r8.size()     // Catch: java.lang.Exception -> L64
            if (r0 == r3) goto Lb7
            goto L64
        Lb7:
            r0 = 0
            java.lang.Object r8 = r8.get(r0)     // Catch: java.lang.Exception -> L64
            com.google.api.services.drive.model.File r8 = (com.google.api.services.drive.model.File) r8     // Catch: java.lang.Exception -> L64
        Lbe:
            if (r8 != 0) goto Lc1
            goto Lcb
        Lc1:
            java.lang.String r8 = r8.getId()
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 == 0) goto Lcc
        Lcb:
            return r1
        Lcc:
            android.content.Context r0 = r6.f15712a
            com.mycompany.app.gdrive.DataGdrive r0 = com.mycompany.app.gdrive.DataGdrive.b(r0)
            r0.c(r7, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.gdrive.GdriveManager.c(java.lang.String, boolean):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(android.content.Context r5, java.lang.String r6) {
        /*
            r4 = this;
            r4.f15712a = r5
            boolean r5 = android.text.TextUtils.isEmpty(r6)
            r0 = 0
            if (r5 == 0) goto Lb
        L9:
            r5 = r0
            goto L3b
        Lb:
            com.google.auth.oauth2.AccessToken r5 = new com.google.auth.oauth2.AccessToken     // Catch: java.lang.Throwable -> L9
            r5.<init>(r6, r0)     // Catch: java.lang.Throwable -> L9
            int r6 = com.google.auth.oauth2.GoogleCredentials.p     // Catch: java.lang.Throwable -> L9
            com.google.auth.oauth2.GoogleCredentials$Builder r6 = new com.google.auth.oauth2.GoogleCredentials$Builder     // Catch: java.lang.Throwable -> L9
            r6.<init>()     // Catch: java.lang.Throwable -> L9
            r6.f12131a = r5     // Catch: java.lang.Throwable -> L9
            com.google.auth.oauth2.GoogleCredentials r5 = new com.google.auth.oauth2.GoogleCredentials     // Catch: java.lang.Throwable -> L9
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L9
            com.google.api.services.drive.Drive$Builder r6 = new com.google.api.services.drive.Drive$Builder     // Catch: java.lang.Throwable -> L9
            com.google.api.client.http.javanet.NetHttpTransport r1 = new com.google.api.client.http.javanet.NetHttpTransport     // Catch: java.lang.Throwable -> L9
            r1.<init>()     // Catch: java.lang.Throwable -> L9
            com.google.api.client.json.gson.GsonFactory r2 = com.google.api.client.json.gson.GsonFactory.getDefaultInstance()     // Catch: java.lang.Throwable -> L9
            com.google.auth.http.HttpCredentialsAdapter r3 = new com.google.auth.http.HttpCredentialsAdapter     // Catch: java.lang.Throwable -> L9
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L9
            r6.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L9
            java.lang.String r5 = "Soul"
            com.google.api.services.drive.Drive$Builder r5 = r6.setApplicationName(r5)     // Catch: java.lang.Throwable -> L9
            com.google.api.services.drive.Drive r5 = r5.build()     // Catch: java.lang.Throwable -> L9
        L3b:
            if (r5 != 0) goto L4b
            r4.b = r0
            android.content.Context r5 = r4.f15712a
            com.mycompany.app.gdrive.DataGdrive r5 = com.mycompany.app.gdrive.DataGdrive.b(r5)
            r5.f15708a = r0
            r5.b = r0
            r5 = 0
            return r5
        L4b:
            r4.b = r5
            r5 = 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.gdrive.GdriveManager.d(android.content.Context, java.lang.String):boolean");
    }
}
