.class public Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;->b:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->c:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;->b:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 2
    .line 3
    iget v0, v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->b:I

    .line 4
    .line 5
    return v0
.end method

.method public final getId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;->b:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 2
    .line 3
    iget v0, v0, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->a:I

    .line 4
    .line 5
    return v0
.end method
