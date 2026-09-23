.class Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebHmgLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebHmgLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgLoad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->e(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->o:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->p:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput-boolean v2, p1, Lcom/mycompany/app/web/WebHmgLoad;->o:Z

    .line 38
    .line 39
    iput-object p2, p1, Lcom/mycompany/app/web/WebHmgLoad;->p:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->c:Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v3, Lcom/mycompany/app/web/WebHmgLoad$5;

    .line 47
    .line 48
    invoke-direct {v3, p1}, Lcom/mycompany/app/web/WebHmgLoad$5;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 55
    .line 56
    const-wide/16 v3, 0xc8

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iput-object v5, p1, Lcom/mycompany/app/web/WebHmgLoad;->h:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    new-instance p2, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient$1;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2, v3, v4}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->z5(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_e

    .line 79
    .line 80
    iput-object v5, p1, Lcom/mycompany/app/web/WebHmgLoad;->h:Ljava/lang/String;

    .line 81
    .line 82
    iget v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->i:I

    .line 83
    .line 84
    const/4 v6, 0x3

    .line 85
    if-ge v0, v6, :cond_5

    .line 86
    .line 87
    add-int/2addr v0, v2

    .line 88
    iput v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->i:I

    .line 89
    .line 90
    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 91
    .line 92
    new-instance p2, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient$2;

    .line 93
    .line 94
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient$2;-><init>(Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 v0, 0x190

    .line 98
    .line 99
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    iget v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 104
    .line 105
    iget-object v2, p1, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 106
    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-static {v2}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v2, v2, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 115
    .line 116
    if-eqz v2, :cond_d

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-ltz v0, :cond_8

    .line 130
    .line 131
    if-lt v0, v6, :cond_9

    .line 132
    .line 133
    :cond_8
    move v0, v1

    .line 134
    :cond_9
    move v8, v0

    .line 135
    move v7, v1

    .line 136
    :cond_a
    if-ge v7, v6, :cond_d

    .line 137
    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    iget-boolean v9, p1, Lcom/mycompany/app/web/WebHmgLoad;->g:Z

    .line 141
    .line 142
    if-eqz v9, :cond_b

    .line 143
    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 145
    .line 146
    rem-int/2addr v8, v6

    .line 147
    goto :goto_1

    .line 148
    :cond_b
    add-int/lit8 v8, v8, -0x1

    .line 149
    .line 150
    add-int/2addr v8, v6

    .line 151
    rem-int/2addr v8, v6

    .line 152
    :goto_1
    if-eq v8, v0, :cond_d

    .line 153
    .line 154
    if-ltz v8, :cond_d

    .line 155
    .line 156
    if-lt v8, v6, :cond_c

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_c
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v9}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_a

    .line 170
    .line 171
    move-object v5, v9

    .line 172
    :cond_d
    :goto_2
    if-nez v5, :cond_e

    .line 173
    .line 174
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 175
    .line 176
    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 177
    .line 178
    if-eqz p1, :cond_11

    .line 179
    .line 180
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_e
    iput v1, p1, Lcom/mycompany/app/web/WebHmgLoad;->i:I

    .line 185
    .line 186
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->h:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_11

    .line 193
    .line 194
    iput-object p2, p1, Lcom/mycompany/app/web/WebHmgLoad;->h:Ljava/lang/String;

    .line 195
    .line 196
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 197
    .line 198
    if-eqz p2, :cond_f

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_f
    iget-object p2, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 202
    .line 203
    if-nez p2, :cond_10

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_10
    new-instance v0, Lcom/mycompany/app/web/WebHmgLoad$8;

    .line 207
    .line 208
    invoke-direct {v0, p1}, Lcom/mycompany/app/web/WebHmgLoad$8;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v0, v3, v4}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    .line 213
    .line 214
    :cond_11
    :goto_3
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p3, v0}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->e(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebHmgTask;->f(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    iget-object p1, p1, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebHmgTask;->f(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/web/WebHmgLoad;->c:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebHmgLoad$6;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebHmgLoad$6;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->e(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->e(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->z5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->f(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebHmgLoad;

    iget-object v0, p1, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->e(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->z5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebHmgLoad;->f(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V

    :cond_2
    return v1
.end method
