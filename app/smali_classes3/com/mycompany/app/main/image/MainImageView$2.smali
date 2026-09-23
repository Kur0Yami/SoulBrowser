.class Lcom/mycompany/app/main/image/MainImageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$2;->c:Lcom/mycompany/app/main/image/MainImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView$2;->c:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->d(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/mycompany/app/view/GlideRequests;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->g:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/image/MainImageView$2$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageView$2$1;-><init>(Lcom/mycompany/app/main/image/MainImageView$2;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
