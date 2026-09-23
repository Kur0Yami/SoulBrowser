.class Lcom/mycompany/app/main/image/MainImagePreview$68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x2:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/mycompany/app/ocr/OcrDetector;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {v2}, Lcom/mycompany/app/compress/Compress;->q(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->z2:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->A2:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :goto_1
    return-void

    .line 33
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$68$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$68$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$68;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
