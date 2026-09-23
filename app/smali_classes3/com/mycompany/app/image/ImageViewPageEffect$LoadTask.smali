.class Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->f:Z

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewControl;->A()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 37
    .line 38
    .line 39
    iget p2, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 40
    .line 41
    const/16 v0, 0xc

    .line 42
    .line 43
    if-ne p2, v0, :cond_2

    .line 44
    .line 45
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 46
    .line 47
    new-instance v0, Lcom/mycompany/app/image/ImageViewPageEffect$19;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect$19;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v1, 0x1388

    .line 53
    .line 54
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 58
    .line 59
    .line 60
    const/4 p2, -0x1

    .line 61
    invoke-virtual {p1, p2, p2}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 12
    .line 13
    if-eqz v0, :cond_d

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->f:Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 32
    .line 33
    if-lez v5, :cond_3

    .line 34
    .line 35
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    move v5, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v4, v2

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    :try_start_0
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->F:Lcom/mycompany/app/compress/Compress;

    .line 55
    .line 56
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->F:Lcom/mycompany/app/compress/Compress;

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    iput-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 62
    .line 63
    iput-boolean v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->I:Z

    .line 64
    .line 65
    :catch_0
    :goto_2
    move v7, v3

    .line 66
    goto :goto_5

    .line 67
    :cond_4
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->I:Z

    .line 68
    .line 69
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/mycompany/app/compress/Compress;->a()V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 77
    .line 78
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 79
    .line 80
    iget v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 81
    .line 82
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v6, v2, v8, v9}, Lcom/mycompany/app/compress/Compress;->b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/compress/Compress;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 91
    .line 92
    iput v6, v2, Lcom/mycompany/app/compress/Compress;->e:I

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/mycompany/app/compress/Compress;->s()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/4 v8, 0x3

    .line 99
    if-ne v6, v8, :cond_6

    .line 100
    .line 101
    sget-object v8, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v8, v2, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    const-string v8, "UTF-8"

    .line 107
    .line 108
    iput-object v8, v2, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 109
    .line 110
    :goto_3
    const/4 v8, 0x2

    .line 111
    if-ne v6, v8, :cond_8

    .line 112
    .line 113
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->H:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_7

    .line 120
    .line 121
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->H:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v6, v2, Lcom/mycompany/app/compress/Compress;->g:Ljava/lang/String;

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    invoke-virtual {v2}, Lcom/mycompany/app/compress/Compress;->t()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v6}, Lcom/mycompany/app/compress/CompressUtilZip2;->a(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_8

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_8
    :goto_4
    iget-boolean v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->j:Z

    .line 138
    .line 139
    if-eqz v6, :cond_9

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_9
    invoke-virtual {v2}, Lcom/mycompany/app/compress/Compress;->M()V

    .line 143
    .line 144
    .line 145
    iget-boolean v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->j:Z

    .line 146
    .line 147
    if-eqz v6, :cond_a

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_a
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :goto_5
    iput-boolean v7, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->g:Z

    .line 154
    .line 155
    if-eqz v7, :cond_b

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_b
    if-eqz v1, :cond_c

    .line 159
    .line 160
    iput v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 161
    .line 162
    iput v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 163
    .line 164
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_c

    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 171
    .line 172
    if-eqz v1, :cond_c

    .line 173
    .line 174
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 175
    .line 176
    if-lez v2, :cond_c

    .line 177
    .line 178
    invoke-virtual {v1, v4}, Lcom/mycompany/app/compress/Compress;->m(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    const/4 v2, -0x1

    .line 183
    if-eq v1, v2, :cond_c

    .line 184
    .line 185
    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 186
    .line 187
    iput v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 188
    .line 189
    :cond_c
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 190
    .line 191
    .line 192
    :cond_d
    :goto_6
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->F:Lcom/mycompany/app/compress/Compress;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f0:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    sget v2, Lcom/mycompany/app/pref/PrefImage;->u:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget v2, Lcom/mycompany/app/pref/PrefImage;->t:I

    .line 33
    .line 34
    :goto_0
    const/4 v3, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    move v1, v3

    .line 38
    :cond_3
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/mycompany/app/image/ImageViewPageEffect;->h0(Z)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 49
    .line 50
    .line 51
    :cond_5
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->g0:Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->F:Lcom/mycompany/app/compress/Compress;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->g:Z

    .line 21
    .line 22
    if-eqz v1, :cond_7

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->T:Lcom/mycompany/app/view/MyCoverView;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    iget-boolean v3, v1, Lcom/mycompany/app/view/MyCoverView;->t:Z

    .line 30
    .line 31
    if-ne v3, v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iput-boolean v2, v1, Lcom/mycompany/app/view/MyCoverView;->t:Z

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->invalidate()V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->U0()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->t0()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 58
    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    :goto_1
    return-void

    .line 62
    :cond_6
    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->N0:Z

    .line 63
    .line 64
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 65
    .line 66
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditText;

    .line 67
    .line 68
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 69
    .line 70
    sget v5, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/mycompany/app/compress/Compress;->t()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v9, Lcom/mycompany/app/image/ImageViewPageEffect$17;

    .line 81
    .line 82
    invoke-direct {v9, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$17;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 83
    .line 84
    .line 85
    const/4 v8, 0x1

    .line 86
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogEditText;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogEditText$EditTextListener;)V

    .line 87
    .line 88
    .line 89
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->G:Lcom/mycompany/app/dialog/DialogEditText;

    .line 90
    .line 91
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$18;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$18;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_7
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$LoadTask;->f:Z

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->R(Lcom/mycompany/app/image/ImageViewPageEffect;ZZ)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
