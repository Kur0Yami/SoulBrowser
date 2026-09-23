.class Lcom/mycompany/app/dialog/DialogExtract$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/compress/CompressUtil$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogExtract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    iget p2, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    iput p2, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 21
    .line 22
    :cond_1
    iget p2, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogExtract$11$3;

    .line 36
    .line 37
    invoke-direct {v1, p0, p2, p1}, Lcom/mycompany/app/dialog/DialogExtract$11$3;-><init>(Lcom/mycompany/app/dialog/DialogExtract$11;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final b(JJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->N0:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->N0:Z

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->N0:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/dialog/DialogExtract$11$2;

    .line 33
    .line 34
    move-object v2, p0

    .line 35
    move-wide v4, p1

    .line 36
    move-wide v6, p3

    .line 37
    move-object v3, p5

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogExtract$11$2;-><init>(Lcom/mycompany/app/dialog/DialogExtract$11;Ljava/lang/String;JJ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->N0:Z

    .line 46
    .line 47
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$11$1;

    .line 26
    .line 27
    invoke-direct {v2, p0, p1, v1}, Lcom/mycompany/app/dialog/DialogExtract$11$1;-><init>(Lcom/mycompany/app/dialog/DialogExtract$11;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
