.class Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:I

.field public final j:Landroid/graphics/Bitmap;

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-wide v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->d0:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->f:J

    .line 23
    .line 24
    iget v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 25
    .line 26
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->i:I

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->j:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->g:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->h:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p2, v1, v1, p3, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget-boolean p3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    if-eqz p3, :cond_1

    .line 66
    .line 67
    const p3, -0x7f7f80

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const p3, -0x252526

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 84
    .line 85
    div-int/lit8 p2, p2, 0x2

    .line 86
    .line 87
    int-to-float p2, p2

    .line 88
    sget p3, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 89
    .line 90
    int-to-float p3, p3

    .line 91
    div-float/2addr p2, p3

    .line 92
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 93
    .line 94
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->j4(Landroid/view/View;F)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->j:Landroid/graphics/Bitmap;

    .line 105
    .line 106
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_8

    .line 28
    .line 29
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_2
    const-string v3, "_title"

    .line 40
    .line 41
    const-string v4, "_text"

    .line 42
    .line 43
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->j:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x1

    .line 55
    const-wide/16 v7, 0x0

    .line 56
    .line 57
    const-string v9, "_color"

    .line 58
    .line 59
    const-string v10, "_icon"

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .line 67
    .line 68
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 69
    .line 70
    const/16 v12, 0x64

    .line 71
    .line 72
    invoke-virtual {v3, v11, v12, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3}, Lcom/mycompany/app/db/book/DbBookSearch;->j(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->f:J

    .line 97
    .line 98
    cmp-long v2, v2, v7

    .line 99
    .line 100
    if-lez v2, :cond_4

    .line 101
    .line 102
    new-array v2, v6, [B

    .line 103
    .line 104
    invoke-virtual {v1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->i:I

    .line 108
    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    sget-object v2, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 112
    .line 113
    sget-object v2, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 114
    .line 115
    array-length v3, v2

    .line 116
    sget v4, Lcom/mycompany/app/db/book/DbBookSearch;->f:I

    .line 117
    .line 118
    rem-int/2addr v4, v3

    .line 119
    if-gez v4, :cond_5

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    move v5, v4

    .line 123
    :goto_0
    aget v2, v2, v5

    .line 124
    .line 125
    add-int/lit8 v5, v5, 0x3

    .line 126
    .line 127
    rem-int/2addr v5, v3

    .line 128
    sput v5, Lcom/mycompany/app/db/book/DbBookSearch;->f:I

    .line 129
    .line 130
    iput v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->i:I

    .line 131
    .line 132
    :cond_6
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->i:I

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    .line 140
    .line 141
    :catch_0
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->f:J

    .line 152
    .line 153
    cmp-long v4, v2, v7

    .line 154
    .line 155
    const-string v5, "DbBookSearch_table"

    .line 156
    .line 157
    if-lez v4, :cond_7

    .line 158
    .line 159
    invoke-static {v0, v5, v1, v2, v3}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_7
    invoke-static {v0, v5, v1}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->f:J

    .line 168
    .line 169
    :goto_2
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->k:Z

    .line 170
    .line 171
    :cond_8
    :goto_3
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->k:Z

    .line 16
    .line 17
    if-nez v1, :cond_4

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const v2, -0x50506

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const v2, -0xe19938

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 64
    .line 65
    sget v1, Lnet/kaki87/soul2/testing/R$string;->update_fail:I

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    const/4 v1, 0x0

    .line 72
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;->f:J

    .line 79
    .line 80
    invoke-interface {v0, v2, v3, v1, v1}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_1
    return-void
.end method
