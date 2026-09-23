.class Lcom/mycompany/app/image/ImageViewPageScroll$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$11;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$11;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->E3(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->D:I

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageScroll$11$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageViewPageScroll$11$1;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll$11;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
