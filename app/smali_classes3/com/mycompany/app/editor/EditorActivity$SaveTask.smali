.class Lcom/mycompany/app/editor/EditorActivity$SaveTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/editor/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/graphics/Bitmap;

.field public final h:Z

.field public final i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
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
    iput-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/editor/EditorActivity;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iput-boolean p4, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->h:Z

    .line 25
    .line 26
    iput-boolean p5, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->i:Z

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p1, Lcom/mycompany/app/editor/EditorActivity;->Q1:Z

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Lcom/mycompany/app/editor/EditorActivity;->B0(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/editor/EditorActivity;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->g:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 36
    .line 37
    :goto_1
    iget-object v4, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v1, v4, v3}, Lcom/mycompany/app/main/MainUtil;->q(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v4, v3}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-object v0, v0, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v0, v4, v3, v2}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    .line 61
    .line 62
    .line 63
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->j:Z

    .line 64
    .line 65
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/editor/EditorActivity;

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
    iput-boolean v1, v0, Lcom/mycompany/app/editor/EditorActivity;->Q1:Z

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/editor/EditorActivity;

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
    iput-boolean v1, v0, Lcom/mycompany/app/editor/EditorActivity;->Q1:Z

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->j:Z

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget-boolean v1, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->h:Z

    .line 37
    .line 38
    iget-object v3, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->f:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v1, v0, v3, v4, v4}, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/mycompany/app/editor/EditorActivity;->B0(Z)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_0
    return-void

    .line 54
    :cond_5
    iget-boolean v1, p0, Lcom/mycompany/app/editor/EditorActivity$SaveTask;->i:Z

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    new-instance v1, Landroid/content/Intent;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "EXTRA_PATH"

    .line 64
    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const/4 v2, -0x1

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/editor/EditorActivity;->finish()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
