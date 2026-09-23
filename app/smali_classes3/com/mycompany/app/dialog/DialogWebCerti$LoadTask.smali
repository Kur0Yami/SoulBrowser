.class Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebCerti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebCerti;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebCerti;->b0:Landroid/webkit/WebView;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    const/16 v1, 0x1d

    .line 34
    .line 35
    if-lt v0, v1, :cond_2

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    :catch_0
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .line 63
    :catch_1
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebCerti;

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
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_7

    .line 28
    .line 29
    new-instance v1, Ljava/util/Scanner;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_6

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-nez v3, :cond_5

    .line 72
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_5
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 86
    .line 87
    const-string v3, ""

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 94
    .line 95
    .line 96
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 97
    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 101
    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    sget v2, Lnet/kaki87/soul2/testing/R$string;->no_info:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_8
    const-string v1, "No information"

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;

    .line 116
    .line 117
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "\n\n"

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->f:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    new-instance v2, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    const/4 v1, 0x1

    .line 147
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 148
    .line 149
    :cond_9
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebCerti;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->g0:Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebCerti;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->g0:Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$LoadTask;->g:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 33
    .line 34
    if-nez v2, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    new-instance v2, Landroid/view/GestureDetector;

    .line 38
    .line 39
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 40
    .line 41
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebCerti$5;

    .line 42
    .line 43
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebCerti$5;-><init>(Lcom/mycompany/app/dialog/DialogWebCerti;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->k0:Landroid/view/GestureDetector;

    .line 50
    .line 51
    new-instance v2, Landroid/view/ScaleGestureDetector;

    .line 52
    .line 53
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->a0:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebCerti$6;

    .line 56
    .line 57
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebCerti$6;-><init>(Lcom/mycompany/app/dialog/DialogWebCerti;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->l0:Landroid/view/ScaleGestureDetector;

    .line 64
    .line 65
    :goto_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 66
    .line 67
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;-><init>(Lcom/mycompany/app/dialog/DialogWebCerti;Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_1
    return-void
.end method
