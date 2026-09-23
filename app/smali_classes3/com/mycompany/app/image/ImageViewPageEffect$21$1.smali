.class Lcom/mycompany/app/image/ImageViewPageEffect$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect$21;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$21$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$21$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$21;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect$21;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->u:Ljava/lang/String;

    .line 35
    .line 36
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    :goto_1
    return-void

    .line 41
    :cond_2
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageEffect$21$1$1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageEffect$21$1$1;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$21$1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method
