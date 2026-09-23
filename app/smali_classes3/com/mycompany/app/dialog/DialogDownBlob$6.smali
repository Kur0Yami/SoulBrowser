.class Lcom/mycompany/app/dialog/DialogDownBlob$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownBlob;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob$6;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob$6;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 19
    .line 20
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 21
    .line 22
    invoke-static {v3, v4, v5}, Lcom/mycompany/app/db/book/DbBookDown;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_8

    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 31
    .line 32
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 33
    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    :goto_0
    move-object v1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$NumItem;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v6, v1, Lcom/mycompany/app/main/MainUri$NumItem;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v6, "_"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$NumItem;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v3}, Lcom/mycompany/app/pref/PrefPath;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v3, v5, v2, v1}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-object v5, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v3, v5, v4}, Lcom/mycompany/app/db/book/DbBookDown;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    :goto_1
    if-nez v1, :cond_7

    .line 101
    .line 102
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 103
    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_6
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownBlob$6$1;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownBlob$6$1;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob$6;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 118
    .line 119
    iput-object v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 120
    .line 121
    iget-object v4, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 130
    .line 131
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 132
    .line 133
    if-nez v1, :cond_9

    .line 134
    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :cond_9
    const/4 v1, 0x0

    .line 138
    :try_start_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 139
    .line 140
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v3, v4, v1}, Lcom/mycompany/app/main/MainUtil;->V2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    :catch_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->k0:Landroid/webkit/WebView;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_14

    .line 159
    .line 160
    const-string v4, "blob:"

    .line 161
    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_a

    .line 167
    .line 168
    goto/16 :goto_6

    .line 169
    .line 170
    :cond_a
    # Soul2: read blob: URLs with status 0|200 and window.__sbBlobs fallback.
    # Native getBlobJs only accepts HTTP 200, which fails for blob: XHRs.
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function(){var url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";function fail(){android.onBlobRead(null,0,0,0);}function send(buf){if(!buf){fail();return;}var blobBuf=new Uint8Array(buf);var blobSize=blobBuf.length;if(blobSize<1){fail();return;}var maxSize=blobSize-1;var bufSize=2*1024*1024;if(bufSize>blobSize){bufSize=blobSize;}var readBuf=new Uint8Array(bufSize);var readSize=0;var index=0;var txtdcd=new TextDecoder('iso-8859-1');for(var i=0;i<blobSize;i++){readBuf[readSize]=blobBuf[i];readSize++;if((readSize==bufSize)||(i==maxSize)){android.onBlobRead(txtdcd.decode(readBuf.subarray(0,readSize)),readSize,blobSize,index);readSize=0;index++;}}blobBuf=null;readBuf=null;}function fromXhr(){var xhr=new XMLHttpRequest();xhr.open('GET',url,true);xhr.responseType='arraybuffer';xhr.onload=function(){if(xhr){xhr=null;}if(this.status==200||this.status==0){send(this.response);}else{fail();}};xhr.onerror=fail;xhr.send();}try{var b=window.__sbBlobs&&window.__sbBlobs[url];if(b){var fr=new FileReader();fr.onload=function(){send(fr.result);};fr.onerror=fromXhr;fr.readAsArrayBuffer(b);return;}}catch(e){}fromXhr();})();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_14
    :goto_6
    return-void
.end method
