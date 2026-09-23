.class Lcom/mycompany/app/main/image/MainImagePreview$53$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$53;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$53;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$53$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$53;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$53;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/compress/Compress;->q(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->w2:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$53$1$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$53$1$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$53$1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
