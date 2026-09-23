.class Lcom/mycompany/app/web/WebViewActivity$361;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/mycompany/app/web/WebNestView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->m8(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/web/WebViewActivity;->c9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lk:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->lk:Z

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v3, 0x1

    # Non-image data: URLs leave q1=0 (only images get q1=1). Route them to E0
    # fast-save instead of MainDownSvc, which treats data: as HTTP and shows server_error.
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->isDataUrlDownload(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_q1

    iget-object p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/mycompany/app/web/WebViewActivity;->E0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_q1
    .line 15
    if-ne p3, v3, :cond_2

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, p1, p2, v3}, Lcom/mycompany/app/web/WebViewActivity;->E0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_6

    .line 30
    .line 31
    iget-object p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, p1, p2, v2}, Lcom/mycompany/app/web/WebViewActivity;->E0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/4 v1, 0x3

    .line 38
    if-ne p3, v1, :cond_6

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 41
    .line 42
    .line 43
    iget-boolean p3, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 44
    .line 45
    if-eqz p3, :cond_3

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_3
    iget-object p3, v0, Lcom/mycompany/app/web/WebViewActivity;->r6:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 50
    .line 51
    if-eqz p3, :cond_4

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->S3()V

    .line 56
    .line 57
    .line 58
    new-instance p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 59
    .line 60
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 66
    .line 67
    iput-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p2, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 70
    .line 71
    iget-object p1, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p1, p3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->nb:Z

    .line 80
    .line 81
    sput-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 82
    .line 83
    :cond_5
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 84
    .line 85
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 86
    .line 87
    new-instance p4, Lcom/mycompany/app/web/WebViewActivity$370;

    .line 88
    .line 89
    invoke-direct {p4, v0}, Lcom/mycompany/app/web/WebViewActivity$370;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, v0, p2, p3, p4}, Lcom/mycompany/app/dialog/DialogDownBlob;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->r6:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 96
    .line 97
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$371;

    .line 98
    .line 99
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebViewActivity$371;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 106
    .line 107
    if-eqz p1, :cond_d

    .line 108
    .line 109
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->r6:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 110
    .line 111
    iput-boolean v3, p1, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-nez v1, :cond_7

    .line 126
    .line 127
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_fail:I

    .line 128
    .line 129
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->t5(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    move-object p6, p1

    .line 140
    goto :goto_0

    .line 141
    :cond_8
    invoke-static {p1, p6}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_9

    .line 146
    .line 147
    iget-object p6, v0, Lcom/mycompany/app/web/WebViewActivity;->D8:Ljava/lang/String;

    .line 148
    .line 149
    :cond_9
    :goto_0
    if-ne p3, v3, :cond_a

    .line 150
    .line 151
    move p4, v2

    .line 152
    :cond_a
    invoke-virtual {v1, p1, p6, p2, p4}, Lcom/mycompany/app/main/MainApp;->R(Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;Z)V

    .line 153
    .line 154
    .line 155
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 156
    .line 157
    if-eqz p2, :cond_d

    .line 158
    .line 159
    if-ne p3, v3, :cond_b

    .line 160
    .line 161
    invoke-virtual {p2, p1, v2}, Lcom/mycompany/app/web/WebNestView;->e(Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_b
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->mk:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_c

    .line 172
    .line 173
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 174
    .line 175
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->mk:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p1, p2, v3}, Lcom/mycompany/app/web/WebNestView;->e(Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    :cond_c
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_d

    .line 185
    .line 186
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 187
    .line 188
    invoke-virtual {p1, p5, v3}, Lcom/mycompany/app/web/WebNestView;->e(Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    :cond_d
    :goto_1
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->cn:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->cn:Z

    .line 25
    .line 26
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->dn:Ljava/lang/String;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput-boolean p2, v0, Lcom/mycompany/app/web/WebViewActivity;->en:Z

    .line 30
    .line 31
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->fn:I

    .line 32
    .line 33
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_3
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$548;

    .line 39
    .line 40
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebViewActivity$548;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-eqz p4, :cond_1

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->M4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-nez p4, :cond_2

    .line 22
    .line 23
    const-string p4, "text"

    .line 24
    .line 25
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_2

    .line 30
    .line 31
    sget p3, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->C3(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {v0, p1, p3, p2}, Lcom/mycompany/app/web/WebViewActivity;->u9(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v3, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$361;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 15
    .line 16
    move-object v4, p1

    .line 17
    move-object v6, p2

    .line 18
    move-object v7, p3

    .line 19
    invoke-static/range {v1 .. v7}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 24
    .line 25
    return-void
.end method
