.class Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebBookSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookSave;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->v0:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, p2, p2, v1, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookSave;

    .line 12
    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    :try_start_0
    const-string v3, "/"

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogWebBookSave;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v3, :cond_8

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogWebBookSave;->F(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-eqz v3, :cond_8

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v4, 0x0

    .line 66
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->f:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3, v4, v5}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_5

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v3, v3, Lcom/mycompany/app/main/MainUri$UriItem;->b:Landroid/net/Uri;

    .line 80
    .line 81
    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 82
    .line 83
    .line 84
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 85
    :try_start_2
    new-instance v5, Ljava/io/BufferedWriter;

    .line 86
    .line 87
    new-instance v6, Ljava/io/OutputStreamWriter;

    .line 88
    .line 89
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    invoke-direct {v6, v3, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 95
    .line 96
    .line 97
    :try_start_3
    const-string v4, "<!DOCTYPE NETSCAPE-Bookmark-file-1>\n<!-- This is an automatically generated file.\n     It will be read and overwritten.\n     DO NOT EDIT! -->\n<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=UTF-8\">\n<TITLE>Bookmarks</TITLE>\n<H1>Bookmarks</H1>\n"

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/mycompany/app/dialog/DialogWebBookSave;->I(Landroid/content/Context;Ljava/io/BufferedWriter;Ljava/util/List;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 108
    goto :goto_2

    .line 109
    :catch_1
    :goto_0
    move-object v4, v3

    .line 110
    goto :goto_1

    .line 111
    :catch_2
    move-object v5, v4

    .line 112
    goto :goto_0

    .line 113
    :catch_3
    move-object v5, v4

    .line 114
    :goto_1
    move v0, v2

    .line 115
    move-object v3, v4

    .line 116
    :goto_2
    if-eqz v5, :cond_6

    .line 117
    .line 118
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catch_4
    move v0, v2

    .line 123
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 124
    .line 125
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 126
    .line 127
    .line 128
    :cond_7
    move v2, v0

    .line 129
    :catch_5
    :cond_8
    :goto_4
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->g:Z

    .line 130
    .line 131
    :cond_9
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookSave;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->s0:Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookSave;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookSave;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->s0:Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookSave;->G()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 27
    .line 28
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookSave;->dismiss()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogWebBookSave$DialogTask;->g:Z

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 53
    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 58
    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    sget v3, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 104
    .line 105
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookSave;->dismiss()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->t0:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookSave;->b0:Landroid/content/Context;

    .line 115
    .line 116
    sget v2, Lnet/kaki87/soul2/testing/R$string;->no_bookmark:I

    .line 117
    .line 118
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookSave;->dismiss()V

    .line 122
    .line 123
    .line 124
    return-void
.end method
