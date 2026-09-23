.class Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncLoadingListener"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/Bitmap;

.field public c:I


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->a:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    const/4 p2, 0x1

    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/assist/FailReason;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->f:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->h:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_5

    .line 46
    .line 47
    :cond_4
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1, p2, p2}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_5

    .line 54
    .line 55
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    const/4 p1, 0x2

    .line 59
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_6
    :goto_0
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 63
    .line 64
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->a:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->b:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncLoadingListener;->c:I

    .line 11
    .line 12
    return-void
.end method
