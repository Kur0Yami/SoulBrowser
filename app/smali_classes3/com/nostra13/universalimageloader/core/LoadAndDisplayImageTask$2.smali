.class Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public final synthetic f:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->f:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->f:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->s:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->u:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->c:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void
.end method
