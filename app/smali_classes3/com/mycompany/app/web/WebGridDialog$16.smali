.class Lcom/mycompany/app/web/WebGridDialog$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$16;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$16;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 5
    .line 6
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->u0:I

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->i0:Ljava/util/List;

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebGridDialog;->v(ILjava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$16;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$16;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_6

    .line 24
    .line 25
    :cond_2
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebGridDialog;->z0:Z

    .line 26
    .line 27
    iget v3, v0, Lcom/mycompany/app/web/WebGridDialog;->y0:I

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v3, v4, :cond_6

    .line 31
    .line 32
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebGridDialog;->A(I)V

    .line 46
    .line 47
    .line 48
    iget p1, v0, Lcom/mycompany/app/web/WebGridDialog;->y0:I

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    const/16 p1, 0x64

    .line 53
    .line 54
    if-ne v1, p1, :cond_5

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput p1, v0, Lcom/mycompany/app/web/WebGridDialog;->y0:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    const/4 p2, 0x3

    .line 61
    if-ne p1, p2, :cond_5

    .line 62
    .line 63
    iput v4, v0, Lcom/mycompany/app/web/WebGridDialog;->y0:I

    .line 64
    .line 65
    :cond_5
    :goto_1
    return-void

    .line 66
    :cond_6
    iput v2, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 67
    .line 68
    if-eqz p2, :cond_9

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    sget p1, Lnet/kaki87/soul2/testing/R$string;->no_title:I

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_8
    iput-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->h0:Ljava/lang/String;

    .line 94
    .line 95
    iput-object p2, v0, Lcom/mycompany/app/web/WebGridDialog;->i0:Ljava/util/List;

    .line 96
    .line 97
    iput-object p3, v0, Lcom/mycompany/app/web/WebGridDialog;->j0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_9
    :goto_2
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebGridDialog;->z0:Z

    .line 101
    .line 102
    if-nez p1, :cond_a

    .line 103
    .line 104
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebGridDialog;->z0:Z

    .line 105
    .line 106
    :cond_a
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-boolean p1, p1, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 111
    .line 112
    if-eqz p1, :cond_b

    .line 113
    .line 114
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 115
    .line 116
    sget p2, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 117
    .line 118
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_b
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebGridDialog;->z0:Z

    .line 123
    .line 124
    if-eqz p1, :cond_c

    .line 125
    .line 126
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 127
    .line 128
    sget p2, Lnet/kaki87/soul2/testing/R$string;->check_network:I

    .line 129
    .line 130
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 131
    .line 132
    .line 133
    :cond_c
    :goto_3
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->i0:Ljava/util/List;

    .line 134
    .line 135
    sget p2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 136
    .line 137
    invoke-virtual {v0, p2, p1}, Lcom/mycompany/app/web/WebGridDialog;->v(ILjava/util/List;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$16;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, v0, Lcom/mycompany/app/web/WebGridDialog;->u0:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 12
    .line 13
    iget v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebGridDialog;->A(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$16;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->e0:I

    .line 10
    .line 11
    iget v2, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->f0:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebGridDialog;->A(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
