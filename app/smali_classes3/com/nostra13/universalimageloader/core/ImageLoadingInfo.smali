.class final Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field public final e:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field public final f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public final g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;

.field public final i:Lcom/mycompany/app/main/MainItem$ViewItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainItem$ViewItem;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->a:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->b:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->b:Ljava/lang/String;

    .line 15
    .line 16
    :goto_0
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->d:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->e:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->i:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 29
    .line 30
    return-void
.end method
