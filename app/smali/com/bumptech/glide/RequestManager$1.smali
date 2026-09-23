.class Lcom/bumptech/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/bumptech/glide/RequestManager;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$1;->c:Lcom/bumptech/glide/RequestManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$1;->c:Lcom/bumptech/glide/RequestManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/manager/Lifecycle;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/Lifecycle;->c(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
