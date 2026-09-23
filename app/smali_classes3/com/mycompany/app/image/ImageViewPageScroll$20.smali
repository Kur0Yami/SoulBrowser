.class Lcom/mycompany/app/image/ImageViewPageScroll$20;
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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$20;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$20;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->d0:Lcom/mycompany/app/image/ImageViewPageScroll$LoadTask;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
