.class Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebBookDir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookDir;Ljava/lang/String;)V
    .locals 1

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebBookDir;->D(Lcom/mycompany/app/dialog/DialogWebBookDir;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookDir;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->f0:Ljava/lang/String;

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->f:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/book/DbBookWeb;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->g:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-wide v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 45
    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->h:Z

    .line 55
    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookDir;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookDir;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookDir;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->h:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogWebBookDir;->D(Lcom/mycompany/app/dialog/DialogWebBookDir;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookDir;->f0:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;->g:Ljava/util/ArrayList;

    .line 48
    .line 49
    check-cast v1, Lcom/mycompany/app/dialog/DialogWebBookList$20;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$20;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method
