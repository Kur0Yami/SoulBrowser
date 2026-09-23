.class Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p3, :cond_5

    .line 18
    .line 19
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->m6(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->n6(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->l6(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->w4(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    iget-object v2, p1, Lcom/mycompany/app/web/WebViewActivity;->K8:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    move v2, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move v2, v1

    .line 62
    :goto_1
    iput-object v3, p1, Lcom/mycompany/app/web/WebViewActivity;->K8:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    move v2, v1

    .line 66
    :goto_2
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 67
    .line 68
    .line 69
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 70
    .line 71
    if-eqz p2, :cond_9

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->reload()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 88
    .line 89
    if-nez p2, :cond_8

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->Z8()Z

    .line 92
    .line 93
    .line 94
    :cond_8
    if-eqz p3, :cond_9

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_9
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$4;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$4;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->Da:Z

    .line 106
    .line 107
    if-nez p2, :cond_a

    .line 108
    .line 109
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Da:Z

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->v7()V

    .line 112
    .line 113
    .line 114
    :cond_a
    :goto_3
    return-void
.end method

.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$7;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$7;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R6()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->K6(Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R6()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Lb:Z

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    const-string p1, "about:blank"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_3

    .line 69
    .line 70
    const/16 v2, 0x32

    .line 71
    .line 72
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->a8(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Lb:Z

    .line 81
    .line 82
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 83
    invoke-virtual {v0, p2, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->v5(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput-boolean p2, v2, Lcom/mycompany/app/web/WebNestView;->p1:Z

    .line 96
    .line 97
    iput-boolean v1, v2, Lcom/mycompany/app/web/WebNestView;->m:Z

    .line 98
    .line 99
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 100
    .line 101
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2, v2}, Lcom/mycompany/app/web/WebNestView;->f(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-boolean p2, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 107
    .line 108
    if-nez p2, :cond_4

    .line 109
    .line 110
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 115
    .line 116
    if-eqz p2, :cond_4

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebNestView;->setAdsRunning(Z)V

    .line 119
    .line 120
    .line 121
    :cond_4
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$2;

    .line 122
    .line 123
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 130
    .line 131
    if-nez p2, :cond_5

    .line 132
    .line 133
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 134
    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 138
    .line 139
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, v2, v3, p1}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-static {v0}, Lcom/mycompany/app/web/DevToolsHelper;->maybePreload(Lcom/mycompany/app/web/WebViewActivity;)V

    iget p2, v0, Lcom/mycompany/app/web/WebViewActivity;->y9:I

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    if-eq p2, p1, :cond_6

    .line 150
    .line 151
    if-ne p2, v2, :cond_8

    .line 152
    .line 153
    :cond_6
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object p2, p1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 158
    .line 159
    if-nez p2, :cond_7

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    iput v2, p1, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 163
    .line 164
    iget-object p1, p1, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 165
    .line 166
    if-eqz p1, :cond_8

    .line 167
    .line 168
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->e()V

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_1
    iget-object p1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 172
    .line 173
    if-nez p1, :cond_9

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$3;

    .line 177
    .line 178
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$3;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->a9:Z

    .line 185
    .line 186
    if-eqz p1, :cond_b

    .line 187
    .line 188
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 189
    .line 190
    if-nez p1, :cond_a

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_a
    const-string p2, "(function(){var tag=\'onCheckReddit\';var val=0;var ele=document.querySelector(\"shreddit-player,shreddit-embed\");if(ele){val=1;}android.onJsResult(tag,val);})();"

    .line 194
    .line 195
    invoke-static {p1, p2, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    :cond_b
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-nez p1, :cond_c

    return-void

    :cond_c
    const-string p2, "(function(){if(window.__sbDlHook)return;window.__sbDlHook=1;window.__sbLastDlName=\'\';window.__sbBlobs=window.__sbBlobs||{};try{var c=URL.createObjectURL.bind(URL);URL.createObjectURL=function(b){var u=c(b);try{if(b&&typeof Blob!==\'undefined\'&&b instanceof Blob)window.__sbBlobs[u]=b;}catch(e){}return u;};}catch(e){}try{var p=HTMLAnchorElement.prototype,d=Object.getOwnPropertyDescriptor(p,\'download\');if(d&&d.set){var os=d.set;Object.defineProperty(p,\'download\',{configurable:true,enumerable:!!d.enumerable,get:d.get,set:function(v){try{window.__sbLastDlName=v||\'\';}catch(e){}return os.call(this,v);}});}else{Object.defineProperty(p,\'download\',{configurable:true,enumerable:true,get:function(){return this.getAttribute(\'download\')||\'\';},set:function(v){try{window.__sbLastDlName=v||\'\';}catch(e){}if(v==null||v===\'\')this.removeAttribute(\'download\');else this.setAttribute(\'download\',v);}});}}catch(e){}try{var osa=Element.prototype.setAttribute;Element.prototype.setAttribute=function(n,v){try{if(this.tagName===\'A\'&&String(n).toLowerCase()===\'download\')window.__sbLastDlName=v||\'\';}catch(e){}return osa.apply(this,arguments);};}catch(e){}})();"

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    # Replace Chromium's plain JSON <pre> view with Mozilla's JSON Viewer.
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-eqz p1, :cond_json_done

    invoke-static {p1}, Lcom/mycompany/app/web/JsonViewHelper;->inject(Landroid/webkit/WebView;)V

    :cond_json_done
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p3, Lcom/mycompany/app/web/WebViewActivity;->L8:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p3, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebNestView;->syncSiteDark(Ljava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p3, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "(function(){if(window.__sbDlHook)return;window.__sbDlHook=1;window.__sbLastDlName=\'\';window.__sbBlobs=window.__sbBlobs||{};try{var c=URL.createObjectURL.bind(URL);URL.createObjectURL=function(b){var u=c(b);try{if(b&&typeof Blob!==\'undefined\'&&b instanceof Blob)window.__sbBlobs[u]=b;}catch(e){}return u;};}catch(e){}try{var p=HTMLAnchorElement.prototype,d=Object.getOwnPropertyDescriptor(p,\'download\');if(d&&d.set){var os=d.set;Object.defineProperty(p,\'download\',{configurable:true,enumerable:!!d.enumerable,get:d.get,set:function(v){try{window.__sbLastDlName=v||\'\';}catch(e){}return os.call(this,v);}});}else{Object.defineProperty(p,\'download\',{configurable:true,enumerable:true,get:function(){return this.getAttribute(\'download\')||\'\';},set:function(v){try{window.__sbLastDlName=v||\'\';}catch(e){}if(v==null||v===\'\')this.removeAttribute(\'download\');else this.setAttribute(\'download\',v);}});}}catch(e){}try{var osa=Element.prototype.setAttribute;Element.prototype.setAttribute=function(n,v){try{if(this.tagName===\'A\'&&String(n).toLowerCase()===\'download\')window.__sbLastDlName=v||\'\';}catch(e){}return osa.apply(this,arguments);};}catch(e){}})();"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Lcom/mycompany/app/web/WebViewActivity;->i6()V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p3, Lcom/mycompany/app/web/WebViewActivity;->Lb:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string p1, "about:blank"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p2, p3, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p3, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-lez p1, :cond_2

    .line 41
    .line 42
    const/16 v2, 0x32

    .line 43
    .line 44
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p3, p1}, Lcom/mycompany/app/web/WebViewActivity;->a8(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iput-boolean v1, p3, Lcom/mycompany/app/web/WebViewActivity;->Lb:Z

    .line 53
    .line 54
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p3, p2, v1, p1}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p3, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 59
    .line 60
    iput-boolean v1, p2, Lcom/mycompany/app/web/WebNestView;->p1:Z

    .line 61
    .line 62
    iput-boolean p1, p2, Lcom/mycompany/app/web/WebNestView;->m:Z

    .line 63
    .line 64
    iput-object v0, p2, Lcom/mycompany/app/web/WebNestView;->r0:Ljava/lang/String;

    .line 65
    .line 66
    iput v1, p2, Lcom/mycompany/app/web/WebNestView;->s0:I

    .line 67
    .line 68
    iput v1, p2, Lcom/mycompany/app/web/WebNestView;->t0:I

    .line 69
    .line 70
    iget-boolean v0, p3, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebNestView;->setAdsRunning(Z)V

    .line 81
    .line 82
    .line 83
    :cond_3
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$1;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p3, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 92
    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    sget-boolean p2, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    iget-object p2, p3, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 100
    .line 101
    iget-object v0, p3, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, p3, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p2, v0, v2, v1}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    :cond_4
    iget p2, p3, Lcom/mycompany/app/web/WebViewActivity;->y9:I

    .line 109
    .line 110
    if-eq p2, p1, :cond_6

    .line 111
    .line 112
    const/4 p1, 0x2

    .line 113
    if-ne p2, p1, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_1
    return-void

    .line 117
    :cond_6
    :goto_2
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebLoadTask;->h(I)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebLoadTask;->f(I)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 5
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    .line 7
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebLoadTask;->f(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean p3, p1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->w7:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/mycompany/app/dialog/DialogEditAuth;->dismiss()V

    .line 13
    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    iput-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->w7:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 17
    .line 18
    :cond_1
    new-instance p3, Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 19
    .line 20
    invoke-direct {p3, p1, p2}, Lcom/mycompany/app/dialog/DialogEditAuth;-><init>(Landroid/app/Activity;Landroid/webkit/HttpAuthHandler;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->w7:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 24
    .line 25
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$489;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lcom/mycompany/app/web/WebViewActivity$489;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;

    .line 9
    .line 10
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$5;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Landroid/webkit/WebView;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->C(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    iput-boolean p1, p2, Lcom/mycompany/app/web/WebViewActivity;->Q9:Z

    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p1, p2, Lcom/mycompany/app/web/WebViewActivity;->L9:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iput p3, p2, Lcom/mycompany/app/web/WebViewActivity;->M9:F

    .line 18
    .line 19
    iget p1, p2, Lcom/mycompany/app/web/WebViewActivity;->N9:F

    .line 20
    .line 21
    sub-float/2addr p3, p1

    .line 22
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const p3, 0x3c23d70a    # 0.01f

    .line 27
    .line 28
    .line 29
    cmpl-float p1, p1, p3

    .line 30
    .line 31
    if-lez p1, :cond_4

    .line 32
    .line 33
    iget-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 39
    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 p3, 0x1

    .line 44
    iput-boolean p3, p2, Lcom/mycompany/app/web/WebViewActivity;->L9:Z

    .line 45
    .line 46
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$6;

    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient$6;-><init>(Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v0, 0x64

    .line 52
    .line 53
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_0
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object v5, v10

    .line 11
    goto/16 :goto_2c

    .line 12
    .line 13
    :cond_1
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    move-object/from16 v3, p1

    .line 31
    .line 32
    invoke-static {v9, v3, v7}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->v1(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_4
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->X8:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v11, 0x1

    .line 67
    if-nez v1, :cond_7

    .line 68
    .line 69
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->X8:Ljava/lang/String;

    .line 72
    .line 73
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    const-string v2, "file:///android_asset/shortcut.html"

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iput-boolean v11, v9, Lcom/mycompany/app/web/WebViewActivity;->Y8:Z

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v4, v9, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/data/book/DataBookAds;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iput-boolean v1, v9, Lcom/mycompany/app/web/WebViewActivity;->Y8:Z

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    iput-boolean v11, v9, Lcom/mycompany/app/web/WebViewActivity;->Y8:Z

    .line 106
    .line 107
    :goto_1
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v9, v1}, Lcom/mycompany/app/web/WebViewActivity;->K0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iput v1, v9, Lcom/mycompany/app/web/WebViewActivity;->Z8:I

    .line 114
    .line 115
    :cond_7
    iget v1, v9, Lcom/mycompany/app/web/WebViewActivity;->Z8:I

    .line 116
    .line 117
    if-ne v1, v11, :cond_8

    .line 118
    .line 119
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    iput-boolean v11, v9, Lcom/mycompany/app/web/WebViewActivity;->a9:Z

    .line 126
    .line 127
    :cond_8
    iget-boolean v1, v9, Lcom/mycompany/app/web/WebViewActivity;->Y8:Z

    .line 128
    .line 129
    const/4 v12, 0x0

    .line 130
    if-nez v1, :cond_a

    .line 131
    .line 132
    iget-object v5, v9, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v6, v9, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 135
    .line 136
    iget v8, v9, Lcom/mycompany/app/web/WebViewActivity;->Z8:I

    .line 137
    .line 138
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->q9:Lcom/mycompany/app/web/WebClean;

    .line 139
    .line 140
    if-nez v1, :cond_9

    .line 141
    .line 142
    move-object/from16 v4, p2

    .line 143
    .line 144
    move-object v1, v10

    .line 145
    goto :goto_2

    .line 146
    :cond_9
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 147
    .line 148
    move-object/from16 v4, p2

    .line 149
    .line 150
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/web/WebClean;->j(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_2
    if-eqz v1, :cond_b

    .line 155
    .line 156
    invoke-virtual {v9, v11, v12}, Lcom/mycompany/app/web/WebViewActivity;->ea(IZ)V

    .line 157
    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_a
    move-object/from16 v4, p2

    .line 161
    .line 162
    iget v1, v9, Lcom/mycompany/app/web/WebViewActivity;->Z8:I

    .line 163
    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 167
    .line 168
    invoke-static {v2, v4, v7, v1}, Lcom/mycompany/app/web/WebClean;->I(Landroid/content/Context;Landroid/webkit/WebResourceRequest;Ljava/lang/String;I)Landroid/webkit/WebResourceResponse;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    return-object v1

    .line 173
    :cond_b
    if-nez v7, :cond_d

    .line 174
    .line 175
    :cond_c
    :goto_3
    move-object v7, v10

    .line 176
    goto/16 :goto_2a

    .line 177
    .line 178
    :cond_d
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 179
    .line 180
    if-eqz v1, :cond_e

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_e
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 184
    .line 185
    if-eqz v1, :cond_5a

    .line 186
    .line 187
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebNestView;->n0:Z

    .line 188
    .line 189
    if-eqz v2, :cond_f

    .line 190
    .line 191
    iget v1, v1, Lcom/mycompany/app/web/WebNestView;->o0:I

    .line 192
    .line 193
    const/16 v2, 0x9

    .line 194
    .line 195
    if-le v1, v2, :cond_f

    .line 196
    .line 197
    goto/16 :goto_14

    .line 198
    .line 199
    :cond_f
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_10

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_10
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k6(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_11

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_11
    const-string v2, "facebook.com"

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_12

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_12
    const-string v2, "x.com"

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_13

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_13
    const-string v2, "reddit.com"

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_14

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_14
    const-string v2, "tiktok.com"

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_15

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_15
    const-string v2, "giphy.com"

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_16

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_16
    const-string v2, "yandex.ru"

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_17

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_17
    const-string v2, "instagram.com"

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_23

    .line 276
    .line 277
    iget-boolean v1, v9, Lcom/mycompany/app/web/WebViewActivity;->ob:Z

    .line 278
    .line 279
    if-nez v1, :cond_c

    .line 280
    .line 281
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->F8:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_1b

    .line 288
    .line 289
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 290
    .line 291
    if-nez v1, :cond_18

    .line 292
    .line 293
    :goto_4
    move-object v1, v10

    .line 294
    goto :goto_5

    .line 295
    :cond_18
    if-nez v1, :cond_19

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_19
    sget-object v1, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_1a

    .line 305
    .line 306
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->getInstaAid()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    sput-object v1, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 311
    .line 312
    :cond_1a
    sget-object v1, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 313
    .line 314
    :goto_5
    iput-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->F8:Ljava/lang/String;

    .line 315
    .line 316
    :cond_1b
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 317
    .line 318
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->F8:Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-nez v3, :cond_1d

    .line 325
    .line 326
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_1c

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_1c
    const-string v3, "https://www.instagram.com/api"

    .line 334
    .line 335
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-nez v3, :cond_1e

    .line 340
    .line 341
    :catch_0
    :cond_1d
    :goto_6
    move v11, v12

    .line 342
    goto :goto_7

    .line 343
    :cond_1e
    :try_start_0
    invoke-interface {v4}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    if-nez v3, :cond_1f

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_1f
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    if-nez v5, :cond_20

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_20
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-eqz v6, :cond_1d

    .line 366
    .line 367
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    check-cast v6, Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-eqz v7, :cond_21

    .line 378
    .line 379
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    check-cast v6, Ljava/lang/String;

    .line 384
    .line 385
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-nez v7, :cond_21

    .line 390
    .line 391
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    if-nez v1, :cond_22

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_22
    iput-object v6, v1, Lcom/mycompany/app/main/MainApp;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .line 400
    :goto_7
    iput-boolean v11, v9, Lcom/mycompany/app/web/WebViewActivity;->ob:Z

    .line 401
    .line 402
    goto/16 :goto_3

    .line 403
    .line 404
    :cond_23
    iget-object v2, v9, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->Q5(Ljava/lang/String;Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_24

    .line 411
    .line 412
    goto/16 :goto_3

    .line 413
    .line 414
    :cond_24
    const-string v2, "fonts.google.com"

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_27

    .line 421
    .line 422
    const-string v2, "https://fonts.google.com/download/list?family="

    .line 423
    .line 424
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_27

    .line 429
    .line 430
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 431
    .line 432
    if-eqz v1, :cond_25

    .line 433
    .line 434
    goto/16 :goto_3

    .line 435
    .line 436
    :cond_25
    iget-object v1, v9, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 437
    .line 438
    if-nez v1, :cond_26

    .line 439
    .line 440
    goto/16 :goto_3

    .line 441
    .line 442
    :cond_26
    iput-object v7, v9, Lcom/mycompany/app/web/WebViewActivity;->gn:Ljava/lang/String;

    .line 443
    .line 444
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$257;

    .line 445
    .line 446
    invoke-direct {v2, v9}, Lcom/mycompany/app/web/WebViewActivity$257;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 450
    .line 451
    .line 452
    goto/16 :goto_3

    .line 453
    .line 454
    :cond_27
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->u5(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_28

    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :cond_28
    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-nez v2, :cond_29

    .line 467
    .line 468
    goto/16 :goto_3

    .line 469
    .line 470
    :cond_29
    invoke-static {v7, v12}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-eqz v3, :cond_2a

    .line 479
    .line 480
    goto/16 :goto_3

    .line 481
    .line 482
    :cond_2a
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k6(Ljava/lang/String;)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-eqz v3, :cond_2b

    .line 487
    .line 488
    goto/16 :goto_3

    .line 489
    .line 490
    :cond_2b
    const-string v3, "pornhub.com"

    .line 491
    .line 492
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_2e

    .line 497
    .line 498
    iget-boolean v1, v9, Lcom/mycompany/app/web/WebViewActivity;->Ki:Z

    .line 499
    .line 500
    if-eqz v1, :cond_2c

    .line 501
    .line 502
    goto/16 :goto_3

    .line 503
    .line 504
    :cond_2c
    invoke-static {v7, v11}, Lcom/mycompany/app/main/MainUrl;->e(Ljava/lang/String;Z)Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-eqz v1, :cond_2d

    .line 509
    .line 510
    goto/16 :goto_2a

    .line 511
    .line 512
    :cond_2d
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->d6(Ljava/lang/String;)Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-eqz v1, :cond_c

    .line 517
    .line 518
    goto/16 :goto_2a

    .line 519
    .line 520
    :cond_2e
    const-string v3, "pinterest.com"

    .line 521
    .line 522
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-eqz v3, :cond_31

    .line 527
    .line 528
    const-string v1, "_audio.m3u8"

    .line 529
    .line 530
    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-eqz v1, :cond_2f

    .line 535
    .line 536
    goto/16 :goto_3

    .line 537
    .line 538
    :cond_2f
    invoke-static {v7, v11}, Lcom/mycompany/app/main/MainUrl;->e(Ljava/lang/String;Z)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_30

    .line 543
    .line 544
    goto/16 :goto_2a

    .line 545
    .line 546
    :cond_30
    invoke-static {v7}, Lcom/mycompany/app/main/MainUrl;->f(Ljava/lang/String;)Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-eqz v1, :cond_c

    .line 551
    .line 552
    goto/16 :goto_2a

    .line 553
    .line 554
    :cond_31
    const-string v3, "kakao.com"

    .line 555
    .line 556
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    const-string v5, "tsfake:"

    .line 561
    .line 562
    const/16 v6, 0xa

    .line 563
    .line 564
    const-string v8, ".mpd"

    .line 565
    .line 566
    const-string v13, "m3fake:"

    .line 567
    .line 568
    if-eqz v3, :cond_33

    .line 569
    .line 570
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-eqz v3, :cond_32

    .line 575
    .line 576
    const-string v3, "/cenc/"

    .line 577
    .line 578
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-nez v3, :cond_32

    .line 583
    .line 584
    const-string v1, "kakao1:"

    .line 585
    .line 586
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    goto/16 :goto_2a

    .line 591
    .line 592
    :cond_32
    const-string v3, "/seeking.mp4"

    .line 593
    .line 594
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-eqz v3, :cond_42

    .line 599
    .line 600
    goto/16 :goto_3

    .line 601
    .line 602
    :cond_33
    const-string v3, "dzen.ru"

    .line 603
    .line 604
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    if-eqz v3, :cond_34

    .line 609
    .line 610
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    if-eqz v1, :cond_c

    .line 615
    .line 616
    const-string v1, "&json_preview"

    .line 617
    .line 618
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    if-nez v1, :cond_c

    .line 623
    .line 624
    const-string v1, "dzen1:"

    .line 625
    .line 626
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    goto/16 :goto_2a

    .line 631
    .line 632
    :cond_34
    const-string v3, "vimeo.com"

    .line 633
    .line 634
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    if-eqz v3, :cond_35

    .line 639
    .line 640
    const-string v1, "/master.json"

    .line 641
    .line 642
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-eqz v1, :cond_c

    .line 647
    .line 648
    const-string v1, "vimeo1:"

    .line 649
    .line 650
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    goto/16 :goto_2a

    .line 655
    .line 656
    :cond_35
    const-string v3, "tvwiki"

    .line 657
    .line 658
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-nez v3, :cond_3f

    .line 663
    .line 664
    const-string v3, "tvmon"

    .line 665
    .line 666
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    if-eqz v3, :cond_36

    .line 671
    .line 672
    goto/16 :goto_8

    .line 673
    .line 674
    :cond_36
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->L5(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-eqz v3, :cond_42

    .line 679
    .line 680
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 681
    .line 682
    .line 683
    move-result v3

    .line 684
    if-nez v3, :cond_42

    .line 685
    .line 686
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    if-eqz v3, :cond_37

    .line 691
    .line 692
    goto/16 :goto_9

    .line 693
    .line 694
    :cond_37
    const-string v3, "a1"

    .line 695
    .line 696
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    if-nez v3, :cond_42

    .line 701
    .line 702
    const-string v3, "a2"

    .line 703
    .line 704
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-eqz v3, :cond_38

    .line 709
    .line 710
    goto/16 :goto_9

    .line 711
    .line 712
    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    add-int/lit8 v8, v3, 0x1

    .line 717
    .line 718
    add-int/lit8 v3, v3, 0x3

    .line 719
    .line 720
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 721
    .line 722
    .line 723
    move-result v14

    .line 724
    if-lt v3, v14, :cond_39

    .line 725
    .line 726
    goto/16 :goto_9

    .line 727
    .line 728
    :cond_39
    const-string v14, "m"

    .line 729
    .line 730
    invoke-virtual {v7, v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 731
    .line 732
    .line 733
    move-result v8

    .line 734
    if-nez v8, :cond_3a

    .line 735
    .line 736
    goto/16 :goto_9

    .line 737
    .line 738
    :cond_3a
    const-string v8, "/"

    .line 739
    .line 740
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    if-nez v3, :cond_3b

    .line 745
    .line 746
    goto :goto_9

    .line 747
    :cond_3b
    const-string v3, "google"

    .line 748
    .line 749
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-eqz v3, :cond_3c

    .line 754
    .line 755
    goto :goto_9

    .line 756
    :cond_3c
    invoke-static {v10, v7}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    if-eqz v3, :cond_42

    .line 761
    .line 762
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    if-ge v3, v6, :cond_3d

    .line 767
    .line 768
    goto :goto_9

    .line 769
    :cond_3d
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    if-eqz v3, :cond_3e

    .line 774
    .line 775
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->v2(Ljava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    if-nez v3, :cond_3e

    .line 784
    .line 785
    goto :goto_9

    .line 786
    :cond_3e
    const-string v1, "izle:"

    .line 787
    .line 788
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    goto/16 :goto_2a

    .line 793
    .line 794
    :cond_3f
    :goto_8
    const-string v3, ".html"

    .line 795
    .line 796
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    if-eqz v3, :cond_40

    .line 801
    .line 802
    invoke-virtual {v13, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    goto/16 :goto_2a

    .line 807
    .line 808
    :cond_40
    iget-boolean v3, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 809
    .line 810
    if-nez v3, :cond_42

    .line 811
    .line 812
    iget-object v3, v9, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 813
    .line 814
    if-nez v3, :cond_42

    .line 815
    .line 816
    invoke-virtual {v9, v1, v7}, Lcom/mycompany/app/web/WebViewActivity;->h3(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    if-lez v3, :cond_42

    .line 821
    .line 822
    invoke-static {v3, v7}, Lcom/mycompany/app/web/WebViewActivity;->H5(ILjava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    if-eqz v3, :cond_42

    .line 827
    .line 828
    iget-boolean v1, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 829
    .line 830
    if-eqz v1, :cond_41

    .line 831
    .line 832
    goto/16 :goto_3

    .line 833
    .line 834
    :cond_41
    iput-boolean v11, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 835
    .line 836
    iput-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 837
    .line 838
    iput-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 839
    .line 840
    iput-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;

    .line 841
    .line 842
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v7

    .line 846
    goto/16 :goto_2a

    .line 847
    .line 848
    :cond_42
    :goto_9
    const-string v3, ".aaa"

    .line 849
    .line 850
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-eqz v3, :cond_44

    .line 855
    .line 856
    iget-boolean v1, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 857
    .line 858
    if-eqz v1, :cond_43

    .line 859
    .line 860
    goto/16 :goto_3

    .line 861
    .line 862
    :cond_43
    iput-boolean v11, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 863
    .line 864
    iput-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 865
    .line 866
    iput-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 867
    .line 868
    iput-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;

    .line 869
    .line 870
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v7

    .line 874
    goto/16 :goto_2a

    .line 875
    .line 876
    :cond_44
    const-string v3, ".ts"

    .line 877
    .line 878
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 879
    .line 880
    .line 881
    move-result v3

    .line 882
    if-nez v3, :cond_87

    .line 883
    .line 884
    const-string v3, ".ts?"

    .line 885
    .line 886
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 887
    .line 888
    .line 889
    move-result v3

    .line 890
    if-eqz v3, :cond_45

    .line 891
    .line 892
    goto/16 :goto_29

    .line 893
    .line 894
    :cond_45
    iget-boolean v3, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 895
    .line 896
    if-nez v3, :cond_5c

    .line 897
    .line 898
    iget-object v3, v9, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 899
    .line 900
    if-nez v3, :cond_5c

    .line 901
    .line 902
    invoke-virtual {v9, v1, v7}, Lcom/mycompany/app/web/WebViewActivity;->h3(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    if-lez v3, :cond_5b

    .line 907
    .line 908
    add-int/lit8 v5, v3, 0x1

    .line 909
    .line 910
    :try_start_1
    const-string v14, "m4s"

    .line 911
    .line 912
    invoke-virtual {v7, v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 913
    .line 914
    .line 915
    move-result v14

    .line 916
    if-eqz v14, :cond_46

    .line 917
    .line 918
    goto/16 :goto_c

    .line 919
    .line 920
    :cond_46
    const-string v14, "m4a"

    .line 921
    .line 922
    invoke-virtual {v7, v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 923
    .line 924
    .line 925
    move-result v14

    .line 926
    if-eqz v14, :cond_47

    .line 927
    .line 928
    goto :goto_c

    .line 929
    :cond_47
    const-string v14, "html"

    .line 930
    .line 931
    invoke-virtual {v7, v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 932
    .line 933
    .line 934
    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 935
    const/16 v15, 0x39

    .line 936
    .line 937
    const/16 v12, 0x30

    .line 938
    .line 939
    if-eqz v14, :cond_4c

    .line 940
    .line 941
    add-int/lit8 v14, v3, -0x3

    .line 942
    .line 943
    :try_start_2
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 944
    .line 945
    .line 946
    move-result v14

    .line 947
    if-lt v14, v12, :cond_4b

    .line 948
    .line 949
    if-le v14, v15, :cond_48

    .line 950
    .line 951
    goto :goto_a

    .line 952
    :cond_48
    add-int/lit8 v14, v3, -0x2

    .line 953
    .line 954
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 955
    .line 956
    .line 957
    move-result v14

    .line 958
    if-lt v14, v12, :cond_4b

    .line 959
    .line 960
    if-le v14, v15, :cond_49

    .line 961
    .line 962
    goto :goto_a

    .line 963
    :cond_49
    add-int/lit8 v14, v3, -0x1

    .line 964
    .line 965
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 966
    .line 967
    .line 968
    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 969
    if-lt v14, v12, :cond_4b

    .line 970
    .line 971
    if-le v14, v15, :cond_4a

    .line 972
    .line 973
    goto :goto_a

    .line 974
    :cond_4a
    move v12, v11

    .line 975
    goto :goto_d

    .line 976
    :catch_1
    :cond_4b
    :goto_a
    move v12, v11

    .line 977
    :catch_2
    :goto_b
    const/4 v0, 0x2

    .line 978
    goto/16 :goto_13

    .line 979
    .line 980
    :cond_4c
    :try_start_3
    invoke-static {v3, v7}, Lcom/mycompany/app/web/WebViewActivity;->H5(ILjava/lang/String;)Z

    .line 981
    .line 982
    .line 983
    move-result v14

    .line 984
    if-nez v14, :cond_50

    .line 985
    .line 986
    add-int/lit8 v14, v3, -0x3

    .line 987
    .line 988
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 989
    .line 990
    .line 991
    move-result v14

    .line 992
    if-eq v14, v12, :cond_4d

    .line 993
    .line 994
    goto :goto_c

    .line 995
    :cond_4d
    add-int/lit8 v14, v3, -0x2

    .line 996
    .line 997
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 998
    .line 999
    .line 1000
    move-result v14

    .line 1001
    if-eq v14, v12, :cond_4e

    .line 1002
    .line 1003
    goto :goto_c

    .line 1004
    :cond_4e
    add-int/lit8 v14, v3, -0x1

    .line 1005
    .line 1006
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 1007
    .line 1008
    .line 1009
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1010
    if-lt v14, v12, :cond_4f

    .line 1011
    .line 1012
    if-le v14, v15, :cond_50

    .line 1013
    .line 1014
    :cond_4f
    :goto_c
    const/4 v0, 0x2

    .line 1015
    const/4 v12, 0x0

    .line 1016
    goto/16 :goto_13

    .line 1017
    .line 1018
    :catch_3
    const/4 v12, 0x0

    .line 1019
    goto :goto_b

    .line 1020
    :cond_50
    const/4 v12, 0x0

    .line 1021
    :goto_d
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1022
    .line 1023
    .line 1024
    move-result v14

    .line 1025
    add-int/lit8 v15, v3, 0x6

    .line 1026
    .line 1027
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    .line 1028
    .line 1029
    .line 1030
    move-result v15

    .line 1031
    move v6, v5

    .line 1032
    const/16 v17, 0x0

    .line 1033
    .line 1034
    :goto_e
    if-ge v6, v15, :cond_52

    .line 1035
    .line 1036
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 1037
    .line 1038
    .line 1039
    move-result v10

    .line 1040
    const/16 v11, 0x61

    .line 1041
    .line 1042
    if-lt v10, v11, :cond_52

    .line 1043
    .line 1044
    const/16 v11, 0x7a

    .line 1045
    .line 1046
    if-le v10, v11, :cond_51

    .line 1047
    .line 1048
    goto :goto_f

    .line 1049
    :cond_51
    add-int/lit8 v17, v17, 0x1

    .line 1050
    .line 1051
    add-int/lit8 v6, v6, 0x1

    .line 1052
    .line 1053
    const/4 v10, 0x0

    .line 1054
    const/4 v11, 0x1

    .line 1055
    goto :goto_e

    .line 1056
    :cond_52
    :goto_f
    if-nez v17, :cond_53

    .line 1057
    .line 1058
    goto :goto_b

    .line 1059
    :cond_53
    add-int v6, v5, v17

    .line 1060
    .line 1061
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1065
    :try_start_5
    iget-object v6, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 1066
    .line 1067
    iget-object v10, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 1068
    .line 1069
    iget-object v11, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;

    .line 1070
    .line 1071
    if-nez v6, :cond_54

    .line 1072
    .line 1073
    goto :goto_12

    .line 1074
    :cond_54
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1075
    .line 1076
    .line 1077
    move-result v15

    .line 1078
    const/4 v8, 0x0

    .line 1079
    :goto_10
    if-ge v8, v15, :cond_58

    .line 1080
    .line 1081
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v19

    .line 1085
    check-cast v19, Ljava/lang/Integer;

    .line 1086
    .line 1087
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    .line 1088
    .line 1089
    .line 1090
    move-result v0

    .line 1091
    if-eq v14, v0, :cond_55

    .line 1092
    .line 1093
    goto :goto_11

    .line 1094
    :cond_55
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    check-cast v0, Ljava/lang/Integer;

    .line 1099
    .line 1100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eq v3, v0, :cond_56

    .line 1105
    .line 1106
    goto :goto_11

    .line 1107
    :cond_56
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v0

    .line 1111
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1115
    if-eqz v0, :cond_57

    .line 1116
    .line 1117
    const/4 v0, 0x2

    .line 1118
    const/4 v12, 0x2

    .line 1119
    goto :goto_13

    .line 1120
    :cond_57
    :goto_11
    add-int/lit8 v8, v8, 0x1

    .line 1121
    .line 1122
    move-object/from16 v0, p0

    .line 1123
    .line 1124
    goto :goto_10

    .line 1125
    :catch_4
    :cond_58
    :goto_12
    :try_start_6
    iget-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 1126
    .line 1127
    iget-object v6, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 1128
    .line 1129
    iget-object v8, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;

    .line 1130
    .line 1131
    if-nez v0, :cond_59

    .line 1132
    .line 1133
    new-instance v0, Ljava/util/ArrayList;

    .line 1134
    .line 1135
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .line 1137
    .line 1138
    new-instance v6, Ljava/util/ArrayList;

    .line 1139
    .line 1140
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .line 1142
    .line 1143
    new-instance v8, Ljava/util/ArrayList;

    .line 1144
    .line 1145
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .line 1147
    .line 1148
    :cond_59
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v10

    .line 1152
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v10

    .line 1159
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    .line 1164
    .line 1165
    iput-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 1166
    .line 1167
    iput-object v6, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 1168
    .line 1169
    iput-object v8, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1170
    .line 1171
    goto/16 :goto_b

    .line 1172
    .line 1173
    :goto_13
    if-ne v12, v0, :cond_5d

    .line 1174
    .line 1175
    const/4 v0, 0x1

    .line 1176
    iput-boolean v0, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 1177
    .line 1178
    const/4 v0, 0x0

    .line 1179
    iput-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 1180
    .line 1181
    iput-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 1182
    .line 1183
    iput-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;

    .line 1184
    .line 1185
    invoke-virtual {v9, v7, v4}, Lcom/mycompany/app/web/WebViewActivity;->i3(Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    iput-object v7, v9, Lcom/mycompany/app/web/WebViewActivity;->Gi:Ljava/lang/String;

    .line 1190
    .line 1191
    iput-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->Hi:Ljava/lang/String;

    .line 1192
    .line 1193
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$258;

    .line 1194
    .line 1195
    invoke-direct {v0, v9}, Lcom/mycompany/app/web/WebViewActivity$258;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v9, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 1199
    .line 1200
    .line 1201
    :catch_5
    :cond_5a
    :goto_14
    const/4 v7, 0x0

    .line 1202
    goto/16 :goto_2a

    .line 1203
    .line 1204
    :cond_5b
    :goto_15
    const/4 v12, 0x0

    .line 1205
    goto :goto_16

    .line 1206
    :cond_5c
    const/4 v3, 0x0

    .line 1207
    goto :goto_15

    .line 1208
    :cond_5d
    :goto_16
    const-string v0, "http"

    .line 1209
    .line 1210
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1211
    .line 1212
    .line 1213
    move-result v5

    .line 1214
    const/4 v10, 0x5

    .line 1215
    if-nez v5, :cond_5f

    .line 1216
    .line 1217
    :catch_6
    :cond_5e
    :goto_17
    move-object/from16 v21, v2

    .line 1218
    .line 1219
    :catch_7
    :goto_18
    const/4 v0, 0x0

    .line 1220
    goto/16 :goto_23

    .line 1221
    .line 1222
    :cond_5f
    const/16 v11, 0x3f

    .line 1223
    .line 1224
    :try_start_7
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    .line 1225
    .line 1226
    .line 1227
    move-result v11

    .line 1228
    if-gez v11, :cond_60

    .line 1229
    .line 1230
    const/4 v14, 0x1

    .line 1231
    invoke-static {v7, v14}, Lcom/mycompany/app/main/MainUrl;->e(Ljava/lang/String;Z)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    if-eqz v0, :cond_5e

    .line 1236
    .line 1237
    new-instance v0, Lcom/mycompany/app/main/MainUrl$MedItem;

    .line 1238
    .line 1239
    const/4 v5, 0x0

    .line 1240
    invoke-direct {v0, v7, v5}, Lcom/mycompany/app/main/MainUrl$MedItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    :goto_19
    move-object/from16 v21, v2

    .line 1244
    .line 1245
    goto/16 :goto_23

    .line 1246
    .line 1247
    :cond_60
    const/4 v14, 0x1

    .line 1248
    add-int/2addr v11, v14

    .line 1249
    invoke-virtual {v7, v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1250
    .line 1251
    .line 1252
    move-result v15

    .line 1253
    if-ge v15, v11, :cond_63

    .line 1254
    .line 1255
    invoke-static {v7, v14}, Lcom/mycompany/app/main/MainUrl;->e(Ljava/lang/String;Z)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    if-eqz v0, :cond_61

    .line 1260
    .line 1261
    new-instance v0, Lcom/mycompany/app/main/MainUrl$MedItem;

    .line 1262
    .line 1263
    const/4 v5, 0x0

    .line 1264
    invoke-direct {v0, v7, v5}, Lcom/mycompany/app/main/MainUrl$MedItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    goto :goto_19

    .line 1268
    :cond_61
    invoke-static {v11, v7}, Lcom/mycompany/app/main/MainUrl;->d(ILjava/lang/String;)I

    .line 1269
    .line 1270
    .line 1271
    move-result v0

    .line 1272
    if-ge v0, v11, :cond_62

    .line 1273
    .line 1274
    goto :goto_17

    .line 1275
    :cond_62
    new-instance v0, Lcom/mycompany/app/main/MainUrl$MedItem;

    .line 1276
    .line 1277
    invoke-virtual {v13, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v5

    .line 1281
    const/4 v11, 0x0

    .line 1282
    invoke-direct {v0, v5, v11}, Lcom/mycompany/app/main/MainUrl$MedItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    goto :goto_19

    .line 1286
    :cond_63
    move v14, v11

    .line 1287
    :goto_1a
    const/16 v15, 0x26

    .line 1288
    .line 1289
    if-ge v14, v5, :cond_64

    .line 1290
    .line 1291
    invoke-virtual {v7, v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1292
    .line 1293
    .line 1294
    move-result v8

    .line 1295
    if-ge v8, v14, :cond_65

    .line 1296
    .line 1297
    :cond_64
    move-object/from16 v21, v2

    .line 1298
    .line 1299
    :goto_1b
    const/4 v2, 0x0

    .line 1300
    goto :goto_1f

    .line 1301
    :cond_65
    add-int/lit8 v14, v8, 0x4

    .line 1302
    .line 1303
    invoke-virtual {v7, v15, v14}, Ljava/lang/String;->indexOf(II)I

    .line 1304
    .line 1305
    .line 1306
    move-result v6

    .line 1307
    if-ge v6, v14, :cond_66

    .line 1308
    .line 1309
    move v6, v5

    .line 1310
    :cond_66
    sget-object v20, Lcom/mycompany/app/main/MainUrl;->a:[Ljava/lang/String;

    .line 1311
    .line 1312
    const/4 v15, 0x0

    .line 1313
    :goto_1c
    if-ge v15, v10, :cond_6c

    .line 1314
    .line 1315
    aget-object v10, v20, v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1316
    .line 1317
    move-object/from16 v21, v2

    .line 1318
    .line 1319
    :try_start_8
    invoke-static {v7, v14, v6, v10}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    move/from16 v22, v14

    .line 1324
    .line 1325
    const/4 v14, -0x1

    .line 1326
    if-ne v2, v14, :cond_67

    .line 1327
    .line 1328
    add-int/lit8 v15, v15, 0x1

    .line 1329
    .line 1330
    move-object/from16 v2, v21

    .line 1331
    .line 1332
    move/from16 v14, v22

    .line 1333
    .line 1334
    const/4 v10, 0x5

    .line 1335
    goto :goto_1c

    .line 1336
    :cond_67
    const-string v14, ".m3u8"

    .line 1337
    .line 1338
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1339
    .line 1340
    .line 1341
    move-result v10

    .line 1342
    if-eqz v10, :cond_6b

    .line 1343
    .line 1344
    const/16 v10, 0x2f

    .line 1345
    .line 1346
    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 1347
    .line 1348
    .line 1349
    move-result v14

    .line 1350
    if-gez v14, :cond_69

    .line 1351
    .line 1352
    :cond_68
    const/4 v2, 0x0

    .line 1353
    goto :goto_1e

    .line 1354
    :cond_69
    const-string v10, "rendition"

    .line 1355
    .line 1356
    invoke-static {v7, v14, v2, v10}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 1357
    .line 1358
    .line 1359
    move-result v10

    .line 1360
    const/4 v15, -0x1

    .line 1361
    if-eq v10, v15, :cond_6a

    .line 1362
    .line 1363
    :goto_1d
    const/4 v2, 0x1

    .line 1364
    goto :goto_1e

    .line 1365
    :cond_6a
    const-string v10, "chunk"

    .line 1366
    .line 1367
    invoke-static {v7, v14, v2, v10}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    if-eq v2, v15, :cond_68

    .line 1372
    .line 1373
    goto :goto_1d

    .line 1374
    :goto_1e
    if-eqz v2, :cond_6b

    .line 1375
    .line 1376
    goto :goto_1b

    .line 1377
    :cond_6b
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v2

    .line 1381
    invoke-static {v2}, Lcom/mycompany/app/main/MainUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v2

    .line 1385
    goto :goto_1f

    .line 1386
    :cond_6c
    move-object/from16 v21, v2

    .line 1387
    .line 1388
    add-int/lit8 v14, v6, 0x1

    .line 1389
    .line 1390
    const/4 v10, 0x5

    .line 1391
    goto :goto_1a

    .line 1392
    :goto_1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v6

    .line 1396
    if-nez v6, :cond_6d

    .line 1397
    .line 1398
    invoke-static {v5, v11, v7}, Lcom/mycompany/app/main/MainUrl;->b(IILjava/lang/String;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v0

    .line 1402
    new-instance v5, Lcom/mycompany/app/main/MainUrl$MedItem;

    .line 1403
    .line 1404
    invoke-direct {v5, v2, v0}, Lcom/mycompany/app/main/MainUrl$MedItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    move-object v0, v5

    .line 1408
    goto/16 :goto_23

    .line 1409
    .line 1410
    :cond_6d
    invoke-static {v11, v7}, Lcom/mycompany/app/main/MainUrl;->d(ILjava/lang/String;)I

    .line 1411
    .line 1412
    .line 1413
    move-result v2

    .line 1414
    if-ge v2, v11, :cond_6e

    .line 1415
    .line 1416
    const/4 v0, 0x0

    .line 1417
    goto :goto_22

    .line 1418
    :cond_6e
    const-string v6, "=http"

    .line 1419
    .line 1420
    invoke-virtual {v7, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1421
    .line 1422
    .line 1423
    move-result v8

    .line 1424
    if-le v8, v2, :cond_6f

    .line 1425
    .line 1426
    add-int/lit8 v10, v8, 0x5

    .line 1427
    .line 1428
    if-ge v10, v5, :cond_6f

    .line 1429
    .line 1430
    const/16 v18, 0x1

    .line 1431
    .line 1432
    add-int/lit8 v14, v8, 0x1

    .line 1433
    .line 1434
    goto :goto_20

    .line 1435
    :cond_6f
    const/16 v18, 0x1

    .line 1436
    .line 1437
    invoke-virtual {v7, v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 1438
    .line 1439
    .line 1440
    move-result v6

    .line 1441
    if-lez v6, :cond_70

    .line 1442
    .line 1443
    add-int/lit8 v8, v6, 0x5

    .line 1444
    .line 1445
    if-ge v8, v2, :cond_70

    .line 1446
    .line 1447
    add-int/lit8 v14, v6, 0x1

    .line 1448
    .line 1449
    goto :goto_20

    .line 1450
    :cond_70
    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1451
    .line 1452
    .line 1453
    move-result v14

    .line 1454
    if-le v14, v2, :cond_71

    .line 1455
    .line 1456
    add-int/lit8 v0, v14, 0x4

    .line 1457
    .line 1458
    if-ge v0, v5, :cond_71

    .line 1459
    .line 1460
    goto :goto_20

    .line 1461
    :cond_71
    const/4 v14, -0x1

    .line 1462
    :goto_20
    if-ge v14, v11, :cond_72

    .line 1463
    .line 1464
    move-object v0, v7

    .line 1465
    goto :goto_22

    .line 1466
    :cond_72
    const/16 v0, 0x26

    .line 1467
    .line 1468
    invoke-virtual {v7, v0, v14}, Ljava/lang/String;->indexOf(II)I

    .line 1469
    .line 1470
    .line 1471
    move-result v0

    .line 1472
    if-le v0, v14, :cond_73

    .line 1473
    .line 1474
    if-ge v0, v5, :cond_73

    .line 1475
    .line 1476
    invoke-virtual {v7, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    goto :goto_21

    .line 1481
    :cond_73
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    :goto_21
    invoke-static {v0}, Lcom/mycompany/app/main/MainUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    :goto_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result v2

    .line 1493
    if-eqz v2, :cond_74

    .line 1494
    .line 1495
    goto/16 :goto_18

    .line 1496
    .line 1497
    :cond_74
    invoke-static {v5, v11, v7}, Lcom/mycompany/app/main/MainUrl;->b(IILjava/lang/String;)Ljava/lang/String;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v2

    .line 1501
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    new-instance v0, Lcom/mycompany/app/main/MainUrl$MedItem;

    .line 1513
    .line 1514
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v5

    .line 1518
    invoke-direct {v0, v5, v2}, Lcom/mycompany/app/main/MainUrl$MedItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1519
    .line 1520
    .line 1521
    :goto_23
    if-eqz v0, :cond_76

    .line 1522
    .line 1523
    iget-object v1, v0, Lcom/mycompany/app/main/MainUrl$MedItem;->a:Ljava/lang/String;

    .line 1524
    .line 1525
    iget-object v0, v0, Lcom/mycompany/app/main/MainUrl$MedItem;->b:Ljava/lang/String;

    .line 1526
    .line 1527
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1528
    .line 1529
    .line 1530
    move-result v2

    .line 1531
    if-eqz v2, :cond_75

    .line 1532
    .line 1533
    goto/16 :goto_14

    .line 1534
    .line 1535
    :cond_75
    invoke-virtual {v9, v1, v4}, Lcom/mycompany/app/web/WebViewActivity;->i3(Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v2

    .line 1539
    const/4 v5, 0x0

    .line 1540
    invoke-virtual {v9, v1, v2, v0, v5}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1541
    .line 1542
    .line 1543
    goto/16 :goto_14

    .line 1544
    .line 1545
    :cond_76
    invoke-static {v7}, Lcom/mycompany/app/main/MainUrl;->f(Ljava/lang/String;)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    if-eqz v0, :cond_77

    .line 1550
    .line 1551
    goto/16 :goto_2a

    .line 1552
    .line 1553
    :cond_77
    :try_start_9
    invoke-interface {v4}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    if-nez v0, :cond_79

    .line 1558
    .line 1559
    :catch_8
    :cond_78
    :goto_24
    const/4 v14, 0x1

    .line 1560
    goto/16 :goto_28

    .line 1561
    .line 1562
    :cond_79
    const-string v2, "Range"

    .line 1563
    .line 1564
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    check-cast v0, Ljava/lang/String;

    .line 1569
    .line 1570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v2

    .line 1574
    if-nez v2, :cond_78

    .line 1575
    .line 1576
    const-string v2, "bytes"

    .line 1577
    .line 1578
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1579
    .line 1580
    .line 1581
    move-result v0

    .line 1582
    if-nez v0, :cond_7a

    .line 1583
    .line 1584
    goto :goto_24

    .line 1585
    :cond_7a
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->y5(Ljava/lang/String;)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v0

    .line 1589
    if-eqz v0, :cond_7e

    .line 1590
    .line 1591
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1592
    .line 1593
    .line 1594
    move-result v0

    .line 1595
    const/16 v1, 0xb

    .line 1596
    .line 1597
    if-ge v0, v1, :cond_7b

    .line 1598
    .line 1599
    goto/16 :goto_27

    .line 1600
    .line 1601
    :cond_7b
    const/16 v0, 0xa

    .line 1602
    .line 1603
    const/16 v10, 0x2f

    .line 1604
    .line 1605
    invoke-virtual {v7, v10, v0}, Ljava/lang/String;->indexOf(II)I

    .line 1606
    .line 1607
    .line 1608
    move-result v1

    .line 1609
    if-ge v1, v0, :cond_7c

    .line 1610
    .line 1611
    goto/16 :goto_27

    .line 1612
    .line 1613
    :cond_7c
    const/16 v18, 0x1

    .line 1614
    .line 1615
    add-int/lit8 v1, v1, 0x1

    .line 1616
    .line 1617
    const-string v0, "index-all.nozomi"

    .line 1618
    .line 1619
    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v0

    .line 1623
    if-eqz v0, :cond_7d

    .line 1624
    .line 1625
    goto :goto_25

    .line 1626
    :cond_7d
    const-string v0, "languagesindex/languages."

    .line 1627
    .line 1628
    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 1629
    .line 1630
    .line 1631
    move-result v0

    .line 1632
    if-eqz v0, :cond_85

    .line 1633
    .line 1634
    :goto_25
    goto :goto_24

    .line 1635
    :cond_7e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1639
    const-string v2, "dcinside.co.kr"

    .line 1640
    .line 1641
    const-string v5, "dcinside.com"

    .line 1642
    .line 1643
    if-eqz v0, :cond_80

    .line 1644
    .line 1645
    :cond_7f
    const/16 v16, 0x0

    .line 1646
    .line 1647
    goto :goto_26

    .line 1648
    :cond_80
    :try_start_a
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    if-nez v0, :cond_81

    .line 1653
    .line 1654
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v0

    .line 1658
    if-eqz v0, :cond_7f

    .line 1659
    .line 1660
    :cond_81
    const/16 v16, 0x1

    .line 1661
    .line 1662
    :goto_26
    if-eqz v16, :cond_85

    .line 1663
    .line 1664
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v0

    .line 1668
    if-eqz v0, :cond_82

    .line 1669
    .line 1670
    const/4 v14, 0x1

    .line 1671
    invoke-static {v7, v14}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v1

    .line 1679
    if-eqz v1, :cond_83

    .line 1680
    .line 1681
    goto :goto_27

    .line 1682
    :cond_82
    move-object/from16 v0, v21

    .line 1683
    .line 1684
    :cond_83
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1685
    .line 1686
    .line 1687
    move-result v1

    .line 1688
    if-nez v1, :cond_84

    .line 1689
    .line 1690
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v1

    .line 1694
    if-nez v1, :cond_84

    .line 1695
    .line 1696
    goto :goto_27

    .line 1697
    :cond_84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1698
    .line 1699
    .line 1700
    move-result v0

    .line 1701
    add-int/lit8 v1, v0, 0x1

    .line 1702
    .line 1703
    const-string v2, "dccon"

    .line 1704
    .line 1705
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v1

    .line 1709
    if-eqz v1, :cond_85

    .line 1710
    .line 1711
    const-string v1, ".php"

    .line 1712
    .line 1713
    add-int/lit8 v0, v0, 0x6

    .line 1714
    .line 1715
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 1716
    .line 1717
    .line 1718
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1719
    const/4 v14, -0x1

    .line 1720
    if-eq v0, v14, :cond_85

    .line 1721
    .line 1722
    goto/16 :goto_24

    .line 1723
    .line 1724
    :cond_85
    :goto_27
    invoke-virtual {v13, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v7

    .line 1728
    goto :goto_2a

    .line 1729
    :goto_28
    if-ne v12, v14, :cond_5a

    .line 1730
    .line 1731
    const/16 v10, 0x2f

    .line 1732
    .line 1733
    :try_start_b
    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    .line 1734
    .line 1735
    .line 1736
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1737
    if-lez v0, :cond_5a

    .line 1738
    .line 1739
    add-int/2addr v0, v14

    .line 1740
    if-lt v0, v3, :cond_86

    .line 1741
    .line 1742
    goto/16 :goto_14

    .line 1743
    .line 1744
    :cond_86
    sub-int/2addr v3, v0

    .line 1745
    if-lez v3, :cond_5a

    .line 1746
    .line 1747
    const/4 v0, 0x5

    .line 1748
    if-ge v3, v0, :cond_5a

    .line 1749
    .line 1750
    invoke-virtual {v13, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v7

    .line 1754
    goto :goto_2a

    .line 1755
    :cond_87
    :goto_29
    iget-boolean v0, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 1756
    .line 1757
    if-eqz v0, :cond_88

    .line 1758
    .line 1759
    goto/16 :goto_14

    .line 1760
    .line 1761
    :cond_88
    const/4 v14, 0x1

    .line 1762
    iput-boolean v14, v9, Lcom/mycompany/app/web/WebViewActivity;->O8:Z

    .line 1763
    .line 1764
    const/4 v5, 0x0

    .line 1765
    iput-object v5, v9, Lcom/mycompany/app/web/WebViewActivity;->P8:Ljava/util/List;

    .line 1766
    .line 1767
    iput-object v5, v9, Lcom/mycompany/app/web/WebViewActivity;->Q8:Ljava/util/List;

    .line 1768
    .line 1769
    iput-object v5, v9, Lcom/mycompany/app/web/WebViewActivity;->R8:Ljava/util/List;

    .line 1770
    .line 1771
    iget-object v0, v9, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1772
    .line 1773
    if-eqz v0, :cond_5a

    .line 1774
    .line 1775
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebNestView;->n0:Z

    .line 1776
    .line 1777
    if-eqz v0, :cond_89

    .line 1778
    .line 1779
    goto/16 :goto_14

    .line 1780
    .line 1781
    :cond_89
    const-string v0, "tsfile:"

    .line 1782
    .line 1783
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v7

    .line 1787
    :goto_2a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1788
    .line 1789
    .line 1790
    move-result v0

    .line 1791
    if-nez v0, :cond_8b

    .line 1792
    .line 1793
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1794
    .line 1795
    .line 1796
    move-result v0

    .line 1797
    if-eqz v0, :cond_8a

    .line 1798
    .line 1799
    goto :goto_2b

    .line 1800
    :cond_8a
    invoke-virtual {v9, v7, v4}, Lcom/mycompany/app/web/WebViewActivity;->i3(Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v0

    .line 1804
    const/4 v5, 0x0

    .line 1805
    invoke-virtual {v9, v7, v0, v5, v5}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1806
    .line 1807
    .line 1808
    goto :goto_2c

    .line 1809
    :cond_8b
    :goto_2b
    const/4 v5, 0x0

    .line 1810
    :goto_2c
    return-object v5
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 14
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 15
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->F1:Z

    if-nez p1, :cond_6

    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->y9:I

    if-eqz p1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    if-eqz p1, :cond_5

    .line 17
    iget p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 18
    :cond_4
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->N0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 19
    :cond_5
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->N0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v2
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebViewActivity;

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->w0(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 4
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F1:Z

    if-nez v1, :cond_5

    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->y9:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    if-eqz v1, :cond_4

    .line 6
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    const/4 p1, 0x5

    if-ne v1, p1, :cond_5

    .line 8
    :cond_3
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->N0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 9
    :cond_4
    invoke-static {v0, p2}, Lcom/mycompany/app/web/WebViewActivity;->N0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v2
.end method
