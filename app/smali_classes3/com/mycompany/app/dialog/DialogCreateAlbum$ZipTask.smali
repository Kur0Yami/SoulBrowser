.class Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogCreateAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->f:Ljava/util/List;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->u0:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    if-eqz v0, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_5

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 46
    .line 47
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x1:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    sub-int/2addr v0, v2

    .line 60
    iput v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 61
    .line 62
    iput-boolean v2, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->k1:Z

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->k1:Z

    .line 66
    .line 67
    :goto_0
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h1:Z

    .line 68
    .line 69
    iput v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->m1:I

    .line 70
    .line 71
    iput v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 75
    .line 76
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->u0:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->L0:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 100
    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$18;

    .line 105
    .line 106
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogCreateAlbum$18;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    :goto_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    sget v2, Lnet/kaki87/soul2/testing/R$string;->create_album:I

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    iget v2, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 122
    .line 123
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->P0:Lcom/mycompany/app/view/MyProgressBar;

    .line 131
    .line 132
    iget v1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->P0:Lcom/mycompany/app/view/MyProgressBar;

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    const-string v1, "0"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    const v0, -0x50506

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    const/high16 v0, -0x1000000

    .line 161
    .line 162
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 12
    .line 13
    if-eqz v0, :cond_a

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->f:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v1, :cond_a

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->W0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->W0:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->W0:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2, v3}, Lcom/mycompany/app/db/DbAlbum;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_6

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iget-boolean v4, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_4
    if-nez v3, :cond_5

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_5
    new-instance v4, Ljava/io/File;

    .line 87
    .line 88
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->y1:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, "/"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H1:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    const/4 v5, 0x1

    .line 130
    :try_start_0
    new-instance v6, Lnet/lingala/zip4j/core/ZipFile;

    .line 131
    .line 132
    invoke-direct {v6, v1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v7, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/core/ZipFile;->h(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v7, v6, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 141
    .line 142
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 143
    .line 144
    new-instance v7, Lnet/lingala/zip4j/model/ZipParameters;

    .line 145
    .line 146
    invoke-direct {v7}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object v3, v7, Lnet/lingala/zip4j/model/ZipParameters;->l:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

    .line 150
    .line 151
    const/16 v8, 0x8

    .line 152
    .line 153
    iput v8, v7, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 154
    .line 155
    const/4 v8, 0x5

    .line 156
    iput v8, v7, Lnet/lingala/zip4j/model/ZipParameters;->f:I

    .line 157
    .line 158
    iput-boolean v5, v7, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 159
    .line 160
    iput v4, v7, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 161
    .line 162
    const-string v8, "debug_logger_tag"

    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    iput-object v8, v7, Lnet/lingala/zip4j/model/ZipParameters;->i:[C

    .line 169
    .line 170
    invoke-virtual {v6, v2, v7}, Lnet/lingala/zip4j/core/ZipFile;->a(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    :catch_0
    const/4 v2, 0x0

    .line 174
    if-eqz v3, :cond_8

    .line 175
    .line 176
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    iget v6, v6, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 181
    .line 182
    const/4 v7, 0x2

    .line 183
    if-eq v6, v7, :cond_7

    .line 184
    .line 185
    move v4, v5

    .line 186
    :cond_7
    check-cast v3, Lcom/mycompany/app/dialog/DialogCreateAlbum$23;

    .line 187
    .line 188
    invoke-virtual {v3, v2, v4}, Lcom/mycompany/app/dialog/DialogCreateAlbum$23;->a(Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    :cond_8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->W0:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->V0:Ljava/lang/String;

    .line 205
    .line 206
    const-string v7, ".album"

    .line 207
    .line 208
    invoke-static {v5, v6, v7}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-static {v3, v4, v2, v5}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-nez v2, :cond_9

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_9
    iget-object v3, v2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 220
    .line 221
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->W0:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 224
    .line 225
    invoke-static {v4, v1, v3}, Lcom/mycompany/app/main/MainUtil;->w6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->g:Z

    .line 230
    .line 231
    if-eqz v1, :cond_a

    .line 232
    .line 233
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v1, v2}, Lcom/mycompany/app/db/DbAlbum;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z1:Ljava/lang/String;

    .line 241
    .line 242
    :cond_a
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i1:Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 20
    .line 21
    iput v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 22
    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i1:Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->o1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->D0:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->u0:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->D0:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    new-instance v3, Lcom/mycompany/app/dialog/DialogCreateAlbum$18;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$18;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :goto_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 73
    .line 74
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 75
    .line 76
    sub-int/2addr v1, v3

    .line 77
    if-gez v1, :cond_6

    .line 78
    .line 79
    move v1, v2

    .line 80
    :cond_6
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v5, ""

    .line 85
    .line 86
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v6, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->l1:I

    .line 90
    .line 91
    invoke-static {v4, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget v6, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 102
    .line 103
    invoke-static {v4, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->n1:I

    .line 124
    .line 125
    const/4 v4, 0x1

    .line 126
    const v5, -0xe19938

    .line 127
    .line 128
    .line 129
    const v6, -0x50506

    .line 130
    .line 131
    .line 132
    if-lez v3, :cond_a

    .line 133
    .line 134
    const v3, -0xbbcca

    .line 135
    .line 136
    .line 137
    if-nez v1, :cond_8

    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    sget v2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 159
    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    move v5, v6

    .line 163
    :cond_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_8
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h1:Z

    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    sget v3, Lnet/kaki87/soul2/testing/R$string;->list:I

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 189
    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    move v5, v6

    .line 193
    :cond_9
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_a
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->h1:Z

    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 207
    .line 208
    if-eqz v3, :cond_b

    .line 209
    .line 210
    move v3, v6

    .line 211
    goto :goto_2

    .line 212
    :cond_b
    const/high16 v3, -0x1000000

    .line 213
    .line 214
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    sget v2, Lnet/kaki87/soul2/testing/R$string;->list:I

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 232
    .line 233
    if-eqz v1, :cond_c

    .line 234
    .line 235
    move v5, v6

    .line 236
    :cond_c
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    .line 238
    .line 239
    return-void
.end method
