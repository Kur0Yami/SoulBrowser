.class Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSaveSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSaveSource;Ljava/lang/String;)V
    .locals 2

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->y0:Z

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p2, p2, v1, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogSaveSource;

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
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->f:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v1, v2, v4, v3}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :try_start_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v5, v1, Lcom/mycompany/app/main/MainUri$UriItem;->b:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    new-instance v5, Ljava/io/BufferedWriter;

    .line 52
    .line 53
    new-instance v6, Ljava/io/OutputStreamWriter;

    .line 54
    .line 55
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-direct {v6, v3, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    :try_start_2
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->w0:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    const-string v7, "\n"

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_7

    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    sub-int/2addr v9, v8

    .line 81
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    move v10, v2

    .line 86
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_6

    .line 91
    .line 92
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    check-cast v11, Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->C(Lcom/mycompany/app/dialog/DialogSaveSource;)Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v12, :cond_3

    .line 103
    .line 104
    move v6, v8

    .line 105
    goto :goto_4

    .line 106
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-nez v12, :cond_4

    .line 111
    .line 112
    invoke-virtual {v5, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    if-eqz v10, :cond_5

    .line 120
    .line 121
    if-eq v10, v9, :cond_5

    .line 122
    .line 123
    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    move v6, v2

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    new-instance v6, Ljava/util/Scanner;

    .line 132
    .line 133
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->v0:Ljava/lang/String;

    .line 134
    .line 135
    invoke-direct {v6, v9}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_a

    .line 143
    .line 144
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->C(Lcom/mycompany/app/dialog/DialogSaveSource;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_8

    .line 149
    .line 150
    move v7, v8

    .line 151
    goto :goto_3

    .line 152
    :cond_8
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-nez v10, :cond_9

    .line 161
    .line 162
    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_a
    move v7, v2

    .line 170
    :goto_3
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 171
    .line 172
    .line 173
    move v6, v7

    .line 174
    :goto_4
    xor-int/2addr v6, v8

    .line 175
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->h:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catch_0
    move-object v5, v4

    .line 179
    goto :goto_5

    .line 180
    :catch_1
    move-object v3, v4

    .line 181
    move-object v5, v3

    .line 182
    :catch_2
    :goto_5
    if-eqz v5, :cond_b

    .line 183
    .line 184
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catch_3
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->h:Z

    .line 189
    .line 190
    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    .line 191
    .line 192
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :catch_4
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->h:Z

    .line 197
    .line 198
    :cond_c
    :goto_7
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->h:Z

    .line 199
    .line 200
    if-eqz v2, :cond_d

    .line 201
    .line 202
    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 203
    .line 204
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->g:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 207
    .line 208
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_d

    .line 217
    .line 218
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 219
    .line 220
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->g:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v0, v2, v4, v1}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    .line 223
    .line 224
    .line 225
    :cond_d
    :goto_8
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogSaveSource;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->s0:Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->s0:Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->C(Lcom/mycompany/app/dialog/DialogSaveSource;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->h:Z

    .line 36
    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    sget v3, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->c0:Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;

    .line 85
    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSaveSource$DialogTask;->g:Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v2, v1, v3, v1}, Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
