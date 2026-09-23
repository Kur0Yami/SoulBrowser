.class Lcom/mycompany/app/image/ImageViewControl$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$31;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl$31;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, v0, Lcom/mycompany/app/image/ImageViewControl;->y:I

    .line 17
    .line 18
    div-int/2addr v1, v2

    .line 19
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, v0, Lcom/mycompany/app/image/ImageViewControl;->y:I

    .line 26
    .line 27
    rem-int/2addr v2, v3

    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/mycompany/app/image/ImageThumbAdapter;->d()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewControl;->r0:Z

    .line 45
    .line 46
    return-void
.end method
