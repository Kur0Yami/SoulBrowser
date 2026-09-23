.class Lcom/mycompany/app/main/image/MainImagePreview$68$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$68;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$68;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$68$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$68$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->h2:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->A0(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->B1:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$68$1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
