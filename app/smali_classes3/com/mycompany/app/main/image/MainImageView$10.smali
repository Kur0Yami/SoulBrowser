.class Lcom/mycompany/app/main/image/MainImageView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$10;->c:Lcom/mycompany/app/main/image/MainImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView$10;->c:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->D:Landroid/graphics/Matrix;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageView;->o:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v2, v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->D:Landroid/graphics/Matrix;

    .line 23
    .line 24
    :cond_1
    return-void
.end method
