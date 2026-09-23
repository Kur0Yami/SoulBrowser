.class Lcom/mycompany/app/image/ImageViewPageScroll$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$31;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$31;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/image/ImageViewPageScroll;->S(Lcom/mycompany/app/image/ImageViewPageScroll;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$31;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->s:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$32;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$32;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
