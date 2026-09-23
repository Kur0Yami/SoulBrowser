.class Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebEmgLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebEmgLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgLoad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

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
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setWebLoading(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->e(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->m:Z

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
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->n:Ljava/lang/String;

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
    iput-boolean v2, p1, Lcom/mycompany/app/web/WebEmgLoad;->m:Z

    .line 38
    .line 39
    iput-object p2, p1, Lcom/mycompany/app/web/WebEmgLoad;->n:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v3, Lcom/mycompany/app/web/WebEmgLoad$5;

    .line 47
    .line 48
    invoke-direct {v3, p1}, Lcom/mycompany/app/web/WebEmgLoad$5;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_d

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->h:Ljava/lang/String;

    .line 62
    .line 63
    iget v3, p1, Lcom/mycompany/app/web/WebEmgLoad;->i:I

    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    if-ge v3, v4, :cond_4

    .line 67
    .line 68
    add-int/2addr v3, v2

    .line 69
    iput v3, p1, Lcom/mycompany/app/web/WebEmgLoad;->i:I

    .line 70
    .line 71
    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 72
    .line 73
    new-instance p2, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient$1;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient$1;-><init>(Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v0, 0x190

    .line 79
    .line 80
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget v2, p1, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 85
    .line 86
    iget-object v3, p1, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 87
    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-static {v3}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v3, v3, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 96
    .line 97
    if-eqz v3, :cond_c

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ltz v2, :cond_7

    .line 111
    .line 112
    if-lt v2, v4, :cond_8

    .line 113
    .line 114
    :cond_7
    move v2, v1

    .line 115
    :cond_8
    move v5, v1

    .line 116
    move v6, v2

    .line 117
    :cond_9
    if-ge v5, v4, :cond_c

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    iget-boolean v7, p1, Lcom/mycompany/app/web/WebEmgLoad;->g:Z

    .line 122
    .line 123
    if-eqz v7, :cond_a

    .line 124
    .line 125
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    rem-int/2addr v6, v4

    .line 128
    goto :goto_1

    .line 129
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 130
    .line 131
    add-int/2addr v6, v4

    .line 132
    rem-int/2addr v6, v4

    .line 133
    :goto_1
    if-eq v6, v2, :cond_c

    .line 134
    .line 135
    if-ltz v6, :cond_c

    .line 136
    .line 137
    if-lt v6, v4, :cond_b

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_b
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_9

    .line 151
    .line 152
    move-object v0, v7

    .line 153
    :cond_c
    :goto_2
    if-nez v0, :cond_d

    .line 154
    .line 155
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 156
    .line 157
    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 158
    .line 159
    if-eqz p1, :cond_f

    .line 160
    .line 161
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_d
    iput v1, p1, Lcom/mycompany/app/web/WebEmgLoad;->i:I

    .line 166
    .line 167
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->h:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_f

    .line 174
    .line 175
    iput-object p2, p1, Lcom/mycompany/app/web/WebEmgLoad;->h:Ljava/lang/String;

    .line 176
    .line 177
    iget-object p2, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 178
    .line 179
    if-nez p2, :cond_e

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_e
    new-instance v0, Lcom/mycompany/app/web/WebEmgLoad$8;

    .line 183
    .line 184
    invoke-direct {v0, p1}, Lcom/mycompany/app/web/WebEmgLoad$8;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 185
    .line 186
    .line 187
    const-wide/16 v1, 0xc8

    .line 188
    .line 189
    invoke-virtual {p2, v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    .line 191
    .line 192
    :cond_f
    :goto_3
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->e(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebEmgTask;->c(I)V

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
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebEmgTask;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebEmgLoad$6;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebEmgLoad$6;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

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
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->e(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->e(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->f(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebEmgLoad;

    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

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
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->e(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebEmgLoad;->f(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V

    :cond_2
    return v1
.end method
