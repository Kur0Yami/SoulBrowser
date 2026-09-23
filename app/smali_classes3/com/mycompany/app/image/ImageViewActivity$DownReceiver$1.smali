.class Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:J

.field public final synthetic g:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;IJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;->g:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;->c:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;->f:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;->g:Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;->a:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    iget v2, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;->c:I

    .line 12
    .line 13
    if-eq v2, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    iget-wide v3, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;->f:J

    .line 17
    .line 18
    if-ne v2, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewActivity;->f1:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1, v3, v4}, Lcom/mycompany/app/db/book/DbBookDown;->d(Landroid/content/Context;J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewActivity;->f1:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1, v3, v4}, Lcom/mycompany/app/db/book/DbBookDown;->e(Landroid/content/Context;J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x4

    .line 34
    if-ne v2, v3, :cond_3

    .line 35
    .line 36
    invoke-static {v1}, Lcom/mycompany/app/main/MainDownSvc;->z(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    const-string v1, "live"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :cond_3
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 47
    .line 48
    if-nez v3, :cond_4

    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :cond_4
    new-instance v3, Lcom/mycompany/app/image/ImageViewActivity$4;

    .line 52
    .line 53
    invoke-direct {v3, v0, v1, v2}, Lcom/mycompany/app/image/ImageViewActivity$4;-><init>(Lcom/mycompany/app/image/ImageViewActivity;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
