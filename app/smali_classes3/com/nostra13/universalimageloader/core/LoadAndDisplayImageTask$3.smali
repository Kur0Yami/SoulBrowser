.class Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$3;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->s:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->p:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->b(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
